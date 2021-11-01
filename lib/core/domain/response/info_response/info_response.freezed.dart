// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InfoResponseTearOff {
  const _$InfoResponseTearOff();

  _InfoResponse call(
      {required String? uuid,
      String? status,
      String? details,
      required String message,
      bool show = true}) {
    return _InfoResponse(
      uuid: uuid,
      status: status,
      details: details,
      message: message,
      show: show,
    );
  }
}

/// @nodoc
const $InfoResponse = _$InfoResponseTearOff();

/// @nodoc
mixin _$InfoResponse {
  String? get uuid => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoResponseCopyWith<InfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoResponseCopyWith<$Res> {
  factory $InfoResponseCopyWith(
          InfoResponse value, $Res Function(InfoResponse) then) =
      _$InfoResponseCopyWithImpl<$Res>;
  $Res call(
      {String? uuid,
      String? status,
      String? details,
      String message,
      bool show});
}

/// @nodoc
class _$InfoResponseCopyWithImpl<$Res> implements $InfoResponseCopyWith<$Res> {
  _$InfoResponseCopyWithImpl(this._value, this._then);

  final InfoResponse _value;
  // ignore: unused_field
  final $Res Function(InfoResponse) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? status = freezed,
    Object? details = freezed,
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InfoResponseCopyWith<$Res>
    implements $InfoResponseCopyWith<$Res> {
  factory _$InfoResponseCopyWith(
          _InfoResponse value, $Res Function(_InfoResponse) then) =
      __$InfoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uuid,
      String? status,
      String? details,
      String message,
      bool show});
}

/// @nodoc
class __$InfoResponseCopyWithImpl<$Res> extends _$InfoResponseCopyWithImpl<$Res>
    implements _$InfoResponseCopyWith<$Res> {
  __$InfoResponseCopyWithImpl(
      _InfoResponse _value, $Res Function(_InfoResponse) _then)
      : super(_value, (v) => _then(v as _InfoResponse));

  @override
  _InfoResponse get _value => super._value as _InfoResponse;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? status = freezed,
    Object? details = freezed,
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_InfoResponse(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InfoResponse extends _InfoResponse {
  const _$_InfoResponse(
      {required this.uuid,
      this.status,
      this.details,
      required this.message,
      this.show = true})
      : super._();

  @override
  final String? uuid;
  @override
  final String? status;
  @override
  final String? details;
  @override
  final String message;
  @JsonKey(defaultValue: true)
  @override
  final bool show;

  @override
  String toString() {
    return 'InfoResponse(uuid: $uuid, status: $status, details: $details, message: $message, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfoResponse &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, status, details, message, show);

  @JsonKey(ignore: true)
  @override
  _$InfoResponseCopyWith<_InfoResponse> get copyWith =>
      __$InfoResponseCopyWithImpl<_InfoResponse>(this, _$identity);
}

abstract class _InfoResponse extends InfoResponse {
  const factory _InfoResponse(
      {required String? uuid,
      String? status,
      String? details,
      required String message,
      bool show}) = _$_InfoResponse;
  const _InfoResponse._() : super._();

  @override
  String? get uuid;
  @override
  String? get status;
  @override
  String? get details;
  @override
  String get message;
  @override
  bool get show;
  @override
  @JsonKey(ignore: true)
  _$InfoResponseCopyWith<_InfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
