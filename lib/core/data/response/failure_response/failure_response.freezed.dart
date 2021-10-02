// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FailureResponse _$FailureResponseFromJson(Map<String, dynamic> json) {
  return _FailureResponse.fromJson(json);
}

/// @nodoc
class _$FailureResponseTearOff {
  const _$FailureResponseTearOff();

  _FailureResponse call(
      {@JsonKey(includeIfNull: false) int? code,
      @JsonKey(includeIfNull: false, defaultValue: 'error') String? status,
      @JsonKey(includeIfNull: false) String? error,
      @JsonKey(includeIfNull: false) ServerFieldErrors? errors,
      @JsonKey(includeIfNull: false, defaultValue: '') required String message,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop = true,
      @JsonKey(ignore: true) bool show = true}) {
    return _FailureResponse(
      code: code,
      status: status,
      error: error,
      errors: errors,
      message: message,
      details: details,
      pop: pop,
      show: show,
    );
  }

  FailureResponse fromJson(Map<String, Object> json) {
    return FailureResponse.fromJson(json);
  }
}

/// @nodoc
const $FailureResponse = _$FailureResponseTearOff();

/// @nodoc
mixin _$FailureResponse {
  @JsonKey(includeIfNull: false)
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: 'error')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  ServerFieldErrors? get errors => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get pop => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get show => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureResponseCopyWith<FailureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureResponseCopyWith<$Res> {
  factory $FailureResponseCopyWith(
          FailureResponse value, $Res Function(FailureResponse) then) =
      _$FailureResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) int? code,
      @JsonKey(includeIfNull: false, defaultValue: 'error') String? status,
      @JsonKey(includeIfNull: false) String? error,
      @JsonKey(includeIfNull: false) ServerFieldErrors? errors,
      @JsonKey(includeIfNull: false, defaultValue: '') String message,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop,
      @JsonKey(ignore: true) bool show});

  $ServerFieldErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$FailureResponseCopyWithImpl<$Res>
    implements $FailureResponseCopyWith<$Res> {
  _$FailureResponseCopyWithImpl(this._value, this._then);

  final FailureResponse _value;
  // ignore: unused_field
  final $Res Function(FailureResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? error = freezed,
    Object? errors = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? pop = freezed,
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ServerFieldErrors?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ServerFieldErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ServerFieldErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
abstract class _$FailureResponseCopyWith<$Res>
    implements $FailureResponseCopyWith<$Res> {
  factory _$FailureResponseCopyWith(
          _FailureResponse value, $Res Function(_FailureResponse) then) =
      __$FailureResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) int? code,
      @JsonKey(includeIfNull: false, defaultValue: 'error') String? status,
      @JsonKey(includeIfNull: false) String? error,
      @JsonKey(includeIfNull: false) ServerFieldErrors? errors,
      @JsonKey(includeIfNull: false, defaultValue: '') String message,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop,
      @JsonKey(ignore: true) bool show});

  @override
  $ServerFieldErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$FailureResponseCopyWithImpl<$Res>
    extends _$FailureResponseCopyWithImpl<$Res>
    implements _$FailureResponseCopyWith<$Res> {
  __$FailureResponseCopyWithImpl(
      _FailureResponse _value, $Res Function(_FailureResponse) _then)
      : super(_value, (v) => _then(v as _FailureResponse));

  @override
  _FailureResponse get _value => super._value as _FailureResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? error = freezed,
    Object? errors = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? pop = freezed,
    Object? show = freezed,
  }) {
    return _then(_FailureResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ServerFieldErrors?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FailureResponse extends _FailureResponse {
  const _$_FailureResponse(
      {@JsonKey(includeIfNull: false) this.code,
      @JsonKey(includeIfNull: false, defaultValue: 'error') this.status,
      @JsonKey(includeIfNull: false) this.error,
      @JsonKey(includeIfNull: false) this.errors,
      @JsonKey(includeIfNull: false, defaultValue: '') required this.message,
      @JsonKey(ignore: true) this.details,
      @JsonKey(ignore: true) this.pop = true,
      @JsonKey(ignore: true) this.show = true})
      : super._();

  factory _$_FailureResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FailureResponseFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? code;
  @override
  @JsonKey(includeIfNull: false, defaultValue: 'error')
  final String? status;
  @override
  @JsonKey(includeIfNull: false)
  final String? error;
  @override
  @JsonKey(includeIfNull: false)
  final ServerFieldErrors? errors;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String message;
  @override
  @JsonKey(ignore: true)
  final String? details;
  @override
  @JsonKey(ignore: true)
  final bool pop;
  @override
  @JsonKey(ignore: true)
  final bool show;

  @override
  String toString() {
    return 'FailureResponse(code: $code, status: $status, error: $error, errors: $errors, message: $message, details: $details, pop: $pop, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.pop, pop) ||
                const DeepCollectionEquality().equals(other.pop, pop)) &&
            (identical(other.show, show) ||
                const DeepCollectionEquality().equals(other.show, show)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(errors) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(pop) ^
      const DeepCollectionEquality().hash(show);

  @JsonKey(ignore: true)
  @override
  _$FailureResponseCopyWith<_FailureResponse> get copyWith =>
      __$FailureResponseCopyWithImpl<_FailureResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FailureResponseToJson(this);
  }
}

abstract class _FailureResponse extends FailureResponse {
  const factory _FailureResponse(
      {@JsonKey(includeIfNull: false) int? code,
      @JsonKey(includeIfNull: false, defaultValue: 'error') String? status,
      @JsonKey(includeIfNull: false) String? error,
      @JsonKey(includeIfNull: false) ServerFieldErrors? errors,
      @JsonKey(includeIfNull: false, defaultValue: '') required String message,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop,
      @JsonKey(ignore: true) bool show}) = _$_FailureResponse;
  const _FailureResponse._() : super._();

  factory _FailureResponse.fromJson(Map<String, dynamic> json) =
      _$_FailureResponse.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: 'error')
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  ServerFieldErrors? get errors => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  bool get pop => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailureResponseCopyWith<_FailureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
