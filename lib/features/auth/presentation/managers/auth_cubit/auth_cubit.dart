library auth_cubit.dart;

import 'dart:async';
import 'dart:io';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
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
import 'package:password_strength/password_strength.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> with BaseCubit<AuthState>, _ImagePickerMixin {
  final AuthFacade _auth;
  final UtilitiesRepository _utils;
  final PreferenceRepository _preferences;
  Rider? _temp;

  AuthCubit(
    this._auth,
    this._utils,
    this._preferences,
  ) : super(AuthState.initial());

  @override
  Future<void> close() {
    // state.phoneTextController.dispose();
    return super.close();
  }

  Future<Phone?> _parsePhoneNumber(String? phone) async {
    try {
      final _phoneNumberData = await phone?.let((it) async => await PhoneNumber.getRegionInfoFromPhoneNumber(it));

      _phoneNumberData?.let((it) => countryChanged(CountryCode(code: it.isoCode, dialCode: it.dialCode), onlyCountry: true));

      return _phoneNumberData?.let((it) => Phone(it.phoneNumber, country: _mapCountry(null, it)));
    } catch (e, tr) {
      await App.report(exception: e, stack: tr);
      return null;
    }
  }

  void init({bool loader = false}) async {
    if (loader) toggleLoading(true, none());

    // Retrieve stored / cached user data
    final _cached = await _preferences.getString(Const.kPhoneNumberPrefKey);

    Rider? _rider = state.rider;

    Phone? _phoneNumber;

    if (_cached != null) {
      _phoneNumber = await _parsePhoneNumber(_cached);
    } else {
      _rider = (await _auth.rider).getOrElse(() => state.rider);
      _phoneNumber = await _parsePhoneNumber(_rider?.phone.getOrNull);
    }

    _rider = _rider?.copyWith(phone: _phoneNumber ?? _rider.phone.ensure((p0) => (p0 as Phone), orElse: (_) => state.rider.phone));

    _temp = _rider;

    emit(state.copyWith(
      rider: _rider!,
      phoneTextController: state.phoneTextController..text = _phoneNumber?.noDialCode?.getOrNull ?? '',
    ));

    if (loader) toggleLoading(false);
  }

  void initSocials() async {
    toggleLoading(true, none());

    final _value = await _auth.rider;

    _value.fold(
      () => null,
      (user) {
        // full name
        final fullName = user?.firstName.getOrNull?.split(' ');
        // first name
        final firstName = fullName != null && fullName.isNotEmpty ? DisplayName(fullName[0]) : user?.firstName;
        final lastName = fullName != null && fullName.length > 1 ? DisplayName(fullName[1]) : user?.lastName;

        if (!isClosed)
          emit(state.copyWith(
            rider: user?.copyWith(firstName: firstName!, lastName: lastName!) ?? state.rider,
          ));
      },
    );

    if (!isClosed) toggleLoading(false);
  }

  bool get isDirty => _temp != null && _temp != state.rider;

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
        status: status ?? state.status,
      ));

  void toggleOldPasswordVisibility() => emit(state.copyWith(isOldPasswordHidden: !state.isOldPasswordHidden));

  void togglePasswordVisibility() => emit(state.copyWith(isPasswordHidden: !state.isPasswordHidden));

  void firstNameChanged(String value) => emit(state.copyWith.rider.call(firstName: DisplayName(value.trim())));

  void lastNameChanged(String value) => emit(state.copyWith.rider.call(lastName: DisplayName(value.trim())));

  void emailChanged(String value) => emit(state.copyWith.rider.call(email: EmailAddress(value.trim())));

  void oldPasswordChanged(String value) => emit(state.copyWith(oldPassword: Password(value)));

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

    var phoneNumber = value;

    try {
      if (value.length > 2) {
        var number = await PhoneNumber.getRegionInfoFromPhoneNumber(value, country?.code ?? '');
        var _parsed = await PhoneNumber.getParsableNumber(number);
        if (_parsed.isNotEmpty) phoneNumber = _parsed;
      }
    } catch (e, tr) {
      await App.report(exception: e, stack: tr);
    }

    emit(state.copyWith(
      rider: state.rider.copyWith(phone: Phone(value.trim(), country: _mapCountry())),
      phoneTextController: state.phoneTextController
        ..text = phoneNumber
        ..value = TextEditingValue(
          text: phoneNumber,
          selection: TextSelection.fromPosition(TextPosition(offset: phoneNumber.length)),
        ),
    ));
  }

  Country _mapCountry([CountryCode? country, PhoneNumber? phone]) => Country(
        dialCode: BasicTextField((country ?? state.selectedCountry)?.dialCode ?? (phone?.dialCode != null ? '+${phone?.dialCode}' : null)),
        iso: BasicTextField((country ?? state.selectedCountry)?.code ?? phone?.isoCode),
        name: BasicTextField((country ?? state.selectedCountry)?.name),
      );

  void countryChanged(CountryCode? country, {bool onlyCountry = false}) {
    if (onlyCountry) {
      emit(state.copyWith(selectedCountry: country));
      return;
    }

    phoneNumberChanged(state.phoneTextController.text);

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

  void otpCodeChanged(String value) => emit(state.copyWith(code: OTPCode(value, AuthState.OTP_CODE_LENGTH)));

  void bankNameChanged(String value) => emit(state.copyWith.bankAccount.call(bank: BasicTextField(value.trim())));

  void accountNameChanged(String value) => emit(state.copyWith.bankAccount.call(accountName: BasicTextField(value.trim())));

  void accountNumberChanged(String value) => emit(state.copyWith.bankAccount.call(accountNumber: BasicTextField(value.trim())));

  void sortCodeChanged(String value) => emit(state.copyWith.bankAccount.call(sortCode: BasicTextField(value.trim(), validate: false)));

  void createAccount() async {
    toggleLoading(true, none());

    AppHttpResponse? result;

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
      emit(state.copyWith(status: optionOf(result)));
    }

    toggleLoading(false);
  }

  void login() async {
    toggleLoading(true, none());

    AppHttpResponse? result;

    env.flavor.fold(
      dev: () {
        if (state.rider.login.isSome()) {
          emailChanged('brendan.degea@forx.anonaddy.com');
          passwordChanged('password');
        }
      },
      prod: () => null,
    );

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.login.isNone()) {
      // Attempt Authentication
      result = await _auth.login(
        email: state.rider.email,
        password: state.rider.password,
      );

      emit(state.copyWith(
        status: optionOf(result.copyWith(
          response: result.response.maybeMap(
            success: (s) => s.copyWith(pop: true),
            orElse: () => result!.response,
          ),
        )),
      ));
    }

    toggleLoading(false);
  }

  Future<void> verifyPhone() async {
    toggleLoading(true, none());

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.phone.isValid && state.code.isValid) {
      result = await _auth.verifyPhoneNumber(
        phone: state.rider.phone.formatted!,
        token: state.code,
      );

      await result.response.maybeMap(
        orElse: () async => null,
        success: (s) async => await _preferences.remove(Const.kPhoneNumberPrefKey),
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

    toggleLoading(false);
  }

  Future<bool> forgotPassword([bool pop = true]) async {
    toggleLoading(true, none());

    AppHttpResponse? result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.phone.isValid) {
      final phone = state.rider.phone.formatted?.getOrNull != null ? state.rider.phone.formatted! : state.rider.phone;

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

    toggleLoading(false);

    return result?.response.map(
          info: (_) => false,
          error: (_) => false,
          success: (_) => true,
        ) ??
        false;
  }

  void resetPassword() async {
    toggleLoading(true, none());

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
        success: (s) async => await _preferences.remove(Const.kPhoneNumberPrefKey),
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

    toggleLoading(false);
  }

  void updateProfile() async {
    toggleLoading(true, none());

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

    toggleLoading(false);
  }

  Future<void> sendPhoneUpdateOTP([bool shouldPop = true]) async {
    toggleLoading(true, none());

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

    toggleLoading(false);
  }

  void sleep() async {
    toggleLoading();
    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    await _auth.sleep();

    toggleLoading();
  }

  Future<void> googleAuth([bool notify = false]) async {
    emit(state.copyWith(isGoogleAuthLoading: true, status: none()));

    var result = await _auth.googleAuthentication(notify);

    emit(state.copyWith(status: result));
    emit(state.copyWith(isGoogleAuthLoading: false));
  }

  Future<void> appleAuth([bool notify = false]) async {
    emit(state.copyWith(isAppleAuthLoading: true, status: none()));

    var result = await _auth.appleAuthentication(notify);

    emit(state.copyWith(status: result));
    emit(state.copyWith(isAppleAuthLoading: false));
  }

  void updateSocialsProfile() async {
    toggleLoading(true, none());

    Option<AppHttpResponse?> result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.rider.socials.isNone()) {
      result = await _auth.updateSocialsProfile(
        firstName: state.rider.firstName,
        lastName: state.rider.lastName,
        email: state.rider.email,
        phone: state.rider.phone.formatted,
      );

      emit(state.copyWith(status: result));

      await _auth.sink();
    }

    toggleLoading(false);
  }

  void updatePassword() async {
    toggleLoading(true, none());

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.oldPassword.isValid && state.rider.password.isValid && state.confirmPassword.isValid && state.passwordMatches) {
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

    toggleLoading(false);
  }

  void getBankAccount() async {
    toggleLoading(true, none());

    final result = await _utils.bankAccount();

    result.fold(
      (failure) => emit(state.copyWith(status: some(failure))),
      (account) => emit(state.copyWith(
        bankAccount: account ?? state.bankAccount,
      )),
    );

    toggleLoading(false);
  }

  void addBankAccount() async {
    toggleLoading(true, none());

    // Enable form validation
    emit(state.copyWith(validate: true));

    if (state.bankAccount.failure.isNone()) {
      final result = await _utils.storeBankAccount(state.bankAccount);

      emit(state.copyWith(validate: false));

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
    toggleLoading(true, none());

    final result = await _auth.toggleRiderAvailability(availability);

    await result.fold(
      (f) async => emit(state.copyWith(status: some(f))),
      (rider) async {
        final value = rider.availability == RiderAvailability.available;

        emit(state.copyWith(
          status: some(AppHttpResponse.successful(
            'Toggled ${value ? 'On' : 'Off'}',
          ).response.mapOrNull(success: (s) => AppHttpResponse(s))),
        ));
      },
    );

    toggleLoading(false);
  }

  Future<void> deleteAccount() async {
    toggleLoading(true, none());

    final result = await _auth.deleteAccount();

    emit(state.copyWith(status: some(result)));

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
    if (!_response.isEmpty && _response.file != null) return File(_response.file!.path);
    return null;
  }
}
