import 'package:amatrider/core/data/http_client/index.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/features/auth/data/models/index.dart';
import 'package:amatrider/features/auth/data/sources/sources.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

mixin SocialAuthMixin on AuthFacade {
  AuthRemoteDatasource get remote;
  AuthLocalDatasource get local;
  FirebaseAnalytics get analytics;
  GoogleSignIn get googleSignIn;

  @override
  Future<Option<AppHttpResponse?>> googleAuthentication([bool notify = false]) async {
    // First we'll check for stable Internet connection
    final _conn = await checkInternetConnectivity();

    return await _conn.fold(
      (f) => some(f),
      (_) async {
        try {
          // Clear cached / authenticated user but do not notify UI
          if (await googleSignIn.isSignedIn()) await signOut(notify, email: false, apple: false);

          // Attempt authenticating user with google credentials
          var account = await googleSignIn.signIn();
          // If null, => user cancelled authentication
          if (account == null) throw FailureResponse.aborted();

          // get authentication details [idToken], [accessToken]
          final authentication = await account.authentication;

          // Fetch AuthCredentials
          final response = await remote.signInWithGoogle(authentication.accessToken);

          // cache access token
          await local.cacheRiderAccessToken(response.data);

          // Get Authenticated Rider account
          final _rider = await remote.getRider();

          return await _rider.fold(
            (failure) async {
              final _data = failure.data as Map<String, dynamic>;
              final _socialDto = SocialUserDTO.fromJson(_data);

              // Log Firebase Analytics Login event
              await analytics.logLogin(loginMethod: 'google');

              await retrieveAndCacheUpdatedRider(dto: _socialDto.dto);

              await sink(left(failure));

              return some(failure);
            },
            (dto) async {
              // Log Firebase Analytics Login event
              await analytics.logLogin(loginMethod: 'google');

              await sink(right(optionOf(dto?.domain)));

              return none();
            },
          );
        } on AppHttpResponse catch (e) {
          return some(e);
        } on AppNetworkException catch (e) {
          return some(e.asResponse());
        } on Failure catch (e) {
          return some(AppHttpResponse.failure(e.message));
        } on PlatformException catch (e) {
          return some(AppHttpResponse(AnyResponse.fromFailure(
            FailureResponse.unknown(message: e.message),
          )));
        }
      },
    );
  }

  @override
  Future<Option<AppHttpResponse?>> appleAuthentication([bool notify = false]) async {
    try {
      return some(AppHttpResponse(AnyResponse.fromFailure(
        FailureResponse.unImplemented('Coming soon!'),
      )));
    } on AppHttpResponse catch (e) {
      log.e(e);
      return some(e);
    } on PlatformException catch (e) {
      log.e(e);
      return some(AppHttpResponse(AnyResponse.fromFailure(
        FailureResponse.unknown(message: e.message),
      )));
    }
  }
}
