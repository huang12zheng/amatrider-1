// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of verification_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerificationStateTearOff {
  const _$VerificationStateTearOff();

  _VerificationState call(
      {bool isLoading = false,
      bool validate = false,
      File? frontID,
      File? backID,
      DocumentMimeType? frontMimeType,
      DocumentMimeType? backMimeType,
      bool frontIsImage = false,
      bool backIsImage = false,
      required BasicTextField<String?> frontName,
      required BasicTextField<String?> backName,
      DocumentID? documentID,
      Country? selectedCountry,
      KtList<Country> countries = const KtList.empty(),
      Option<AppHttpResponse?> status = const None()}) {
    return _VerificationState(
      isLoading: isLoading,
      validate: validate,
      frontID: frontID,
      backID: backID,
      frontMimeType: frontMimeType,
      backMimeType: backMimeType,
      frontIsImage: frontIsImage,
      backIsImage: backIsImage,
      frontName: frontName,
      backName: backName,
      documentID: documentID,
      selectedCountry: selectedCountry,
      countries: countries,
      status: status,
    );
  }
}

/// @nodoc
const $VerificationState = _$VerificationStateTearOff();

/// @nodoc
mixin _$VerificationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  File? get frontID => throw _privateConstructorUsedError;
  File? get backID => throw _privateConstructorUsedError;
  DocumentMimeType? get frontMimeType => throw _privateConstructorUsedError;
  DocumentMimeType? get backMimeType => throw _privateConstructorUsedError;
  bool get frontIsImage => throw _privateConstructorUsedError;
  bool get backIsImage => throw _privateConstructorUsedError;
  BasicTextField<String?> get frontName => throw _privateConstructorUsedError;
  BasicTextField<String?> get backName => throw _privateConstructorUsedError;
  DocumentID? get documentID => throw _privateConstructorUsedError;
  Country? get selectedCountry => throw _privateConstructorUsedError;
  KtList<Country> get countries => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerificationStateCopyWith<VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      File? frontID,
      File? backID,
      DocumentMimeType? frontMimeType,
      DocumentMimeType? backMimeType,
      bool frontIsImage,
      bool backIsImage,
      BasicTextField<String?> frontName,
      BasicTextField<String?> backName,
      DocumentID? documentID,
      Country? selectedCountry,
      KtList<Country> countries,
      Option<AppHttpResponse?> status});

  $CountryCopyWith<$Res>? get selectedCountry;
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  final VerificationState _value;
  // ignore: unused_field
  final $Res Function(VerificationState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? frontID = freezed,
    Object? backID = freezed,
    Object? frontMimeType = freezed,
    Object? backMimeType = freezed,
    Object? frontIsImage = freezed,
    Object? backIsImage = freezed,
    Object? frontName = freezed,
    Object? backName = freezed,
    Object? documentID = freezed,
    Object? selectedCountry = freezed,
    Object? countries = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      frontID: frontID == freezed
          ? _value.frontID
          : frontID // ignore: cast_nullable_to_non_nullable
              as File?,
      backID: backID == freezed
          ? _value.backID
          : backID // ignore: cast_nullable_to_non_nullable
              as File?,
      frontMimeType: frontMimeType == freezed
          ? _value.frontMimeType
          : frontMimeType // ignore: cast_nullable_to_non_nullable
              as DocumentMimeType?,
      backMimeType: backMimeType == freezed
          ? _value.backMimeType
          : backMimeType // ignore: cast_nullable_to_non_nullable
              as DocumentMimeType?,
      frontIsImage: frontIsImage == freezed
          ? _value.frontIsImage
          : frontIsImage // ignore: cast_nullable_to_non_nullable
              as bool,
      backIsImage: backIsImage == freezed
          ? _value.backIsImage
          : backIsImage // ignore: cast_nullable_to_non_nullable
              as bool,
      frontName: frontName == freezed
          ? _value.frontName
          : frontName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      backName: backName == freezed
          ? _value.backName
          : backName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      documentID: documentID == freezed
          ? _value.documentID
          : documentID // ignore: cast_nullable_to_non_nullable
              as DocumentID?,
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
abstract class _$VerificationStateCopyWith<$Res>
    implements $VerificationStateCopyWith<$Res> {
  factory _$VerificationStateCopyWith(
          _VerificationState value, $Res Function(_VerificationState) then) =
      __$VerificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      File? frontID,
      File? backID,
      DocumentMimeType? frontMimeType,
      DocumentMimeType? backMimeType,
      bool frontIsImage,
      bool backIsImage,
      BasicTextField<String?> frontName,
      BasicTextField<String?> backName,
      DocumentID? documentID,
      Country? selectedCountry,
      KtList<Country> countries,
      Option<AppHttpResponse?> status});

  @override
  $CountryCopyWith<$Res>? get selectedCountry;
}

