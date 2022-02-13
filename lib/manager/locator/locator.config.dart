// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:amatrider/core/data/index.dart' as _i4;
import 'package:amatrider/core/data/sources/remote/utilities/utilities_remote.dart'
    as _i32;
import 'package:amatrider/features/auth/data/repositories/access_token/access_token_manager.dart'
    as _i3;
import 'package:amatrider/features/auth/data/repositories/auth/auth_facade_impl.dart'
    as _i41;
import 'package:amatrider/features/auth/data/sources/local/auth_local_source.dart'
    as _i6;
import 'package:amatrider/features/auth/data/sources/remote/auth_remote_source.dart'
    as _i38;
import 'package:amatrider/features/auth/domain/index.dart' as _i40;
import 'package:amatrider/features/auth/presentation/managers/auth_cubit/auth_cubit.dart'
    as _i47;
import 'package:amatrider/features/auth/presentation/managers/verification/verification_cubit.dart'
    as _i46;
import 'package:amatrider/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart'
    as _i42;
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart'
    as _i10;
import 'package:amatrider/features/home/data/repositories/laravel_notification.dart'
    as _i9;
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart'
    as _i21;
import 'package:amatrider/features/home/data/repositories/places_repository/places_repository.dart'
    as _i25;
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart'
    as _i33;
import 'package:amatrider/features/home/data/sources/history_remote/history_remote.dart'
    as _i16;
import 'package:amatrider/features/home/data/sources/insight_remote/insight_remote.dart'
    as _i17;
import 'package:amatrider/features/home/data/sources/logistics_remote/logistics_remote.dart'
    as _i20;
import 'package:amatrider/features/home/domain/repositories/index.dart' as _i19;
import 'package:amatrider/features/home/presentation/managers/history/history_cubit.dart'
    as _i43;
import 'package:amatrider/features/home/presentation/managers/insights/insights_cubit.dart'
    as _i44;
import 'package:amatrider/features/home/presentation/managers/location/location_cubit.dart'
    as _i34;
import 'package:amatrider/features/home/presentation/managers/map/map_cubit.dart'
    as _i22;
import 'package:amatrider/features/home/presentation/managers/notification/notification_cubit.dart'
    as _i45;
import 'package:amatrider/features/home/presentation/managers/promotion/promotion_cubit.dart'
    as _i36;
import 'package:amatrider/features/home/presentation/managers/request/request_cubit.dart'
    as _i26;
import 'package:amatrider/features/home/presentation/managers/review/reviews_cubit.dart'
    as _i37;
import 'package:amatrider/features/home/presentation/managers/send_package/send_package_cubit.dart'
    as _i27;
import 'package:amatrider/features/home/presentation/managers/tab_navigation/tab_navigation_cubit.dart'
    as _i30;
import 'package:amatrider/features/onborading/presentation/managers/onboarding/onboarding_cubit.dart'
    as _i23;
import 'package:amatrider/manager/locator/modules/modules.dart' as _i48;
import 'package:amatrider/manager/settings/external/preference_repository.dart'
    as _i35;
import 'package:amatrider/manager/settings/manager/global_app_preference_cubit.dart'
    as _i39;
