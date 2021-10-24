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
  Future<Either<AppHttpResponse, Option<User?>>> get currentUser;

  Future<Option<User?>> get user;

  Stream<Either<AppHttpResponse, Option<User?>>> get onAuthStateChanges;

  Stream<Option<User?>> get onUserChanges;

  Future<void> sink([Either<AppHttpResponse, Option<User?>> userOrFailure]);

  Future<void> update(Option<User?> user);

  Future<AppHttpResponse> login({
    required EmailAddress email,
    required Password password,
    UserDTO? registered,
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

  Future<AppHttpResponse> googleAuthentication();

  Future<AppHttpResponse> facebookAuthentication();

  Future<AppHttpResponse> appleAuthentication();

  Future<void> signOut([bool? notify]);

  Future<void> sleep();

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

        // Log the user of if access token has expired
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
