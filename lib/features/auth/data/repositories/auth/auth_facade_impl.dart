library auth_facade_impl.dart;

import 'dart:async';
import 'dart:io';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/data/models/index.dart';
import 'package:amatrider/features/auth/data/repositories/auth/social_auth_mixin.dart';
import 'package:amatrider/features/auth/data/sources/local/auth_local_source.dart';
import 'package:amatrider/features/auth/data/sources/remote/auth_remote_source.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/manager/settings/external/preference_repository.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthFacade)
class AuthFacadeImpl extends AuthFacade with SocialAuthMixin {
  @override
  final FirebaseAnalytics analytics;

  @override
  final AuthLocalDatasource local;

  @override
  final AuthRemoteDatasource remote;

  final StreamController<Either<AppHttpResponse, Option<Rider?>>> __controller;
  final StreamController<Option<Rider?>> __userChagesController;

  final PreferenceRepository preferences;

  AuthFacadeImpl(
    this.remote,
    this.local,
    this.analytics,
    this.preferences,
  )   : __controller = StreamController.broadcast(),
        __userChagesController = StreamController.broadcast();

  @override
  Future<Option<Rider?>> get rider async =>
      (await retrieveAndCacheUpdatedRider(forceGetLocalCache: true))
          .getOrElse(() => none());

  @override
  Future<Either<AppHttpResponse, Option<Rider?>>> get currentRider async =>
      retrieveAndCacheUpdatedRider(forceGetLocalCache: false);

