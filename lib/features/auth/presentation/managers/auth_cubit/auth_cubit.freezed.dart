// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of auth_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required Password oldPassword,
      required Password confirmPassword,
      required OTPCode code,
      required Rider rider,
      File? selectedPhoto,
      required TextEditingController phoneTextController,
      double passwordStrength = 0.0,
      bool isLoading = false,
      bool validate = false,
      bool isEmailAuthLoading = false,
      bool isGoogleAuthLoading = false,
      bool isAppleAuthLoading = false,
      bool isOldPasswordHidden = true,
      bool isPasswordHidden = true,
      bool passwordMatches = false,
      CountryCode? selectedCountry,
      required BankAccount bankAccount,
      Option<AppHttpResponse?> status = const None()}) {
    return _AuthState(
      oldPassword: oldPassword,
      confirmPassword: confirmPassword,
      code: code,
      rider: rider,
      selectedPhoto: selectedPhoto,
      phoneTextController: phoneTextController,
      passwordStrength: passwordStrength,
      isLoading: isLoading,
      validate: validate,
      isEmailAuthLoading: isEmailAuthLoading,
      isGoogleAuthLoading: isGoogleAuthLoading,
      isAppleAuthLoading: isAppleAuthLoading,
      isOldPasswordHidden: isOldPasswordHidden,
      isPasswordHidden: isPasswordHidden,
      passwordMatches: passwordMatches,
      selectedCountry: selectedCountry,
      bankAccount: bankAccount,
      status: status,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  Password get oldPassword => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  OTPCode get code => throw _privateConstructorUsedError;
  Rider get rider => throw _privateConstructorUsedError;
  File? get selectedPhoto => throw _privateConstructorUsedError;
  TextEditingController get phoneTextController =>
      throw _privateConstructorUsedError;
  double get passwordStrength => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isEmailAuthLoading => throw _privateConstructorUsedError;
  bool get isGoogleAuthLoading => throw _privateConstructorUsedError;
  bool get isAppleAuthLoading => throw _privateConstructorUsedError;
  bool get isOldPasswordHidden => throw _privateConstructorUsedError;
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  bool get passwordMatches => throw _privateConstructorUsedError;
  CountryCode? get selectedCountry => throw _privateConstructorUsedError;
  BankAccount get bankAccount => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {Password oldPassword,
      Password confirmPassword,
      OTPCode code,
      Rider rider,
      File? selectedPhoto,
      TextEditingController phoneTextController,
      double passwordStrength,
      bool isLoading,
      bool validate,
      bool isEmailAuthLoading,
      bool isGoogleAuthLoading,
      bool isAppleAuthLoading,
      bool isOldPasswordHidden,
      bool isPasswordHidden,
      bool passwordMatches,
      CountryCode? selectedCountry,
      BankAccount bankAccount,
      Option<AppHttpResponse?> status});

  $RiderCopyWith<$Res> get rider;
  $BankAccountCopyWith<$Res> get bankAccount;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? confirmPassword = freezed,
    Object? code = freezed,
    Object? rider = freezed,
    Object? selectedPhoto = freezed,
    Object? phoneTextController = freezed,
    Object? passwordStrength = freezed,
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? isEmailAuthLoading = freezed,
    Object? isGoogleAuthLoading = freezed,
    Object? isAppleAuthLoading = freezed,
    Object? isOldPasswordHidden = freezed,
    Object? isPasswordHidden = freezed,
    Object? passwordMatches = freezed,
    Object? selectedCountry = freezed,
    Object? bankAccount = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as Rider,
      selectedPhoto: selectedPhoto == freezed
          ? _value.selectedPhoto
          : selectedPhoto // ignore: cast_nullable_to_non_nullable
              as File?,
      phoneTextController: phoneTextController == freezed
          ? _value.phoneTextController
          : phoneTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordStrength: passwordStrength == freezed
          ? _value.passwordStrength
          : passwordStrength // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailAuthLoading: isEmailAuthLoading == freezed
          ? _value.isEmailAuthLoading
          : isEmailAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleAuthLoading: isGoogleAuthLoading == freezed
          ? _value.isGoogleAuthLoading
          : isGoogleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleAuthLoading: isAppleAuthLoading == freezed
          ? _value.isAppleAuthLoading
          : isAppleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldPasswordHidden: isOldPasswordHidden == freezed
          ? _value.isOldPasswordHidden
          : isOldPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordMatches: passwordMatches == freezed
          ? _value.passwordMatches
          : passwordMatches // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as CountryCode?,
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $RiderCopyWith<$Res> get rider {
    return $RiderCopyWith<$Res>(_value.rider, (value) {
      return _then(_value.copyWith(rider: value));
    });
  }

  @override
  $BankAccountCopyWith<$Res> get bankAccount {
    return $BankAccountCopyWith<$Res>(_value.bankAccount, (value) {
      return _then(_value.copyWith(bankAccount: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password oldPassword,
      Password confirmPassword,
      OTPCode code,
      Rider rider,
      File? selectedPhoto,
      TextEditingController phoneTextController,
      double passwordStrength,
      bool isLoading,
      bool validate,
      bool isEmailAuthLoading,
      bool isGoogleAuthLoading,
      bool isAppleAuthLoading,
      bool isOldPasswordHidden,
      bool isPasswordHidden,
      bool passwordMatches,
      CountryCode? selectedCountry,
      BankAccount bankAccount,
      Option<AppHttpResponse?> status});

  @override
  $RiderCopyWith<$Res> get rider;
  @override
  $BankAccountCopyWith<$Res> get bankAccount;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? confirmPassword = freezed,
    Object? code = freezed,
    Object? rider = freezed,
    Object? selectedPhoto = freezed,
    Object? phoneTextController = freezed,
    Object? passwordStrength = freezed,
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? isEmailAuthLoading = freezed,
    Object? isGoogleAuthLoading = freezed,
    Object? isAppleAuthLoading = freezed,
    Object? isOldPasswordHidden = freezed,
    Object? isPasswordHidden = freezed,
    Object? passwordMatches = freezed,
    Object? selectedCountry = freezed,
    Object? bankAccount = freezed,
    Object? status = freezed,
  }) {
    return _then(_AuthState(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as Rider,
      selectedPhoto: selectedPhoto == freezed
          ? _value.selectedPhoto
          : selectedPhoto // ignore: cast_nullable_to_non_nullable
              as File?,
      phoneTextController: phoneTextController == freezed
          ? _value.phoneTextController
          : phoneTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordStrength: passwordStrength == freezed
          ? _value.passwordStrength
          : passwordStrength // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailAuthLoading: isEmailAuthLoading == freezed
          ? _value.isEmailAuthLoading
          : isEmailAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleAuthLoading: isGoogleAuthLoading == freezed
          ? _value.isGoogleAuthLoading
          : isGoogleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleAuthLoading: isAppleAuthLoading == freezed
          ? _value.isAppleAuthLoading
          : isAppleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldPasswordHidden: isOldPasswordHidden == freezed
          ? _value.isOldPasswordHidden
          : isOldPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordMatches: passwordMatches == freezed
          ? _value.passwordMatches
          : passwordMatches // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as CountryCode?,
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {required this.oldPassword,
      required this.confirmPassword,
      required this.code,
      required this.rider,
      this.selectedPhoto,
      required this.phoneTextController,
      this.passwordStrength = 0.0,
      this.isLoading = false,
      this.validate = false,
      this.isEmailAuthLoading = false,
      this.isGoogleAuthLoading = false,
      this.isAppleAuthLoading = false,
      this.isOldPasswordHidden = true,
      this.isPasswordHidden = true,
      this.passwordMatches = false,
      this.selectedCountry,
      required this.bankAccount,
      this.status = const None()})
      : super._();

  @override
  final Password oldPassword;
  @override
  final Password confirmPassword;
  @override
  final OTPCode code;
  @override
  final Rider rider;
  @override
  final File? selectedPhoto;
  @override
  final TextEditingController phoneTextController;
  @JsonKey()
  @override
  final double passwordStrength;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool validate;
  @JsonKey()
  @override
  final bool isEmailAuthLoading;
  @JsonKey()
  @override
  final bool isGoogleAuthLoading;
  @JsonKey()
  @override
  final bool isAppleAuthLoading;
  @JsonKey()
  @override
  final bool isOldPasswordHidden;
  @JsonKey()
  @override
  final bool isPasswordHidden;
  @JsonKey()
  @override
  final bool passwordMatches;
  @override
  final CountryCode? selectedCountry;
  @override
  final BankAccount bankAccount;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'AuthState(oldPassword: $oldPassword, confirmPassword: $confirmPassword, code: $code, rider: $rider, selectedPhoto: $selectedPhoto, phoneTextController: $phoneTextController, passwordStrength: $passwordStrength, isLoading: $isLoading, validate: $validate, isEmailAuthLoading: $isEmailAuthLoading, isGoogleAuthLoading: $isGoogleAuthLoading, isAppleAuthLoading: $isAppleAuthLoading, isOldPasswordHidden: $isOldPasswordHidden, isPasswordHidden: $isPasswordHidden, passwordMatches: $passwordMatches, selectedCountry: $selectedCountry, bankAccount: $bankAccount, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.rider, rider) &&
            const DeepCollectionEquality()
                .equals(other.selectedPhoto, selectedPhoto) &&
            const DeepCollectionEquality()
                .equals(other.phoneTextController, phoneTextController) &&
            const DeepCollectionEquality()
                .equals(other.passwordStrength, passwordStrength) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality()
                .equals(other.isEmailAuthLoading, isEmailAuthLoading) &&
            const DeepCollectionEquality()
                .equals(other.isGoogleAuthLoading, isGoogleAuthLoading) &&
            const DeepCollectionEquality()
                .equals(other.isAppleAuthLoading, isAppleAuthLoading) &&
            const DeepCollectionEquality()
                .equals(other.isOldPasswordHidden, isOldPasswordHidden) &&
            const DeepCollectionEquality()
                .equals(other.isPasswordHidden, isPasswordHidden) &&
            const DeepCollectionEquality()
                .equals(other.passwordMatches, passwordMatches) &&
            const DeepCollectionEquality()
                .equals(other.selectedCountry, selectedCountry) &&
            const DeepCollectionEquality()
                .equals(other.bankAccount, bankAccount) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(rider),
      const DeepCollectionEquality().hash(selectedPhoto),
      const DeepCollectionEquality().hash(phoneTextController),
      const DeepCollectionEquality().hash(passwordStrength),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(validate),
      const DeepCollectionEquality().hash(isEmailAuthLoading),
      const DeepCollectionEquality().hash(isGoogleAuthLoading),
      const DeepCollectionEquality().hash(isAppleAuthLoading),
      const DeepCollectionEquality().hash(isOldPasswordHidden),
      const DeepCollectionEquality().hash(isPasswordHidden),
      const DeepCollectionEquality().hash(passwordMatches),
      const DeepCollectionEquality().hash(selectedCountry),
      const DeepCollectionEquality().hash(bankAccount),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required Password oldPassword,
      required Password confirmPassword,
      required OTPCode code,
      required Rider rider,
      File? selectedPhoto,
      required TextEditingController phoneTextController,
      double passwordStrength,
      bool isLoading,
      bool validate,
      bool isEmailAuthLoading,
      bool isGoogleAuthLoading,
      bool isAppleAuthLoading,
      bool isOldPasswordHidden,
      bool isPasswordHidden,
      bool passwordMatches,
      CountryCode? selectedCountry,
      required BankAccount bankAccount,
      Option<AppHttpResponse?> status}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  Password get oldPassword;
  @override
  Password get confirmPassword;
  @override
  OTPCode get code;
  @override
  Rider get rider;
  @override
  File? get selectedPhoto;
  @override
  TextEditingController get phoneTextController;
  @override
  double get passwordStrength;
  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  bool get isEmailAuthLoading;
  @override
  bool get isGoogleAuthLoading;
  @override
  bool get isAppleAuthLoading;
  @override
  bool get isOldPasswordHidden;
  @override
  bool get isPasswordHidden;
  @override
  bool get passwordMatches;
  @override
  CountryCode? get selectedCountry;
  @override
  BankAccount get bankAccount;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
