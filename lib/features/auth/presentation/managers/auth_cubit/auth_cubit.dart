library auth_cubit.dart;

import 'dart:io';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/settings/external/preference_repository.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:kt_dart/kt.dart' hide StandardKt;
import 'package:password_strength/password_strength.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState>
    with BaseCubit<AuthState>, _ImagePickerMixin {
  final AuthFacade _auth;
  final UtilitiesRepository _utils;
  final PreferenceRepository _preferences;

  AuthCubit(this._auth, this._preferences, this._utils)
      : super(AuthState.initial());

  @override
  Future<void> close() {
    // state.phoneTextController.dispose();
    return super.close();
  }

  void init({bool loader = false}) async {
    if (loader) toggleLoading();

    // Retrieve stored / cached user data
    final _user = await _auth.rider;

    final _phone = await _preferences.getString(Const.kPhoneNumberPrefKey);

    (_user.getOrElse(() => null) ?? state.rider)
        .let((it) => emit(state.copyWith(
              rider: it.copyWith(
                phone: _phone?.let(
                      (number) => Phone(number, country: _mapCountry()),
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

  void firstNameChanged(String value) =>
      emit(state.copyWith.rider.call(firstName: DisplayName(value.trim())));

  void lastNameChanged(String value) =>
      emit(state.copyWith.rider.call(lastName: DisplayName(value.trim())));

  void emailChanged(String value) =>
      emit(state.copyWith.rider.call(email: EmailAddress(value.trim())));

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

  void phoneNumberChanged(String value) async {
    final country = state.selectedCountry;

    try {
      if (value.length > 2) {
        var number = await PhoneNumber.getRegionInfoFromPhoneNumber(
            value, country?.code ?? '');

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
          ..text = value
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
        phone: Phone(value.trim(), country: _mapCountry()),
      ),
    ));
  }

  Country _mapCountry([CountryCode? country]) => Country(
        dialCode: BasicTextField((country ?? state.selectedCountry)?.dialCode),
        iso: BasicTextField((country ?? state.selectedCountry)?.code),
        name: BasicTextField((country ?? state.selectedCountry)?.name),
      );

  void countryChanged(CountryCode? country) {
    phoneNumberChanged('');

    emit(state.copyWith(
      selectedCountry: country,
      rider: state.rider.copyWith(
        phone: state.rider.phone.copyWith(
          state.rider.phone.getOrNull,
          country: _mapCountry(country),
        ),
      ),
    ));
  }

  void otpCodeChanged(String value) =>
      emit(state.copyWith(code: OTPCode(value, AuthState.OTP_CODE_LENGTH)));

  void bankNameChanged(String value) =>
      emit(state.copyWith.bankAccount.call(bank: BasicTextField(value.trim())));

  void accountNameChanged(String value) => emit(state.copyWith.bankAccount
      .call(accountName: BasicTextField(value.trim())));

  void accountNumberChanged(String value) => emit(state.copyWith.bankAccount
      .call(accountNumber: BasicTextField(value.trim())));

  void sortCodeChanged(String value) => emit(state.copyWith.bankAccount
      .call(sortCode: BasicTextField(value.trim(), validate: false)));

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

  void getBankAccount() async {
    toggleLoading(true);

    final result = await _utils.bankAccount();

    result.fold(
      (failure) => emit(state.copyWith(status: some(failure))),
      (account) => emit(state.copyWith(bankAccount: account)),
    );

    toggleLoading(false);
  }

  void addBankAccount() async {
    toggleLoading(true);

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.bankAccount.failure.isNone()) {
      final result = await _utils.storeBankAccount(state.bankAccount);

      result.fold(
        (failure) => emit(state.copyWith(status: some(failure))),
        (account) => emit(state.copyWith(
          bankAccount: account,
          status: some(AppHttpResponse.successful(
            'Operation was successful!',
          )),
        )),
      );
    }

    toggleLoading(false);
  }

  void toggleAvailability(RiderAvailability availability) async {
    toggleLoading(true);

    final result = await _auth.toggleRiderAvailability(availability);

    await result.fold(
      (f) async => emit(state.copyWith(status: some(f))),
      (rider) async {
        await _auth.update(optionOf(rider));
        final value = rider.availability == RiderAvailability.available;
        emit(state.copyWith(
          status: some(AppHttpResponse.successful(
            'Toggled ${value ? 'On' : 'Off'}',
          ).response.mapOrNull(
                success: (s) => AppHttpResponse(s.copyWith(
                  uuid: UniqueId<String>.v4().value,
                )),
              )),
        ));
      },
    );

    toggleLoading(false);
  }
}

mixin _ImagePickerMixin on Cubit<AuthState> {
  final ImagePicker _picker = ImagePicker();

  void pickImage(ImageSource source) async {
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
