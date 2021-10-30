// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
      bool isPasswordHidden = true,
      bool passwordMatches = false,
      Country? selectedCountry,
      KtList<Country> countries = const KtList.empty(),
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
      isPasswordHidden: isPasswordHidden,
      passwordMatches: passwordMatches,
      selectedCountry: selectedCountry,
      countries: countries,
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
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  bool get passwordMatches => throw _privateConstructorUsedError;
  Country? get selectedCountry => throw _privateConstructorUsedError;
  KtList<Country> get countries => throw _privateConstructorUsedError;
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
      bool isPasswordHidden,
      bool passwordMatches,
      Country? selectedCountry,
      KtList<Country> countries,
      Option<AppHttpResponse?> status});

  $RiderCopyWith<$Res> get rider;
  $CountryCopyWith<$Res>? get selectedCountry;
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
    Object? isPasswordHidden = freezed,
    Object? passwordMatches = freezed,
    Object? selectedCountry = freezed,
    Object? countries = freezed,
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
              as Country?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as KtList<Country>,
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
  $CountryCopyWith<$Res>? get selectedCountry {
    if (_value.selectedCountry == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.selectedCountry!, (value) {
      return _then(_value.copyWith(selectedCountry: value));
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
      bool isPasswordHidden,
      bool passwordMatches,
      Country? selectedCountry,
      KtList<Country> countries,
      Option<AppHttpResponse?> status});

  @override
  $RiderCopyWith<$Res> get rider;
  @override
  $CountryCopyWith<$Res>? get selectedCountry;
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
    Object? isPasswordHidden = freezed,
    Object? passwordMatches = freezed,
    Object? selectedCountry = freezed,
    Object? countries = freezed,
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
              as Country?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as KtList<Country>,
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
      this.isPasswordHidden = true,
      this.passwordMatches = false,
      this.selectedCountry,
      this.countries = const KtList.empty(),
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
  @JsonKey(defaultValue: 0.0)
  @override
  final double passwordStrength;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordHidden;
  @JsonKey(defaultValue: false)
  @override
  final bool passwordMatches;
  @override
  final Country? selectedCountry;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Country> countries;
  @JsonKey(defaultValue: const None())
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'AuthState(oldPassword: $oldPassword, confirmPassword: $confirmPassword, code: $code, rider: $rider, selectedPhoto: $selectedPhoto, phoneTextController: $phoneTextController, passwordStrength: $passwordStrength, isLoading: $isLoading, validate: $validate, isPasswordHidden: $isPasswordHidden, passwordMatches: $passwordMatches, selectedCountry: $selectedCountry, countries: $countries, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.rider, rider) || other.rider == rider) &&
            (identical(other.selectedPhoto, selectedPhoto) ||
                other.selectedPhoto == selectedPhoto) &&
            (identical(other.phoneTextController, phoneTextController) ||
                other.phoneTextController == phoneTextController) &&
            (identical(other.passwordStrength, passwordStrength) ||
                other.passwordStrength == passwordStrength) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.isPasswordHidden, isPasswordHidden) ||
                other.isPasswordHidden == isPasswordHidden) &&
            (identical(other.passwordMatches, passwordMatches) ||
                other.passwordMatches == passwordMatches) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            (identical(other.countries, countries) ||
                other.countries == countries) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      oldPassword,
      confirmPassword,
      code,
      rider,
      selectedPhoto,
      phoneTextController,
      passwordStrength,
      isLoading,
      validate,
      isPasswordHidden,
      passwordMatches,
      selectedCountry,
      countries,
      status);

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
      bool isPasswordHidden,
      bool passwordMatches,
      Country? selectedCountry,
      KtList<Country> countries,
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
  bool get isPasswordHidden;
  @override
  bool get passwordMatches;
  @override
  Country? get selectedCountry;
  @override
  KtList<Country> get countries;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
