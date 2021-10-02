import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:amatrider/manager/settings/external/preference_repository.dart';

part 'global_app_preference_state.dart';
part 'global_app_preference_cubit.freezed.dart';

@singleton
class GlobalAppPreferenceCubit extends Cubit<GlobalPreferenceState> {
  final PreferenceRepository _preferences;

  GlobalAppPreferenceCubit(this._preferences)
      : super(GlobalPreferenceState.initial());

  void updateAppLaunchSettings() async {
    await _preferences.setBool(
      key: PrefKeys.APP_LAUNCHED_PREF_KEY,
      value: false,
    );

    emit(state.copyWith(isFirstLaunch: true));
  }
}
