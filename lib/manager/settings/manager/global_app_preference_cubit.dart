library global_app_preference_cubit.dart;

import 'dart:io';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart';
import 'package:amatrider/manager/settings/external/preference_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'global_app_preference_cubit.freezed.dart';
part 'global_app_preference_state.dart';

@singleton
class GlobalAppPreferenceCubit extends Cubit<GlobalPreferenceState>
    with _ImagePickerMixin {
  final PreferenceRepository _preferences;
  final UtilitiesRepository _utils;

  GlobalAppPreferenceCubit(this._preferences, this._utils)
      : super(GlobalPreferenceState.initial());

  bool get isFirstAppLaunch =>
      _preferences.getBool(PrefKeys.APP_LAUNCHED_PREF_KEY, ifNull: true);

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
        status: status ?? state.status,
      ));

  void updateLaunchSettings() async => await _preferences.setBool(
      key: PrefKeys.APP_LAUNCHED_PREF_KEY, value: false);

  void feedbackTypeChanged(FeedbackType? value) =>
      emit(state.copyWith(feedbackType: value!));

  void supportMessageChanged(String value) =>
      emit(state.copyWith(supportMessage: BasicTextField(value)));

  void contactSupport() async {
    toggleLoading(true);

    final response = await _utils.contactSupport(
      type: state.feedbackType,
      message: '${state.supportMessage.getOrEmpty}',
      images: state.supportImages.asList(),
    );

    emit(state.copyWith(status: some(response)));

    toggleLoading(false);
  }
}

mixin _ImagePickerMixin on Cubit<GlobalPreferenceState> {
  final ImagePicker _picker = ImagePicker();

  void pickImage(ImageSource source, [int? index]) async {
    File? file;

    var _result = await _picker.pickImage(source: source);

    if (_result == null)
      file = await _attemptFileRetrieval(_picker);
    else
      file = File(_result.path);

    if (file != null) {
      emit(state.copyWith(
        supportImages: index != null
            ? state.supportImages
                .mapIndexedNotNull((i, img) => i == index ? file! : img)
            : state.supportImages.plusElement(file),
      ));
    }
  }

  void removeImage([int? index]) {
    var _index = index ?? state.supportImages.size - 1;
    emit(state.copyWith(
      supportImages: state.supportImages
          .minusElement(state.supportImages.elementAt(_index)),
    ));
  }

  Future<File?> _attemptFileRetrieval(ImagePicker? picker) async {
    if (picker == null) return null;
    final _response = await _picker.retrieveLostData();
    if (!_response.isEmpty && _response.file != null)
      return File(_response.file!.path);
    return null;
  }
}
