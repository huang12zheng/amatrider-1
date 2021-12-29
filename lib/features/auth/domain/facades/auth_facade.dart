library auth_facade.dart;

import 'dart:io';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class AuthFacade {
  Future<Either<AppHttpResponse, Option<Rider?>>> get currentRider;
  Stream<Either<AppHttpResponse, Option<Rider?>>> get onAuthStateChanges;
  Stream<Option<Rider?>> get onRiderChanges;
  Future<Option<Rider?>> get rider;

  Future<void> sink([Either<AppHttpResponse, Option<Rider?>> riderOrFailure]);

  Future<void> update(Option<Rider?> rider);

  Future<AppHttpResponse> login({
    required EmailAddress email,
    required Password password,
    RiderDTO? registered,
  });

  Future<AppHttpResponse> createAccount({
    required DisplayName firstName,
    required DisplayName lastName,
    required EmailAddress emailAddress,
    required Password password,
    required Phone phone,
  });

  Future<AppHttpResponse> updateProfile({
    DisplayName firstName,
    DisplayName lastName,
    EmailAddress email,
    File? image,
  });

  Future<AppHttpResponse> updatePhone(Phone phone);

  Future<AppHttpResponse> confirmUpdatePhone({
    required Phone phone,
    required OTPCode code,
  });

  Future<AppHttpResponse> updatePassword({
    required Password current,
    required Password newPassword,
    required Password confirmation,
  });

  Future<AppHttpResponse> resendVerificationEmail(Phone phone);

  Future<AppHttpResponse> verifyPhoneNumber({
    required Phone phone,
    required OTPCode token,
  });

  Future<AppHttpResponse> sendPasswordResetInstructions(Phone phone);

  Future<AppHttpResponse> confirmPasswordReset({
    required Phone phone,
    required OTPCode code,
    required Password newPassword,
    required Password confirmation,
  });

  Future<Either<AppHttpResponse, Rider>> toggleRiderAvailability(
      RiderAvailability availability);

  Future<Option<AppHttpResponse?>> googleAuthentication([bool notify = false]);

  Future<AppHttpResponse> updateSocialsProfile({
    DisplayName? firstName,
    DisplayName? lastName,
    Phone? phone,
  });

  Future<Option<AppHttpResponse?>> appleAuthentication([bool notify = false]);

  Future<void> signOut(
    bool? notify, {
    bool email = true,
    bool google = true,
    bool facebook = true,
    bool twitter = true,
    bool apple = true,
  });

  Future<AppHttpResponse> deleteAccount();

  Future<void> sleep();

  Future<Either<AppHttpResponse, Option<Rider?>>> retrieveAndCacheUpdatedRider({
    RiderDTO? dto,
    bool shouldThrow = false,
    bool forceGetLocalCache = false,
  });

  Future<Either<AppHttpResponse, bool>> checkInternetConnectivity() async {
    final isConnected = (await getIt<Connectivity>().checkConnectivity()) !=
        ConnectivityResult.none;

    if (!isConnected)
      return left(AppHttpResponse(AnyResponse.fromFailure(
        const NetworkFailure.notConnected(),
      )));

    final hasInternet = await getIt<InternetConnectionChecker>().hasConnection;

    if (isConnected && !hasInternet)
      return left(AppHttpResponse(AnyResponse.fromFailure(
        const NetworkFailure.poorInternet(),
      )));

    return right(isConnected && hasInternet);
  }

  Future<AppHttpResponse> handleFailure<R>({
    required AppHttpResponse e,
    StackTrace? trace,
    bool notify = true,
  }) async {
    switch (e.reason) {
      case AppNetworkExceptionReason.timedOut:
      case AppNetworkExceptionReason.cancelled:
        return e;
      case AppNetworkExceptionReason.responseError:
      default:
        await env.flavor.fold(
          prod: () async => // Log Inknown Exceptions to Firebase Analytics
              await getIt<FirebaseCrashlytics>().recordFlutterError(
            FlutterErrorDetails(exception: e.message, stack: trace),
          ),
        );

        // Log the Rider of if access token has expired
        return await e.foldCode(
          is401: () async {
            await signOut(true);
            return e;
          },
          orElse: () async {
            // Sink all unrelated auth-failures
            // propagate any necessary data the widget tree
            if (notify) await sink(left(e));
            return e;
          },
        );
    }
  }
}