  @override
  Future<AppHttpResponse> confirmPasswordReset({
    required Phone phone,
    required OTPCode code,
    required Password newPassword,
    required Password confirmation,
  }) async {
    try {
      final _conn = await checkInternetConnectivity();

      final dto = RiderDTO(
        phone: phone.getOrNull,
        token: code.getOrNull,
        password: newPassword.getOrNull,
        confirmation: confirmation.getOrNull,
      );

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Attempt Authentication
        (r) async => remote.confirmPasswordReset(dto),
      );

      return AppHttpResponse.fromJson(_response.data as Map<String, dynamic>);
    } on AppHttpResponse catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    } on AppNetworkException catch (ex, trace) {
      return handleFailure(e: ex.asResponse(), trace: trace);
    }
  }

  @override
  Future<AppHttpResponse> confirmUpdatePhone({
    required Phone phone,
    required OTPCode code,
  }) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Update user profile
        (_) => remote.confirmUpdatePhoneNumber(
          phone: phone.getOrNull,
          token: code.getOrNull,
        ),
      );

      final cached = await retrieveAndCacheUpdatedRider();

      await cached.fold((l) => null, (user) async => update(user));

      return AppHttpResponse.fromJson(_response.data as Map<String, dynamic>);
    } on AppHttpResponse catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    } on AppNetworkException catch (ex, trace) {
      return handleFailure(e: ex.asResponse(), trace: trace);
    }
  }

  @override
  Future<AppHttpResponse> createAccount({
    required DisplayName firstName,
    required DisplayName lastName,
    required EmailAddress emailAddress,
    required Password password,
    required Phone phone,
  }) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) async => throw f,
        // Attempt Registration
        (_) async => remote.createRiderAccount(
          RiderDTO.fromDomain(Rider.blank(
            firstName: firstName,
            lastName: lastName,
            email: emailAddress,
            password: password,
            phone: phone,
          )),
        ),
      );

      // Get Data Access Object
      final _registered = RegisteredRiderDTO.fromJson(
        _response.data as Map<String, dynamic>,
      );

      await phone.getOrEmpty?.let((it) async => await preferences.setString(
          key: Const.kPhoneNumberPrefKey, value: it));

      // Automatically Login new Rider
      return await login(
        email: emailAddress,
        password: password,
        registered: _registered.data?.copyWith(
          password: password.getOrNull,
        ),
      );
    } on AppHttpResponse catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    } on AppNetworkException catch (ex, trace) {
      return handleFailure(e: ex.asResponse(), trace: trace);
    }
  }

  @override
  Future<AppHttpResponse> deleteAccount() async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      return _conn.fold(
        (f) async => f,
        (r) async {
          final _response = await remote.deleteAccount();

          await sink(await currentRider);

          await signOut(true);

          return AppHttpResponse.fromJson(
              _response.data as Map<String, dynamic>);
        },
      );
    } on AppHttpResponse catch (ex, trace) {
      return await handleFailure(e: ex, trace: trace, notify: true);
    } on AppNetworkException catch (ex, trace) {
      return await handleFailure(
          e: ex.asResponse(), trace: trace, notify: true);
    }
  }

  @override
  Future<AppHttpResponse> login({
    required EmailAddress email,
    required Password password,
    RiderDTO? registered,
  }) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Attempt Authentication
        (r) async => remote.login(
          email: email.getOrNull,
          password: password.getOrNull,
        ),
      );

      //// Cache Access token
      await local.cacheRiderAccessToken(_response.data);

      // If login was successful, fetch updated user creds
      // Else we'll pass in the initial registration response for caching
      var temp = RiderDTO.fromDomain(
        Rider.blank(email: email, password: password),
      );

      final cached = await retrieveAndCacheUpdatedRider(
        shouldThrow: true,
        dto: registered ?? temp,
      );

      // Log Firebase Analytics Login event
      await analytics.logLogin(loginMethod: 'email');

      final _res =
          AppHttpResponse.fromJson(_response.data as Map<String, dynamic>);

      return _res.copyWith(
        response: await cached.fold(
          (_) => _res.response,
          (o) async {
            final _user = await rider;
            // Sink new signin event
            await update(_user);
            await sink(right(_user));
            //
            return _res.response.copyWith(
              messageTxt: 'Welcome back '
                  '${o.getOrElse(() => null)?.firstName.getOrEmpty}!',
            );
          },
        ),
      );
    } on AppHttpResponse catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    } on AppNetworkException catch (ex, trace) {
      return handleFailure(e: ex.asResponse(), trace: trace);
    }
  }

  @override
  Stream<Either<AppHttpResponse, Option<Rider?>>> get onAuthStateChanges =>
      __controller.stream;

  @override
  Stream<Option<Rider?>> get onRiderChanges => __userChagesController.stream;

  @override
  Future<AppHttpResponse> resendVerificationEmail(
    Phone phone,
  ) async {
    try {
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Attempt Authentication
        (r) async => remote.resendPhoneVerification(phone.getOrEmpty),
      );

      return AppHttpResponse.fromJson(_response.data as Map<String, dynamic>);
    } on AppHttpResponse catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    } on AppNetworkException catch (ex, trace) {
      return handleFailure(e: ex.asResponse(), trace: trace);
    }
  }

  @override
  Future<AppHttpResponse> sendPasswordResetInstructions(Phone phone) async {
    try {
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Attempt Authentication
        (r) async => remote.sendPasswordResetMessage(phone.getOrEmpty),
      );

      return AppHttpResponse.fromJson(_response.data as Map<String, dynamic>);
    } on AppHttpResponse catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    } on AppNetworkException catch (ex, trace) {
      return handleFailure(e: ex.asResponse(), trace: trace);
    }
  }

  @override
  Future<void> signOut([bool? notify]) async {
    try {
      // Sign user-out of all services
      await Future.wait([
        remote.signOut(),
        // Delete local
        local.signOut(),
      ]);

      // Notify of signout
      await sink(right(none()));
    } catch (_) {
      // Delete local cache
      await Future.wait([
        local.signOut(),
      ]);

      await sink(right(none()));
    }
  }

  @override
  Future<void> sink(
          [Either<AppHttpResponse, Option<Rider?>>? userOrFailure]) async =>
      __controller.sink.add(userOrFailure ?? await currentRider);

  @override
  Future<void> sleep() async {
    try {
      await remote.timeout();
    } on AppHttpResponse catch (ex) {
      log.w(ex);
    } on AppNetworkException catch (ex) {
      log.w(ex.asResponse());
    }
  }

  @override
  Future<Either<AppHttpResponse, Rider>> toggleRiderAvailability(
      RiderAvailability availability) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      return _conn.fold(
        (f) async => left(f),
        (r) async {
          final _result = await remote.toggleAvailability(availability);
          final _riderDTO =
              RiderDTO.fromJson(_result.data as Map<String, dynamic>);

          return right(_riderDTO.domain);
        },
      );
    } on AppHttpResponse catch (ex, trace) {
      return left(await handleFailure(e: ex, trace: trace, notify: false));
    } on AppNetworkException catch (ex, trace) {
      return left(
        await handleFailure(e: ex.asResponse(), trace: trace, notify: false),
      );
    }
  }

  @override
  Future<void> update(Option<Rider?> user) async =>
      __userChagesController.sink.add(user);

  @override
  Future<AppHttpResponse> updatePassword({
    required Password current,
    required Password newPassword,
    required Password confirmation,
  }) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Update user profile
        (_) => remote.updatePassword(
          current: current.getOrEmpty,
          newPassword: newPassword.getOrEmpty,
          confirmation: confirmation.getOrEmpty,
        ),
      );

      final _return = AppHttpResponse.fromJson(
        _response.data as Map<String, dynamic>,
      );

      await _return.response.map(
        error: (_) => null,
        success: (_) async {
          final cached = await retrieveAndCacheUpdatedRider();
          await cached.fold((l) => null, (user) async => update(user));
        },
      );

      return _return;
    } on AppHttpResponse catch (ex, trace) {
      return handleFailure(e: ex, trace: trace, notify: false);
    } on AppNetworkException catch (ex, trace) {
      return handleFailure(e: ex.asResponse(), trace: trace, notify: false);
    }
  }

  @override
  Future<AppHttpResponse> updatePhone(Phone? phone) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Update user profile
        (_) => remote.updatePhoneNumber(phone?.getOrEmpty),
      );

      await phone?.getOrEmpty?.let(
        (it) => preferences.setString(
          key: Const.kPhoneNumberPrefKey,
          value: it,
        ),
      );

      return AppHttpResponse.fromJson(_response.data as Map<String, dynamic>);
    } on AppHttpResponse catch (ex, trace) {
      return handleFailure(e: ex, trace: trace, notify: false);
    } on AppNetworkException catch (ex, trace) {
      return handleFailure(e: ex.asResponse(), trace: trace, notify: false);
    }
  }

  @override
  Future<AppHttpResponse> updateProfile({
    DisplayName? firstName,
    DisplayName? lastName,
    EmailAddress? email,
    File? image,
  }) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Update user profile
        (_) => remote.updateProfile(
          image: image,
          dto: RiderDTO.fromDomain(Rider.blank(
            firstName: firstName,
            lastName: lastName,
            email: email,
          )),
        ),
      );

      final user = RegisteredRiderDTO.fromJson(
        _response.data as Map<String, dynamic>,
      );

      final _return = AppHttpResponse.fromJson(
        _response.data as Map<String, dynamic>,
      );

      await _return.response.map(
        error: (_) => null,
        success: (_) async {
          await user.dto?.let((it) => local.cacheAuthenticatedRider(it));
          await update(some(user.domain));
        },
      );

      return _return;
    } on AppHttpResponse catch (ex, trace) {
      return handleFailure(e: ex, trace: trace, notify: false);
    } on AppNetworkException catch (ex, trace) {
      return handleFailure(e: ex.asResponse(), trace: trace, notify: false);
    }
  }

  @override
  Future<AppHttpResponse> verifyPhoneNumber({
    required Phone phone,
    required OTPCode token,
  }) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        (f) => throw f,
        (_) => remote.verifyPhoneNumber(
          phone: phone.getOrEmpty,
          token: token.getOrEmpty,
        ),
      );

      // verification successful, fetch & cache fresh user data
      final _return = AppHttpResponse.fromJson(
        _response.data as Map<String, dynamic>,
      );

      await _return.response.map(
        error: (_) => null,
        success: (_) async {
          final cached = await retrieveAndCacheUpdatedRider();
          await sink(cached);
          // await cached.fold((l) => null, (user) async => update(user));
        },
      );

      return _return;
    } on AppHttpResponse catch (ex, trace) {
      return handleFailure(e: ex, trace: trace, notify: false);
    } on AppNetworkException catch (ex, trace) {
      return handleFailure(e: ex.asResponse(), trace: trace, notify: false);
    }
  }

  Future<Either<AppHttpResponse, Option<Rider?>>> retrieveAndCacheUpdatedRider({
    RiderDTO? dto,
    bool shouldThrow = false,
    bool forceGetLocalCache = false,
  }) async {
    Future<Either<AppHttpResponse, Option<Rider?>>> _local(
        AppHttpResponse failure) async {
      if (forceGetLocalCache)
        return right((await local.getRider())
            .fold(() => none(), (dto) => some(dto?.domain)));

      return failure.foldCode(
        // if reason for failure was 401,
        // logout the user (probably an expired accessToken)
        is401: () {
          signOut();
          return left(failure);
        },
        // Unverified phone number
        is4031: () async {
          await preferences.setString(
            key: Const.kPhoneNumberPrefKey,
            value: failure.data?['phone'] as String? ?? '',
          );
          return left(failure);
        },
        // Else proceed with local fetch
        orElse: () async => right((await local.getRider()).fold(
          () => none(),
          (dto) => some(dto?.domain),
        )),
      );
    }

    // Cache incoming user data
    await dto?.let((it) => local.cacheAuthenticatedRider(it));

    // Check if device has good connection
    final _conn = await checkInternetConnectivity();
    // Fetch Updated user info from remote source
    return _conn.fold(
      (f) async => shouldThrow ? throw f : _local(f),
      (_) async => (await remote.getRider()).fold(
        // If could not retrieve data form server, fetch local
        (f) async => _local(f),
        (dto) async {
          // Cache updated user data
          await dto?.let((it) => local.cacheAuthenticatedRider(it));
          return right(some(dto?.domain));
        },
      ),
    );
  }
}
