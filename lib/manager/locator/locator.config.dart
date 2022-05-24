// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:amatrider/core/data/index.dart' as _i4;
import 'package:amatrider/core/data/repository/firebase_messaging_service.dart'
    as _i38;
import 'package:amatrider/core/data/sources/remote/utilities/utilities_remote.dart'
    as _i33;
import 'package:amatrider/core/domain/facades/index.dart' as _i37;
import 'package:amatrider/features/auth/data/repositories/access_token/access_token_manager.dart'
    as _i3;
import 'package:amatrider/features/auth/data/repositories/auth/auth_facade_impl.dart'
    as _i45;
import 'package:amatrider/features/auth/data/sources/local/auth_local_source.dart'
    as _i6;
import 'package:amatrider/features/auth/data/sources/remote/auth_remote_source.dart'
    as _i42;
import 'package:amatrider/features/auth/domain/index.dart' as _i44;
import 'package:amatrider/features/auth/presentation/managers/auth_cubit/auth_cubit.dart'
    as _i50;
import 'package:amatrider/features/auth/presentation/managers/verification/verification_cubit.dart'
    as _i35;
import 'package:amatrider/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart'
    as _i46;
import 'package:amatrider/features/home/data/repositories/geolocator_location_service.dart'
    as _i21;
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart'
    as _i10;
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart'
    as _i23;
import 'package:amatrider/features/home/data/repositories/places_repository/places_repository.dart'
    as _i26;
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart'
    as _i34;
import 'package:amatrider/features/home/data/sources/history_remote/history_remote.dart'
    as _i17;
import 'package:amatrider/features/home/data/sources/insight_remote/insight_remote.dart'
    as _i18;
import 'package:amatrider/features/home/data/sources/logistics_remote/logistics_remote.dart'
    as _i22;
import 'package:amatrider/features/home/domain/repositories/index.dart' as _i20;
import 'package:amatrider/features/home/presentation/managers/history/history_cubit.dart'
    as _i47;
import 'package:amatrider/features/home/presentation/managers/insights/insights_cubit.dart'
    as _i48;
import 'package:amatrider/features/home/presentation/managers/location/location_cubit.dart'
    as _i36;
import 'package:amatrider/features/home/presentation/managers/map/map_cubit.dart'
    as _i24;
import 'package:amatrider/features/home/presentation/managers/notification/notification_cubit.dart'
    as _i49;
import 'package:amatrider/features/home/presentation/managers/promotion/promotion_cubit.dart'
    as _i40;
import 'package:amatrider/features/home/presentation/managers/request/request_cubit.dart'
    as _i27;
import 'package:amatrider/features/home/presentation/managers/review/reviews_cubit.dart'
    as _i41;
import 'package:amatrider/features/home/presentation/managers/send_package/send_package_cubit.dart'
    as _i28;
import 'package:amatrider/features/home/presentation/managers/tab_navigation/tab_navigation_cubit.dart'
    as _i31;
import 'package:amatrider/features/onborading/presentation/managers/onboarding/onboarding_cubit.dart'
    as _i25;
import 'package:amatrider/manager/locator/modules/modules.dart' as _i51;
import 'package:amatrider/manager/settings/external/preference_repository.dart'
    as _i39;
import 'package:amatrider/manager/settings/manager/global_app_preference_cubit.dart'
    as _i43;
