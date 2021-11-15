// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:amatrider/core/data/index.dart' as _i4;
import 'package:amatrider/core/data/sources/remote/utilities/utilities_remote.dart'
    as _i30;
import 'package:amatrider/features/auth/data/repositories/access_token/access_token_manager.dart'
    as _i3;
import 'package:amatrider/features/auth/data/repositories/auth/auth_facade_impl.dart'
    as _i36;
import 'package:amatrider/features/auth/data/sources/local/auth_local_source.dart'
    as _i6;
import 'package:amatrider/features/auth/data/sources/remote/auth_remote_source.dart'
    as _i7;
import 'package:amatrider/features/auth/domain/index.dart' as _i35;
import 'package:amatrider/features/auth/presentation/managers/auth_cubit/auth_cubit.dart'
    as _i43;
import 'package:amatrider/features/auth/presentation/managers/verification/verification_cubit.dart'
    as _i42;
import 'package:amatrider/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart'
    as _i37;
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart'
    as _i11;
import 'package:amatrider/features/home/data/repositories/laravel_notification.dart'
    as _i10;
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart'
    as _i20;
import 'package:amatrider/features/home/data/repositories/places_repository/places_repository.dart'
    as _i24;
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart'
    as _i31;
import 'package:amatrider/features/home/data/sources/history_remote/history_remote.dart'
    as _i15;
import 'package:amatrider/features/home/data/sources/insight_remote/insight_remote.dart'
    as _i16;
import 'package:amatrider/features/home/data/sources/logistics_remote/logistics_remote.dart'
    as _i19;
import 'package:amatrider/features/home/domain/repositories/index.dart' as _i18;
import 'package:amatrider/features/home/presentation/managers/history/history_cubit.dart'
    as _i39;
import 'package:amatrider/features/home/presentation/managers/insights/insights_cubit.dart'
    as _i40;
import 'package:amatrider/features/home/presentation/managers/location/location_cubit.dart'
    as _i32;
import 'package:amatrider/features/home/presentation/managers/map/map_cubit.dart'
    as _i21;
import 'package:amatrider/features/home/presentation/managers/request/request_cubit.dart'
    as _i41;
import 'package:amatrider/features/home/presentation/managers/review/reviews_cubit.dart'
    as _i34;
import 'package:amatrider/features/home/presentation/managers/send_package/send_package_cubit.dart'
    as _i25;
import 'package:amatrider/features/home/presentation/managers/tab_navigation/tab_navigation_cubit.dart'
    as _i28;
import 'package:amatrider/features/onborading/presentation/managers/onboarding/onboarding_cubit.dart'
    as _i22;
import 'package:amatrider/manager/locator/modules/modules.dart' as _i44;
import 'package:amatrider/manager/settings/external/preference_repository.dart'
    as _i33;
import 'package:amatrider/manager/settings/manager/global_app_preference_cubit.dart'
    as _i38;
