import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';

enum BuildFlavor { prod, dev }

BuildEnvironment get env => _env!;
BuildEnvironment? _env;

class BuildEnvironment implements Secrets {
  final BuildFlavor flavor;
  final Uri? baseUri;

  factory BuildEnvironment.factory({BuildFlavor? flavor, Uri? uri}) => BuildEnvironment._(flavor: flavor!, baseUri: uri);

  BuildEnvironment._({this.flavor = BuildFlavor.dev, this.baseUri});

  Duration get greetingDuration => const Duration(milliseconds: 1200);

  String get googleMapsAPI => Utils.platform_(material: Secrets.androidAPIKey, cupertino: Secrets.iOSAPIKey)!;

  String get paystackKey => flavor.fold(dev: () => Secrets.paystackKeyDev, prod: () => Secrets.paystackKeyProd);

  String get flwPublicKey => flavor.fold(dev: () => Secrets.flutterwaveKeyDev, prod: () => Secrets.flutterwaveKeyProd);

  String get flwEncryptionKey => Secrets.flutterwaveEncrptionKey;

  String get pusherKey => Secrets.pusherKey;

  String get pusherCluster => Secrets.pusherCluster;

  String get pusherAppId => Secrets.pusherAppId;

  String get pusherAuthUrl => EndPoints.PUSHER_AUTH_URL;

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({@required BuildFlavor? flavor}) async {
    _env ??= BuildEnvironment.factory(
      flavor: flavor,
      uri: Uri.https(EndPoints.APP_DOMAIN, EndPoints.API_ENDPOINT),
    );

    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await flavor?.fold(
      dev: () async {
        await locator(Environment.dev);
        await getIt<FirebasePerformance>().setPerformanceCollectionEnabled(!kDebugMode);
        await getIt<FirebaseCrashlytics>().setCrashlyticsCollectionEnabled(!kDebugMode);
      },
      prod: () async {
        await locator(Environment.prod);
        await getIt<FirebasePerformance>().setPerformanceCollectionEnabled(!kDebugMode);
        await getIt<FirebaseCrashlytics>().setCrashlyticsCollectionEnabled(!kDebugMode);
      },
    );
  }
}

extension XBuildFlavor on BuildFlavor {
  U fold<U>({
    U Function()? dev,
    required U Function() prod,
  }) {
    switch (this) {
      case BuildFlavor.dev:
        return dev?.call() ?? prod.call();
      case BuildFlavor.prod:
      default:
        return prod.call();
    }
  }
}
