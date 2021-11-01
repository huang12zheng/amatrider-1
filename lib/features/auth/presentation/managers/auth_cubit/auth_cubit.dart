library auth_cubit.dart;

import 'dart:io';

import 'package:amatrider/core/data/models/country/dto/country_dto.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/data/sources/remote/utilities/utilities_remote.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/manager/settings/external/preference_repository.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart' hide StandardKt;
import 'package:password_strength/password_strength.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState>
    with BaseCubit<AuthState>, _ImagePickerMixin {
  final AuthFacade _auth;
  final UtilitiesRemote _utils;
  final PreferenceRepository _preferences;

  AuthCubit(this._auth, this._preferences, this._utils)
      : super(AuthState.initial());

  @override
  Future<void> close() {
    state.phoneTextController.dispose();
    return super.close();
  }

  void init({
    bool loader = false,
    bool countries = true,
    bool newController = false,
  }) async {
    if (loader) toggleLoading();

    // Retrieve stored / cached user data
    final _user = await _auth.rider;

    final _phone = await _preferences.getString(Const.kPhoneNumberPrefKey);

    if (countries) {
      // Retrieve countries
      await fetchCountries();

      await _phone?.let((it) async {
        try {
          var _n = await PhoneNumber.getRegionInfoFromPhoneNumber('$it');
          emit(state.copyWith(
            selectedCountry: state.countries.first(
              (it) => it.iso != null && it.iso!.compare(_n.isoCode),
            ),
          ));
        } catch (e) {
          print(e.toString());
        }
      });
    }

    (_user.getOrElse(() => null) ?? state.rider)
        .let((it) => emit(state.copyWith(
              rider: it.copyWith(
                phone: _phone?.let(
                      (number) => Phone(number, country: state.selectedCountry),
                    ) ??
                    it.phone.ensure((p0) => (p0 as Phone),
                        orElse: (_) => state.rider.phone),
              ),
            )));

    if (loader) toggleLoading();
  }

  void toggleLoading([bool? isLoading]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void togglePasswordVisibility() =>
      emit(state.copyWith(isPasswordHidden: !state.isPasswordHidden));

  void firstNameChanged(String value) => emit(state.copyWith(
      rider: state.rider.copyWith(firstName: DisplayName(value.trim()))));

  void lastNameChanged(String value) => emit(state.copyWith(
      rider: state.rider.copyWith(lastName: DisplayName(value.trim()))));

  void emailChanged(String value) => emit(state.copyWith(
      rider: state.rider.copyWith(email: EmailAddress(value.trim()))));

  void oldPasswordChanged(String value) =>
      emit(state.copyWith(oldPassword: Password(value)));

  void passwordChanged(String value) {
    var strength = estimatePasswordStrength(value);

    emit(state.copyWith(
      passwordStrength: strength,
      passwordMatches: state.confirmPassword.compare(value),
      rider: state.rider.copyWith(password: Password(value)),
    ));
  }

  void passwordConfirmationChanged(String value) {
    emit(state.copyWith(
      passwordMatches: state.rider.password.compare(value),
      confirmPassword: Password(value),
    ));
  }

  void phoneNumberChanged([String? value = '']) async {
    final country = state.selectedCountry;

    try {
      if (value!.length > 3) {
        var number = await PhoneNumber.getRegionInfoFromPhoneNumber(
            value, country?.iso?.getOrNull ?? '');

        var _parsed = await PhoneNumber.getParsableNumber(number);

        if (_parsed.isNotEmpty) {
          emit(state.copyWith(
            phoneTextController: state.phoneTextController
              ..text = _parsed
              ..value = TextEditingValue(
                text: _parsed,
                selection: TextSelection.fromPosition(
                  TextPosition(offset: _parsed.length),
                ),
              ),
          ));
        }
      }
    } catch (e) {
      emit(state.copyWith(
        phoneTextController: state.phoneTextController
          ..text = value!
          ..value = TextEditingValue(
            text: value,
            selection: TextSelection.fromPosition(
              TextPosition(offset: value.length),
            ),
          ),
      ));
    }

    emit(state.copyWith(
      rider: state.rider.copyWith(
        phone: Phone(value.trim(), country: country),
      ),
    ));
  }

  void countryChanged(Country? value) => emit(state.copyWith(
        selectedCountry: value,
        rider: state.rider.copyWith(
          phone: state.rider.phone.copyWith(
            state.rider.phone.getOrNull,
            country: value,
          ),
        ),
      ));

  void otpCodeChanged(String value) =>
      emit(state.copyWith(code: OTPCode(value, AuthState.OTP_CODE_LENGTH)));

  void createAccount() async {
    toggleLoading();

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.signup.isNone()) {
      // Attempt Authentication
      result = await _auth.createAccount(
        firstName: state.rider.firstName,
        lastName: state.rider.lastName,
        emailAddress: state.rider.email,
        password: state.rider.password,
        phone: state.rider.phone.formatted!,
      );

      // emit status
      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              orElse: () => result.response,
              success: (s) => s.copyWith(
                messageTxt: 'Welcome ${state.rider.fullName.getOrEmpty}!',
              ),
            ),
          ),
        ),
      ));
    }

    toggleLoading();
  }

  void login() async {
    toggleLoading();

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.login.isNone()) {
      // Attempt Authentication
      result = await _auth.login(
        email: state.rider.email,
        password: state.rider.password,
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: true),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading();
  }

  Future<void> resendPhoneOTP() async {
    toggleLoading();

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.phone.isValid) {
      result = await _auth.resendVerificationEmail(state.rider.phone);

      emit(state.copyWith(status: optionOf(result)));
    }

    toggleLoading();
  }

  Future<void> verifyPhone() async {
    toggleLoading();

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.code.isValid) {
      result = await _auth.verifyPhoneNumber(
        phone: state.rider.phone,
        token: state.code,
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: true),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading();
  }

  Future<bool> forgotPassword([bool pop = true]) async {
    toggleLoading();

    AppHttpResponse? result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.phone.isValid) {
      final phone = state.rider.phone.formatted?.getOrNull != null
          ? state.rider.phone.formatted!
          : state.rider.phone;

      result = await _auth.sendPasswordResetInstructions(phone);

      await result.response.maybeMap(
        orElse: () async => null,
        success: (s) async => await _preferences.setString(
          key: Const.kPhoneNumberPrefKey,
          value: phone.getOrEmpty!,
        ),
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: pop),
              orElse: () => result!.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading();

    return result?.response.map(
          error: (_) => false,
          success: (_) => true,
        ) ??
        false;
  }

  void resetPassword() async {
    toggleLoading();

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.phone.isValid &&
        state.rider.password.isValid &&
        state.code.isValid &&
        state.confirmPassword.isValid &&
        state.passwordMatches) {
      result = await _auth.confirmPasswordReset(
        code: state.code,
        phone: state.rider.phone,
        newPassword: state.rider.password,
        confirmation: state.confirmPassword,
      );

      await result.response.maybeMap(
        orElse: () async => null,
        success: (s) async =>
            await _preferences.remove(Const.kPhoneNumberPrefKey),
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: true),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading();
  }

  void updateProfile() async {
    toggleLoading();

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.profile.isNone()) {
      result = await _auth.updateProfile(
        firstName: state.rider.firstName,
        lastName: state.rider.lastName,
        email: state.rider.email,
        image: state.selectedPhoto,
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: true),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading();
  }

  Future<void> sendPhoneUpdateOTP([bool shouldPop = true]) async {
    toggleLoading();

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.phone.isValid) {
      result = await _auth.updatePhone(state.rider.phone.formatted!);

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: shouldPop),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading();
  }

  void confirmPhoneUpdate() async {
    toggleLoading();

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.phone.isValid && state.code.isValid) {
      result = await _auth.confirmUpdatePhone(
        phone: state.rider.phone.formatted!,
        code: state.code,
      );

      await result.response.maybeMap(
        orElse: () async => null,
        success: (s) async =>
            await _preferences.remove(Const.kPhoneNumberPrefKey),
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: true),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading();
  }

  void sleep() async {
    toggleLoading();
    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    await _auth.sleep();

    toggleLoading();
  }

  void updatePassword() async {
    toggleLoading();

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.oldPassword.isValid &&
        state.rider.password.isValid &&
        state.confirmPassword.isValid &&
        state.passwordMatches) {
      result = await _auth.updatePassword(
        current: state.oldPassword,
        newPassword: state.rider.password,
        confirmation: state.confirmPassword,
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: true),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading();
  }

  Future<void> fetchCountries() async {
    toggleLoading(true);

    final _conn = await connection();

    await _conn.fold(
      () async {
        final _countries = await _utils.countries();
        emit(
          state.copyWith(
            phoneTextController: TextEditingController(),
            countries: _countries.domain.sorted(),
            selectedCountry: _countries
                .firstWhere((it) =>
                    it.iso3 != null &&
                    it.iso3!.caseInsensitiveContains(Country.turkeyISO3))
                .domain,
          ),
        );
      },
      (response) async => emit(state.copyWith(status: some(response))),
    );

    toggleLoading(false);
  }
}

mixin _ImagePickerMixin on Cubit<AuthState> {
  final ImagePicker _picker = ImagePicker();

  void pickImage(ImageSource source) async {
    File? file;

    var _result = await _picker.pickImage(source: source);

    if (_result == null)
      file = await _attemptFileRetrieval(_picker);
    else
      file = File(_result.path);

    if (file != null) emit(state.copyWith(selectedPhoto: file));
  }

  Future<File?> _attemptFileRetrieval(ImagePicker? picker) async {
    if (picker == null) return null;
    final _response = await _picker.retrieveLostData();
    if (!_response.isEmpty && _response.file != null)
      return File(_response.file!.path);
    return null;
  }
}
