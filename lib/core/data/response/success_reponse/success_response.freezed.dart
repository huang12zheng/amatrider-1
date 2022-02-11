// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'success_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuccessResponse _$SuccessResponseFromJson(Map<String, dynamic> json) {
  return _SuccessResponse.fromJson(json);
}

/// @nodoc
class _$SuccessResponseTearOff {
  const _$SuccessResponseTearOff();

  _SuccessResponse call(
      {@JsonKey(defaultValue: 'success') String? status,
      @JsonKey(defaultValue: '') required String message,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop = false}) {
    return _SuccessResponse(
      status: status,
      message: message,
      details: details,
      pop: pop,
    );
  }

  SuccessResponse fromJson(Map<String, Object?> json) {
    return SuccessResponse.fromJson(json);
  }
}

/// @nodoc
const $SuccessResponse = _$SuccessResponseTearOff();

/// @nodoc
mixin _$SuccessResponse {
  @JsonKey(defaultValue: 'success')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get pop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessResponseCopyWith<SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResponseCopyWith<$Res> {
  factory $SuccessResponseCopyWith(
          SuccessResponse value, $Res Function(SuccessResponse) then) =
      _$SuccessResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: 'success') String? status,
      @JsonKey(defaultValue: '') String message,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  _$SuccessResponseCopyWithImpl(this._value, this._then);

  final SuccessResponse _value;
  // ignore: unused_field
  final $Res Function(SuccessResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? pop = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
abstract class _$SuccessResponseCopyWith<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  factory _$SuccessResponseCopyWith(
          _SuccessResponse value, $Res Function(_SuccessResponse) then) =
      __$SuccessResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: 'success') String? status,
      @JsonKey(defaultValue: '') String message,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class __$SuccessResponseCopyWithImpl<$Res>
    extends _$SuccessResponseCopyWithImpl<$Res>
    implements _$SuccessResponseCopyWith<$Res> {
  __$SuccessResponseCopyWithImpl(
      _SuccessResponse _value, $Res Function(_SuccessResponse) _then)
      : super(_value, (v) => _then(v as _SuccessResponse));

  @override
  _SuccessResponse get _value => super._value as _SuccessResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? pop = freezed,
  }) {
    return _then(_SuccessResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuccessResponse extends _SuccessResponse {
  const _$_SuccessResponse(
      {@JsonKey(defaultValue: 'success') this.status,
      @JsonKey(defaultValue: '') required this.message,
      @JsonKey(ignore: true) this.details,
      @JsonKey(ignore: true) this.pop = false})
      : super._();

  factory _$_SuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SuccessResponseFromJson(json);

  @override
  @JsonKey(defaultValue: 'success')
  final String? status;
  @override
  @JsonKey(defaultValue: '')
  final String message;
  @override
  @JsonKey(ignore: true)
  final String? details;
  @override
  @JsonKey(ignore: true)
  final bool pop;

  @override
  String toString() {
    return 'SuccessResponse(status: $status, message: $message, details: $details, pop: $pop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.pop, pop));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(pop));

  @JsonKey(ignore: true)
  @override
  _$SuccessResponseCopyWith<_SuccessResponse> get copyWith =>
      __$SuccessResponseCopyWithImpl<_SuccessResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuccessResponseToJson(this);
  }
}

abstract class _SuccessResponse extends SuccessResponse {
  const factory _SuccessResponse(
      {@JsonKey(defaultValue: 'success') String? status,
      @JsonKey(defaultValue: '') required String message,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop}) = _$_SuccessResponse;
  const _SuccessResponse._() : super._();

  factory _SuccessResponse.fromJson(Map<String, dynamic> json) =
      _$_SuccessResponse.fromJson;

  @override
  @JsonKey(defaultValue: 'success')
  String? get status;
  @override
  @JsonKey(defaultValue: '')
  String get message;
  @override
  @JsonKey(ignore: true)
  String? get details;
  @override
  @JsonKey(ignore: true)
  bool get pop;
  @override
  @JsonKey(ignore: true)
  _$SuccessResponseCopyWith<_SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