/// @nodoc
class __$VerificationStateCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res>
    implements _$VerificationStateCopyWith<$Res> {
  __$VerificationStateCopyWithImpl(
      _VerificationState _value, $Res Function(_VerificationState) _then)
      : super(_value, (v) => _then(v as _VerificationState));

  @override
  _VerificationState get _value => super._value as _VerificationState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? frontID = freezed,
    Object? backID = freezed,
    Object? frontMimeType = freezed,
    Object? backMimeType = freezed,
    Object? frontIsImage = freezed,
    Object? backIsImage = freezed,
    Object? frontName = freezed,
    Object? backName = freezed,
    Object? documentID = freezed,
    Object? selectedCountry = freezed,
    Object? countries = freezed,
    Object? status = freezed,
  }) {
    return _then(_VerificationState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      frontID: frontID == freezed
          ? _value.frontID
          : frontID // ignore: cast_nullable_to_non_nullable
              as File?,
      backID: backID == freezed
          ? _value.backID
          : backID // ignore: cast_nullable_to_non_nullable
              as File?,
      frontMimeType: frontMimeType == freezed
          ? _value.frontMimeType
          : frontMimeType // ignore: cast_nullable_to_non_nullable
              as DocumentMimeType?,
      backMimeType: backMimeType == freezed
          ? _value.backMimeType
          : backMimeType // ignore: cast_nullable_to_non_nullable
              as DocumentMimeType?,
      frontIsImage: frontIsImage == freezed
          ? _value.frontIsImage
          : frontIsImage // ignore: cast_nullable_to_non_nullable
              as bool,
      backIsImage: backIsImage == freezed
          ? _value.backIsImage
          : backIsImage // ignore: cast_nullable_to_non_nullable
              as bool,
      frontName: frontName == freezed
          ? _value.frontName
          : frontName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      backName: backName == freezed
          ? _value.backName
          : backName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      documentID: documentID == freezed
          ? _value.documentID
          : documentID // ignore: cast_nullable_to_non_nullable
              as DocumentID?,
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

class _$_VerificationState extends _VerificationState {
  const _$_VerificationState(
      {this.isLoading = false,
      this.validate = false,
      this.frontID,
      this.backID,
      this.frontMimeType,
      this.backMimeType,
      this.frontIsImage = false,
      this.backIsImage = false,
      required this.frontName,
      required this.backName,
      this.documentID,
      this.selectedCountry,
      this.countries = const KtList.empty(),
      this.status = const None()})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  final File? frontID;
  @override
  final File? backID;
  @override
  final DocumentMimeType? frontMimeType;
  @override
  final DocumentMimeType? backMimeType;
  @JsonKey(defaultValue: false)
  @override
  final bool frontIsImage;
  @JsonKey(defaultValue: false)
  @override
  final bool backIsImage;
  @override
  final BasicTextField<String?> frontName;
  @override
  final BasicTextField<String?> backName;
  @override
  final DocumentID? documentID;
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
    return 'VerificationState(isLoading: $isLoading, validate: $validate, frontID: $frontID, backID: $backID, frontMimeType: $frontMimeType, backMimeType: $backMimeType, frontIsImage: $frontIsImage, backIsImage: $backIsImage, frontName: $frontName, backName: $backName, documentID: $documentID, selectedCountry: $selectedCountry, countries: $countries, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerificationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.frontID, frontID) || other.frontID == frontID) &&
            (identical(other.backID, backID) || other.backID == backID) &&
            (identical(other.frontMimeType, frontMimeType) ||
                other.frontMimeType == frontMimeType) &&
            (identical(other.backMimeType, backMimeType) ||
                other.backMimeType == backMimeType) &&
            (identical(other.frontIsImage, frontIsImage) ||
                other.frontIsImage == frontIsImage) &&
            (identical(other.backIsImage, backIsImage) ||
                other.backIsImage == backIsImage) &&
            (identical(other.frontName, frontName) ||
                other.frontName == frontName) &&
            (identical(other.backName, backName) ||
                other.backName == backName) &&
            (identical(other.documentID, documentID) ||
                other.documentID == documentID) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            (identical(other.countries, countries) ||
                other.countries == countries) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      validate,
      frontID,
      backID,
      frontMimeType,
      backMimeType,
      frontIsImage,
      backIsImage,
      frontName,
      backName,
      documentID,
      selectedCountry,
      countries,
      status);

  @JsonKey(ignore: true)
  @override
  _$VerificationStateCopyWith<_VerificationState> get copyWith =>
      __$VerificationStateCopyWithImpl<_VerificationState>(this, _$identity);
}

abstract class _VerificationState extends VerificationState {
  const factory _VerificationState(
      {bool isLoading,
      bool validate,
      File? frontID,
      File? backID,
      DocumentMimeType? frontMimeType,
      DocumentMimeType? backMimeType,
      bool frontIsImage,
      bool backIsImage,
      required BasicTextField<String?> frontName,
      required BasicTextField<String?> backName,
      DocumentID? documentID,
      Country? selectedCountry,
      KtList<Country> countries,
      Option<AppHttpResponse?> status}) = _$_VerificationState;
  const _VerificationState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  File? get frontID;
  @override
  File? get backID;
  @override
  DocumentMimeType? get frontMimeType;
  @override
  DocumentMimeType? get backMimeType;
  @override
  bool get frontIsImage;
  @override
  bool get backIsImage;
  @override
  BasicTextField<String?> get frontName;
  @override
  BasicTextField<String?> get backName;
  @override
  DocumentID? get documentID;
  @override
  Country? get selectedCountry;
  @override
  KtList<Country> get countries;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$VerificationStateCopyWith<_VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
