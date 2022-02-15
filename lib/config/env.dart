import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

enum BuildFlavor { prod, dev }

BuildEnvironment get env => _env!;
BuildEnvironment? _env;

class BuildEnvironment with Secrets {
  final BuildFlavor flavor;
  final Uri? baseUri;

  factory BuildEnvironment.factory({BuildFlavor? flavor, Uri? uri}) => BuildEnvironment._(flavor: flavor!, baseUri: uri);

  BuildEnvironment._({this.flavor = BuildFlavor.dev, this.baseUri});

  String get domain => env.flavor.fold(dev: () => '${EndPoints.APP_DEV_DOMAIN}', prod: () => '${EndPoints.APP_PROD_DOMAIN}');
  // String get domain => env.flavor.fold(dev: () => '${EndPoints.APP_DEV_DOMAIN}', prod: () => '${EndPoints.APP_DEV_DOMAIN}');

  String get httpsDomain => env.flavor.fold(dev: () => '${EndPoints.DEV_WEB_URL}', prod: () => '${EndPoints.PROD_WEB_URL}');
  // String get httpsDomain => env.flavor.fold(dev: () => '${EndPoints.DEV_WEB_URL}', prod: () => '${EndPoints.DEV_WEB_URL}');

  String get packageName => env.flavor.fold(dev: () => '${Const.packageNameDev}', prod: () => '${Const.packageName}');

  Duration get greetingDuration => const Duration(milliseconds: 1200);

  String get googleMapsAPI => Utils.platform_(material: androidAPIKey, cupertino: iOSAPIKey)!;

  String get paystackKey => flavor.fold(dev: () => paystackKeyDev, prod: () => paystackKeyProd);

  String get flwPublicKey => flavor.fold(dev: () => flutterwaveKeyDev, prod: () => flutterwaveKeyProd);

  String get flwEncryptionKey => flutterwaveEncrptionKey;

  String get pusherKey => appPusherKey;

  String get pusherCluster => appPusherCluster;

  String get pusherAppId => appPusherAppId;

  String get pusherAuthUrl => Uri.https('$domain', '${EndPoints.PUSHER_AUTH_URL}').toString();

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({required BuildFlavor flavor}) async {
    _env ??= BuildEnvironment.factory(
      flavor: flavor,
      uri: Uri.https(
        flavor.fold(dev: () => '${EndPoints.APP_DEV_DOMAIN}', prod: () => '${EndPoints.APP_PROD_DOMAIN}'),
        // flavor.fold(dev: () => '${EndPoints.APP_DEV_DOMAIN}', prod: () => '${EndPoints.APP_DEV_DOMAIN}'),
        EndPoints.API_ENDPOINT,
      ),
    );

    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await flavor.fold(
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
