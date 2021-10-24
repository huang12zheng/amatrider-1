// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:amatrider/core/data/index.dart' as _i4;
import 'package:amatrider/core/data/sources/remote/utilities/utilities_remote.dart'
    as _i24;
import 'package:amatrider/features/auth/data/repositories/access_token/access_token_manager.dart'
    as _i3;
import 'package:amatrider/features/auth/data/repositories/auth/auth_facade_impl.dart'
    as _i27;
import 'package:amatrider/features/auth/data/sources/local/auth_local_source.dart'
    as _i6;
import 'package:amatrider/features/auth/data/sources/remote/auth_remote_source.dart'
    as _i7;
import 'package:amatrider/features/auth/domain/index.dart' as _i26;
import 'package:amatrider/features/auth/presentation/managers/auth_cubit/auth_cubit.dart'
    as _i30;
import 'package:amatrider/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart'
    as _i28;
import 'package:amatrider/features/home/domain/repositories/index.dart' as _i15;
import 'package:amatrider/features/home/presentation/managers/map_cubit/map_cubit.dart'
    as _i16;
import 'package:amatrider/features/home/presentation/managers/tab_navigation/tab_navigation_cubit.dart'
    as _i22;
import 'package:amatrider/features/onborading/presentation/managers/onboarding/onboarding_cubit.dart'
    as _i17;
import 'package:amatrider/manager/locator/modules/modules.dart' as _i31;
import 'package:amatrider/manager/locator/modules/pusher_module.dart' as _i32;
import 'package:amatrider/manager/settings/external/preference_repository.dart'
    as _i25;
import 'package:amatrider/manager/settings/manager/global_app_preference_cubit.dart'
    as _i29;
import 'package:amatrider/manager/theme/manager/theme_cubit.dart' as _i23;
import 'package:amatrider/utils/utils.dart' as _i5;
import 'package:connectivity/connectivity.dart' as _i8;
import 'package:dio/dio.dart' as _i9;
import 'package:firebase_analytics/firebase_analytics.dart' as _i11;
import 'package:firebase_core/firebase_core.dart' as _i12;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i13;
import 'package:flutter_login_facebook/flutter_login_facebook.dart' as _i10;
import 'package:flutter_paystack/flutter_paystack.dart' as _i18;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i14;
import 'package:pusher_client/pusher_client.dart' as _i19;
import 'package:shared_preferences/shared_preferences.dart' as _i20;
import 'package:sweetsheet/sweetsheet.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

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
    final pusherModule = _$PusherModule();
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
    gh.lazySingleton<_i10.FacebookLogin>(() => modules.facebookLogin);
    gh.lazySingleton<_i11.FirebaseAnalytics>(() => modules.firebaseAnalytics);
    await gh.factoryAsync<_i12.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i13.FirebaseCrashlytics>(
        () => modules.firebaseCrashlytics);
    gh.lazySingleton<_i14.InternetConnectionChecker>(
        () => serviceModules.connectionChecker);
    gh.lazySingleton<_i15.LocationService>(() => gPSModules.locationManager);
    gh.factory<_i16.MapCubit>(() => _i16.MapCubit(get<_i15.LocationService>()));
    gh.factory<_i17.OnboardingCubit>(() => _i17.OnboardingCubit());
    await gh.factoryAsync<_i18.PaystackPlugin>(
        () => serviceModules.paystackInit,
        preResolve: true);
    gh.lazySingleton<_i19.PusherClient>(() => pusherModule.pusher);
    await gh.factoryAsync<_i20.SharedPreferences>(() => modules.preferences,
        preResolve: true);
    gh.lazySingleton<_i21.SweetSheet>(() => modules.sweetSheet);
    gh.factory<_i22.TabNavigationCubit>(() => _i22.TabNavigationCubit());
    gh.factory<_i23.ThemeCubit>(() => _i23.ThemeCubit());
    gh.lazySingleton<_i24.UtilitiesRemote>(
        () => _i24.UtilitiesRemote(get<_i4.AppHttpClient>()));
    gh.singleton<_i25.PreferenceRepository>(
        _i25.PreferenceRepository(get<_i20.SharedPreferences>()));
    gh.lazySingleton<_i26.AuthFacade>(() => _i27.AuthFacadeImpl(
        get<_i7.AuthRemoteDatasource>(),
        get<_i6.AuthLocalDatasource>(),
        get<_i11.FirebaseAnalytics>(),
        get<_i10.FacebookLogin>(),
        get<_i25.PreferenceRepository>()));
    gh.factory<_i28.AuthWatcherCubit>(
        () => _i28.AuthWatcherCubit(get<_i26.AuthFacade>()));
    gh.singleton<_i29.GlobalAppPreferenceCubit>(
        _i29.GlobalAppPreferenceCubit(get<_i25.PreferenceRepository>()));
    gh.factory<_i30.AuthCubit>(() => _i30.AuthCubit(get<_i26.AuthFacade>(),
        get<_i25.PreferenceRepository>(), get<_i24.UtilitiesRemote>()));
    return this;
  }
}

class _$Modules extends _i31.Modules {}

class _$ServiceModules extends _i31.ServiceModules {}

class _$GPSModules extends _i31.GPSModules {}

class _$PusherModule extends _i32.PusherModule {}