import 'package:amatrider/manager/theme/manager/theme_cubit.dart' as _i31;
import 'package:amatrider/utils/utils.dart' as _i5;
import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:dio/dio.dart' as _i8;
import 'package:firebase_analytics/firebase_analytics.dart' as _i11;
import 'package:firebase_core/firebase_core.dart' as _i12;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i13;
import 'package:firebase_performance/firebase_performance.dart' as _i14;
import 'package:flutter_paystack/flutter_paystack.dart' as _i24;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i15;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i18;
import 'package:shared_preferences/shared_preferences.dart' as _i28;
import 'package:sweetsheet/sweetsheet.dart'
    as _i29; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> $initGetIt(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final modules = _$Modules();
    final serviceModules = _$ServiceModules();
    final gPSModules = _$GPSModules();
    gh.lazySingleton<_i3.AccessTokenManager>(() => _i3.AccessTokenManager());
    await gh.factoryAsync<_i4.AppDatabase>(() => modules.database,
        preResolve: true);
    gh.singleton<_i4.AppHttpClient>(serviceModules.httpClient);
    gh.singleton<_i5.AppRouter>(modules.router);
    gh.singleton<_i6.AuthLocalDatasource>(_i6.AuthLocalDatasource(
        get<_i3.AccessTokenManager>(), get<_i4.AppDatabase>()));
    gh.lazySingleton<_i7.Connectivity>(() => serviceModules.connectionStatus);
    gh.singleton<_i8.Dio>(serviceModules.dio);
    gh.factory<_i9.EchoNotification>(
        () => _i9.EchoNotification.initialize(get<_i3.AccessTokenManager>()));
    gh.factory<_i10.EchoRepository>(
        () => _i10.EchoRepository.initialize(get<_i3.AccessTokenManager>()));
    gh.lazySingleton<_i11.FirebaseAnalytics>(() => modules.firebaseAnalytics);
    await gh.factoryAsync<_i12.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i13.FirebaseCrashlytics>(
        () => modules.firebaseCrashlytics);
    gh.lazySingleton<_i14.FirebasePerformance>(
        () => modules.firebasePerformace);
    gh.lazySingleton<_i15.GoogleSignIn>(() => modules.googleSignIn);
    gh.lazySingleton<_i16.HistoryRemote>(
        () => _i16.HistoryRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i17.InsightRemote>(
        () => _i17.InsightRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i18.InternetConnectionChecker>(
        () => serviceModules.connectionChecker);
    gh.lazySingleton<_i19.LocationService>(() => gPSModules.locationManager);
    gh.lazySingleton<_i20.LogisticsRemote>(
        () => _i20.LogisticsRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i21.LogisticsRepository>(() => _i21.LogisticsRepository(
        get<_i20.LogisticsRemote>(),
        get<_i17.InsightRemote>(),
        get<_i16.HistoryRemote>()));
    gh.factory<_i22.MapCubit>(() => _i22.MapCubit());
    gh.factory<_i23.OnboardingCubit>(() => _i23.OnboardingCubit());
    await gh.factoryAsync<_i24.PaystackPlugin>(
        () => serviceModules.paystackInit,
        preResolve: true);
    gh.lazySingleton<_i25.PlacesRepository>(
        () => _i25.PlacesRepository(get<_i4.AppHttpClient>()));
    gh.factory<_i26.RequestCubit>(() => _i26.RequestCubit(
        get<_i21.LogisticsRepository>(), get<_i10.EchoRepository>()));
    gh.factory<_i27.SendPackageCubit>(() => _i27.SendPackageCubit(
        get<_i21.LogisticsRepository>(),
        get<_i10.EchoRepository>(),
        get<_i19.LocationService>()));
    await gh.factoryAsync<_i28.SharedPreferences>(() => modules.preferences,
        preResolve: true);
    gh.lazySingleton<_i29.SweetSheet>(() => modules.sweetSheet);
    gh.factory<_i30.TabNavigationCubit>(() => _i30.TabNavigationCubit());
    gh.factory<_i31.ThemeCubit>(() => _i31.ThemeCubit());
    gh.lazySingleton<_i32.UtilitiesRemote>(
        () => _i32.UtilitiesRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i33.UtilitiesRepository>(
        () => _i33.UtilitiesRepository(get<_i32.UtilitiesRemote>()));
    gh.factory<_i34.LocationCubit>(() => _i34.LocationCubit(
        get<_i19.LocationService>(), get<_i25.PlacesRepository>()));
    gh.singleton<_i35.PreferenceRepository>(
        _i35.PreferenceRepository(get<_i28.SharedPreferences>()));
    gh.factory<_i36.PromotionCubit>(
        () => _i36.PromotionCubit(get<_i33.UtilitiesRepository>()));
    gh.factory<_i37.ReviewsCubit>(
        () => _i37.ReviewsCubit(get<_i33.UtilitiesRepository>()));
    gh.singleton<_i38.AuthRemoteDatasource>(_i38.AuthRemoteDatasource(
        get<_i4.AppHttpClient>(), get<_i35.PreferenceRepository>()));
    gh.factory<_i39.GlobalAppPreferenceCubit>(() =>
        _i39.GlobalAppPreferenceCubit(
            get<_i35.PreferenceRepository>(), get<_i33.UtilitiesRepository>()));
    gh.lazySingleton<_i40.AuthFacade>(() => _i41.AuthFacadeImpl(
        get<_i38.AuthRemoteDatasource>(),
        get<_i6.AuthLocalDatasource>(),
        get<_i15.GoogleSignIn>(),
        get<_i11.FirebaseAnalytics>(),
        get<_i35.PreferenceRepository>()));
    gh.factory<_i42.AuthWatcherCubit>(() => _i42.AuthWatcherCubit(
        get<_i40.AuthFacade>(), get<_i10.EchoRepository>()));
    gh.factory<_i43.HistoryCubit>(() => _i43.HistoryCubit(
        get<_i21.LogisticsRepository>(),
        get<_i10.EchoRepository>(),
        get<_i40.AuthFacade>()));
    gh.factory<_i44.InsightsCubit>(() => _i44.InsightsCubit(
        get<_i21.LogisticsRepository>(),
        get<_i10.EchoRepository>(),
        get<_i40.AuthFacade>()));
    gh.singleton<_i45.NotificationCubit>(_i45.NotificationCubit(
        get<_i40.AuthFacade>(),
        get<_i33.UtilitiesRepository>(),
        get<_i10.EchoRepository>()));
    gh.factory<_i46.VerificationCubit>(() => _i46.VerificationCubit(
        get<_i33.UtilitiesRepository>(), get<_i40.AuthFacade>()));
    gh.factory<_i47.AuthCubit>(() => _i47.AuthCubit(get<_i40.AuthFacade>(),
        get<_i33.UtilitiesRepository>(), get<_i35.PreferenceRepository>()));
    return this;
  }
}

class _$Modules extends _i48.Modules {}

class _$ServiceModules extends _i48.ServiceModules {}

class _$GPSModules extends _i48.GPSModules {}
