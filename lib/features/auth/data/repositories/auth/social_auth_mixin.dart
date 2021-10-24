import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/features/auth/data/sources/sources.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/utils/utils.dart';

mixin SocialAuthMixin on AuthFacade {
  static const int FACEBOOK_IMAGE_SIZE = 600;

  AuthRemoteDatasource get remote;
  AuthLocalDatasource get local;
  FirebaseAnalytics get analytics;
  FacebookLogin get facebookLogin;

  @override
  Future<AppHttpResponse> facebookAuthentication() async {
    try {
      // First we'll check for stable Internet connection
      final _result = await checkInternetConnectivity();

      return _result.fold(
        (f) async => throw f,
        (r) async {
          return AppHttpResponse(AnyResponse.fromFailure(
            FailureResponse.unImplemented('Method implmentation not found!'),
          ));
        },
      );
    } on AppHttpResponse catch (e) {
      return e;
    } on PlatformException catch (e) {
      log.e(e);
      return AppHttpResponse(AnyResponse.fromFailure(
        FailureResponse.unknown(message: e.message),
      ));
    }
  }

  @override
  Future<AppHttpResponse> googleAuthentication() async {
    try {
      return AppHttpResponse(AnyResponse.fromFailure(
        FailureResponse.unImplemented('Method implmentation not found!'),
      ));
    } on AppHttpResponse catch (e) {
      return e;
    } on PlatformException catch (e) {
      log.e(e);
      return AppHttpResponse(AnyResponse.fromFailure(
        FailureResponse.unknown(message: e.message),
      ));
    }
  }

  @override
  Future<AppHttpResponse> appleAuthentication() async {
    try {
      return AppHttpResponse(AnyResponse.fromFailure(
        FailureResponse.unImplemented('Method implmentation not found!'),
      ));
    } on AppHttpResponse catch (e) {
      return e;
    } on PlatformException catch (e) {
      log.e(e);
      return AppHttpResponse(AnyResponse.fromFailure(
        FailureResponse.unknown(message: e.message),
      ));
    }
  }
}

extension XFacebookLoginStatus on FacebookLoginResult {
  U fold<U>({
    U Function(String?)? success,
    U Function(FacebookLoginStatus)? failed,
    required U Function() cancel,
  }) {
    switch (status) {
      case FacebookLoginStatus.success:
        return success?.call(accessToken?.token) ?? cancel.call();
      case FacebookLoginStatus.error:
        return failed?.call(status) ?? cancel.call();
      case FacebookLoginStatus.cancel:
      default:
        return cancel.call();
    }
  }
}