import 'package:amatrider/manager/theme/manager/theme_cubit.dart' as _i32;
import 'package:amatrider/utils/utils.dart' as _i5;
import 'package:awesome_notifications/awesome_notifications.dart' as _i7;
import 'package:connectivity_plus/connectivity_plus.dart' as _i8;
import 'package:dio/dio.dart' as _i9;
import 'package:firebase_analytics/firebase_analytics.dart' as _i11;
import 'package:firebase_core/firebase_core.dart' as _i12;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i13;
import 'package:firebase_messaging/firebase_messaging.dart' as _i14;
import 'package:firebase_performance/firebase_performance.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i16;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i19;
import 'package:shared_preferences/shared_preferences.dart' as _i29;
import 'package:sweetsheet/sweetsheet.dart'
    as _i30; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> $initGetIt(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final modules = _$Modules();
    final serviceModules = _$ServiceModules();
    gh.lazySingleton<_i3.AccessTokenManager>(() => _i3.AccessTokenManager());
    await gh.factoryAsync<_i4.AppDatabase>(() => modules.database,
        preResolve: true);
    gh.singleton<_i4.AppHttpClient>(serviceModules.httpClient);
    gh.singleton<_i5.AppRouter>(modules.router);
    gh.singleton<_i6.AuthLocalDatasource>(_i6.AuthLocalDatasource(
        get<_i3.AccessTokenManager>(), get<_i4.AppDatabase>()));
    gh.lazySingleton<_i7.AwesomeNotifications>(
        () => serviceModules.awesomeNotifications);
    gh.lazySingleton<_i8.Connectivity>(() => serviceModules.connectionStatus);
    gh.singleton<_i9.Dio>(serviceModules.dio);
    gh.factory<_i10.EchoRepository>(
        () => _i10.EchoRepository.initialize(get<_i3.AccessTokenManager>()));
    gh.lazySingleton<_i11.FirebaseAnalytics>(() => modules.firebaseAnalytics);
    await gh.factoryAsync<_i12.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i13.FirebaseCrashlytics>(
        () => modules.firebaseCrashlytics);
    gh.lazySingleton<_i14.FirebaseMessaging>(() => modules.firebaseMessaging);
    gh.lazySingleton<_i15.FirebasePerformance>(
        () => modules.firebasePerformace);
    gh.lazySingleton<_i16.GoogleSignIn>(() => modules.googleSignIn);
    gh.lazySingleton<_i17.HistoryRemote>(
        () => _i17.HistoryRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i18.InsightRemote>(
        () => _i18.InsightRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i19.InternetConnectionChecker>(
        () => serviceModules.connectionChecker);
    gh.lazySingleton<_i20.LocationService>(
        () => _i21.GeolocatorLocationService(),
        dispose: (i) => i.dispose());
    gh.lazySingleton<_i22.LogisticsRemote>(
        () => _i22.LogisticsRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i23.LogisticsRepository>(() => _i23.LogisticsRepository(
        get<_i22.LogisticsRemote>(),
        get<_i18.InsightRemote>(),
        get<_i17.HistoryRemote>()));
    gh.factory<_i24.MapCubit>(() => _i24.MapCubit());
    gh.factory<_i25.OnboardingCubit>(() => _i25.OnboardingCubit());
    gh.lazySingleton<_i26.PlacesRepository>(
        () => _i26.PlacesRepository(get<_i4.AppHttpClient>()));
    gh.factory<_i27.RequestCubit>(() => _i27.RequestCubit(
        get<_i23.LogisticsRepository>(), get<_i10.EchoRepository>()));
    gh.factory<_i28.SendPackageCubit>(() => _i28.SendPackageCubit(
        get<_i23.LogisticsRepository>(),
        get<_i10.EchoRepository>(),
        get<_i20.LocationService>()));
    await gh.factoryAsync<_i29.SharedPreferences>(() => modules.preferences,
        preResolve: true);
    gh.lazySingleton<_i30.SweetSheet>(() => modules.sweetSheet);
    gh.factory<_i31.TabNavigationCubit>(() => _i31.TabNavigationCubit());
    gh.factory<_i32.ThemeCubit>(() => _i32.ThemeCubit());
    gh.lazySingleton<_i33.UtilitiesRemote>(
        () => _i33.UtilitiesRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i34.UtilitiesRepository>(
        () => _i34.UtilitiesRepository(get<_i33.UtilitiesRemote>()));
    gh.factory<_i35.VerificationCubit>(
        () => _i35.VerificationCubit(get<_i34.UtilitiesRepository>()));
    gh.factory<_i36.LocationCubit>(() => _i36.LocationCubit(
        get<_i20.LocationService>(), get<_i26.PlacesRepository>()));
    gh.singleton<_i37.MessagingFacade>(
        _i38.InAppMessaging(
            get<_i14.FirebaseMessaging>(),
            get<_i33.UtilitiesRemote>(),
            get<_i19.InternetConnectionChecker>(),
            get<_i8.Connectivity>(),
            get<_i7.AwesomeNotifications>()),
        dispose: (i) => i.dispose());
    gh.singleton<_i39.PreferenceRepository>(
        _i39.PreferenceRepository(get<_i29.SharedPreferences>()));
    gh.factory<_i40.PromotionCubit>(
        () => _i40.PromotionCubit(get<_i34.UtilitiesRepository>()));
    gh.factory<_i41.ReviewsCubit>(
        () => _i41.ReviewsCubit(get<_i34.UtilitiesRepository>()));
    gh.singleton<_i42.AuthRemoteDatasource>(_i42.AuthRemoteDatasource(
        get<_i4.AppHttpClient>(), get<_i39.PreferenceRepository>()));
    gh.factory<_i43.GlobalAppPreferenceCubit>(() =>
        _i43.GlobalAppPreferenceCubit(
            get<_i39.PreferenceRepository>(), get<_i34.UtilitiesRepository>()));
    gh.lazySingleton<_i44.AuthFacade>(() => _i45.AuthFacadeImpl(
        get<_i42.AuthRemoteDatasource>(),
        get<_i6.AuthLocalDatasource>(),
        get<_i16.GoogleSignIn>(),
        get<_i11.FirebaseAnalytics>(),
        get<_i39.PreferenceRepository>()));
    gh.factory<_i46.AuthWatcherCubit>(() => _i46.AuthWatcherCubit(
        get<_i44.AuthFacade>(), get<_i10.EchoRepository>()));
    gh.factory<_i47.HistoryCubit>(() => _i47.HistoryCubit(
        get<_i23.LogisticsRepository>(),
        get<_i10.EchoRepository>(),
        get<_i44.AuthFacade>()));
    gh.factory<_i48.InsightsCubit>(() => _i48.InsightsCubit(
        get<_i23.LogisticsRepository>(),
        get<_i10.EchoRepository>(),
        get<_i44.AuthFacade>()));
    gh.singleton<_i49.NotificationCubit>(_i49.NotificationCubit(
        get<_i44.AuthFacade>(),
        get<_i34.UtilitiesRepository>(),
        get<_i10.EchoRepository>()));
    gh.factory<_i50.AuthCubit>(() => _i50.AuthCubit(get<_i44.AuthFacade>(),
        get<_i34.UtilitiesRepository>(), get<_i39.PreferenceRepository>()));
    return this;
  }
}

class _$Modules extends _i51.Modules {}

class _$ServiceModules extends _i51.ServiceModules {}
