import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/features/auth/data/repositories/access_token/access_token_manager.dart';
import 'package:amatrider/features/home/domain/repositories/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/router/guards/guest_guard.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sweetsheet/sweetsheet.dart';

part 'http_client_module.part.dart';

@module
abstract class Modules {
  @singleton
  AppRouter get router => AppRouter(
        authGuard: AuthGuard(),
        guestGuard: GuestGuard(),
      );

  @preResolve
  Future<FirebaseApp> get firebaseApp => Firebase.initializeApp();

  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics()..logAppOpen();

  @lazySingleton
  FirebaseCrashlytics get firebaseCrashlytics => FirebaseCrashlytics.instance;

  @preResolve
  Future<AppDatabase> get database async =>
      await $FloorAppDatabase.databaseBuilder(Const.database).build();
  // await $FloorAppDatabase.inMemoryDatabaseBuilder().build();

  @preResolve
  Future<SharedPreferences> get preferences => SharedPreferences.getInstance();

  @lazySingleton
  FacebookLogin get facebookLogin => FacebookLogin();

  @lazySingleton
  SweetSheet get sweetSheet => SweetSheet();
}

@module
abstract class ServiceModules {
  @lazySingleton
  Connectivity get connectionStatus => Connectivity();

  @lazySingleton
  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker();

  @singleton
  Dio get dio => _HttpClients._clientv2();

  @singleton
  AppHttpClient get httpClient => _HttpClients._clientv2();

  @preResolve
  Future<PaystackPlugin> get paystackInit async =>
      PaystackPlugin()..initialize(publicKey: env.paystackKey);
}

@module
abstract class GPSModules {
  @lazySingleton
  LocationService get locationManager => LocationService()..changeSettings();
}
