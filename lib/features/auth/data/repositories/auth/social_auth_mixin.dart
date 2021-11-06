import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/features/auth/data/sources/sources.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/services.dart';

mixin SocialAuthMixin on AuthFacade {
  static const int FACEBOOK_IMAGE_SIZE = 600;

  AuthRemoteDatasource get remote;
  AuthLocalDatasource get local;
  FirebaseAnalytics get analytics;

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
