library global_app_preference_cubit.dart;

import 'dart:io';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart';
import 'package:amatrider/manager/settings/external/preference_repository.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/kt.dart';

part 'global_app_preference_cubit.freezed.dart';
part 'global_app_preference_state.dart';

@injectable
class GlobalAppPreferenceCubit extends HydratedCubit<GlobalPreferenceState> with BaseCubit<GlobalPreferenceState>, _ImagePickerMixin {
  static const String _localeLanguageKey = '${Const.appName}-language-code-key';
  static const String _localeCountryKey = '${Const.appName}-country-code-key';

  final PreferenceRepository _preferences;
  final UtilitiesRepository _utils;

  GlobalAppPreferenceCubit(this._preferences, this._utils) : super(GlobalPreferenceState.initial());

  @override
  GlobalPreferenceState fromJson(Map<String, dynamic> json) {
    final _language = json[_localeLanguageKey] as String;
    final _country = json[_localeCountryKey] as String;
    return state.copyWith(currentLocale: Locale(_language, _country));
  }

  @override
  Map<String, dynamic> toJson(GlobalPreferenceState state) {
    return {
      _localeLanguageKey: state.currentLocale.languageCode,
      _localeCountryKey: state.currentLocale.countryCode,
    };
  }

  void initialize() {
    if (state.isInitalization)
      WidgetsBinding.instance!.addPostFrameCallback((_) async {
        emit(state.copyWith(isInitalization: false));
        await S.load(state.currentLocale);
      });
  }

  bool get isFirstAppLaunch => _preferences.getBool(PrefKeys.APP_LAUNCHED_PREF_KEY, ifNull: true);

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));

  void changeLocale(Locale locale) {
    emit(state.copyWith(currentLocale: locale));
    App.forceAppUpdate();
  }

  void updateLaunchSettings() async => await _preferences.setBool(key: PrefKeys.APP_LAUNCHED_PREF_KEY, value: false);

  void feedbackTypeChanged(FeedbackType? value) => emit(state.copyWith(feedbackType: value!));

  void supportMessageChanged(String value) => emit(state.copyWith(supportMessage: BasicTextField(value)));

  void contactSupport() async {
    emit(state.copyWith(isLoading: true, validate: true, status: none()));

    if (state.supportMessage.isValid) {
      final response = await _utils.contactSupport(
        type: state.feedbackType,
        message: '${state.supportMessage.getOrEmpty}',
        images: state.supportImages.asList(),
      );

      emit(state.copyWith(status: some(response), isLoading: false, validate: false));
    } else
      toggleLoading(false);
  }
}

mixin _ImagePickerMixin on HydratedCubit<GlobalPreferenceState> {
  final ImagePicker _picker = ImagePicker();

  void pickImage(ImageSource source, [int? index]) async {
    File? file;
    var fileSize = 0;

    var _result = await _picker.pickImage(source: source);

    if (_result == null)
      file = await _attemptFileRetrieval(_picker);
    else {
      file = File(_result.path);
      fileSize = file.lengthSync();
    }

    if (fileSize > Const.maxUploadSize) {
      emit(state.copyWith(
        status: some(AppHttpResponse.failure(
          'Max. image upload size is ${(Const.maxUploadSize / 1e+6).ceil()}MB',
        )),
      ));
      return;
    }

    if (file != null) {
      emit(state.copyWith(
        supportImages: index != null
            ? state.supportImages.mapIndexedNotNull((i, img) => i == index ? file! : img)
            : state.supportImages.plusElement(file),
      ));
    }
  }

  void removeImage([int? index]) {
    var _index = index ?? state.supportImages.size - 1;
    emit(state.copyWith(
      supportImages: state.supportImages.minusElement(state.supportImages.elementAt(_index)),
    ));
  }

  Future<File?> _attemptFileRetrieval(ImagePicker? picker) async {
    if (picker == null) return null;
    final _response = await _picker.retrieveLostData();
    if (!_response.isEmpty && _response.file != null) return File(_response.file!.path);
    return null;
  }
}