import 'package:amatrider/manager/theme/manager/theme_cubit.dart' as _i29;
import 'package:amatrider/utils/utils.dart' as _i5;
import 'package:connectivity/connectivity.dart' as _i8;
import 'package:dio/dio.dart' as _i9;
import 'package:firebase_analytics/firebase_analytics.dart' as _i12;
import 'package:firebase_core/firebase_core.dart' as _i13;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i14;
import 'package:flutter_paystack/flutter_paystack.dart' as _i23;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i17;
import 'package:shared_preferences/shared_preferences.dart' as _i26;
import 'package:sweetsheet/sweetsheet.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

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
    gh.singleton<_i7.AuthRemoteDatasource>(
        _i7.AuthRemoteDatasource(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i8.Connectivity>(() => serviceModules.connectionStatus);
    gh.singleton<_i9.Dio>(serviceModules.dio);
    gh.factory<_i10.EchoNotification>(
        () => _i10.EchoNotification.initialize(get<_i3.AccessTokenManager>()));
    gh.factory<_i11.EchoRepository>(
        () => _i11.EchoRepository.initialize(get<_i3.AccessTokenManager>()));
    gh.lazySingleton<_i12.FirebaseAnalytics>(() => modules.firebaseAnalytics);
    await gh.factoryAsync<_i13.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i14.FirebaseCrashlytics>(
        () => modules.firebaseCrashlytics);
    gh.lazySingleton<_i15.HistoryRemote>(
        () => _i15.HistoryRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i16.InsightRemote>(
        () => _i16.InsightRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i17.InternetConnectionChecker>(
        () => serviceModules.connectionChecker);
    gh.lazySingleton<_i18.LocationService>(() => gPSModules.locationManager);
    gh.lazySingleton<_i19.LogisticsRemote>(
        () => _i19.LogisticsRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i20.LogisticsRepository>(() => _i20.LogisticsRepository(
        get<_i19.LogisticsRemote>(),
        get<_i16.InsightRemote>(),
        get<_i15.HistoryRemote>()));
    gh.factory<_i21.MapCubit>(() => _i21.MapCubit(get<_i18.LocationService>()));
    gh.factory<_i22.OnboardingCubit>(() => _i22.OnboardingCubit());
    await gh.factoryAsync<_i23.PaystackPlugin>(
        () => serviceModules.paystackInit,
        preResolve: true);
    gh.lazySingleton<_i24.PlacesRepository>(
        () => _i24.PlacesRepository(get<_i4.AppHttpClient>()));
    gh.factory<_i25.SendPackageCubit>(() => _i25.SendPackageCubit(
        get<_i20.LogisticsRepository>(),
        get<_i11.EchoRepository>(),
        get<_i18.LocationService>()));
    await gh.factoryAsync<_i26.SharedPreferences>(() => modules.preferences,
        preResolve: true);
    gh.lazySingleton<_i27.SweetSheet>(() => modules.sweetSheet);
    gh.factory<_i28.TabNavigationCubit>(() => _i28.TabNavigationCubit());
    gh.factory<_i29.ThemeCubit>(() => _i29.ThemeCubit());
    gh.lazySingleton<_i30.UtilitiesRemote>(
        () => _i30.UtilitiesRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i31.UtilitiesRepository>(
        () => _i31.UtilitiesRepository(remote: get<_i30.UtilitiesRemote>()));
    gh.factory<_i32.LocationCubit>(() => _i32.LocationCubit(
        get<_i18.LocationService>(), get<_i24.PlacesRepository>()));
    gh.singleton<_i33.PreferenceRepository>(
        _i33.PreferenceRepository(get<_i26.SharedPreferences>()));
    gh.factory<_i34.ReviewsCubit>(
        () => _i34.ReviewsCubit(get<_i31.UtilitiesRepository>()));
    gh.lazySingleton<_i35.AuthFacade>(() => _i36.AuthFacadeImpl(
        get<_i7.AuthRemoteDatasource>(),
        get<_i6.AuthLocalDatasource>(),
        get<_i12.FirebaseAnalytics>(),
        get<_i33.PreferenceRepository>()));
    gh.factory<_i37.AuthWatcherCubit>(() => _i37.AuthWatcherCubit(
        get<_i35.AuthFacade>(), get<_i11.EchoRepository>()));
    gh.singleton<_i38.GlobalAppPreferenceCubit>(_i38.GlobalAppPreferenceCubit(
        get<_i33.PreferenceRepository>(), get<_i31.UtilitiesRepository>()));
    gh.factory<_i39.HistoryCubit>(() => _i39.HistoryCubit(
        get<_i20.LogisticsRepository>(),
        get<_i11.EchoRepository>(),
        get<_i35.AuthFacade>()));
    gh.factory<_i40.InsightsCubit>(() => _i40.InsightsCubit(
        get<_i20.LogisticsRepository>(),
        get<_i11.EchoRepository>(),
        get<_i35.AuthFacade>()));
    gh.factory<_i41.RequestCubit>(() => _i41.RequestCubit(
        get<_i35.AuthFacade>(),
        get<_i20.LogisticsRepository>(),
        get<_i11.EchoRepository>()));
    gh.factory<_i42.VerificationCubit>(() => _i42.VerificationCubit(
        get<_i31.UtilitiesRepository>(), get<_i35.AuthFacade>()));
    gh.factory<_i43.AuthCubit>(() => _i43.AuthCubit(get<_i35.AuthFacade>(),
        get<_i33.PreferenceRepository>(), get<_i31.UtilitiesRepository>()));
    return this;
  }
}

class _$Modules extends _i44.Modules {}

class _$ServiceModules extends _i44.ServiceModules {}

class _$GPSModules extends _i44.GPSModules {}
