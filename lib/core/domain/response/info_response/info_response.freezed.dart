// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of info_response.dart;

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
      {String? status,
      String? details,
      InfoType type = InfoType.any,
      required String message,
      @JsonKey(ignore: true) bool pop = false}) {
    return _InfoResponse(
      status: status,
      details: details,
      type: type,
      message: message,
      pop: pop,
    );
  }
}

/// @nodoc
const $InfoResponse = _$InfoResponseTearOff();

/// @nodoc
mixin _$InfoResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  InfoType get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get pop => throw _privateConstructorUsedError;

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
      {String? status,
      String? details,
      InfoType type,
      String message,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class _$InfoResponseCopyWithImpl<$Res> implements $InfoResponseCopyWith<$Res> {
  _$InfoResponseCopyWithImpl(this._value, this._then);

  final InfoResponse _value;
  // ignore: unused_field
  final $Res Function(InfoResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? details = freezed,
    Object? type = freezed,
    Object? message = freezed,
    Object? pop = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InfoType,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
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
      {String? status,
      String? details,
      InfoType type,
      String message,
      @JsonKey(ignore: true) bool pop});
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
    Object? status = freezed,
    Object? details = freezed,
    Object? type = freezed,
    Object? message = freezed,
    Object? pop = freezed,
  }) {
    return _then(_InfoResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InfoType,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InfoResponse extends _InfoResponse {
  const _$_InfoResponse(
      {this.status,
      this.details,
      this.type = InfoType.any,
      required this.message,
      @JsonKey(ignore: true) this.pop = false})
      : super._();

  @override
  final String? status;
  @override
  final String? details;
  @JsonKey()
  @override
  final InfoType type;
  @override
  final String message;
  @override
  @JsonKey(ignore: true)
  final bool pop;

  @override
  String toString() {
    return 'InfoResponse(status: $status, details: $details, type: $type, message: $message, pop: $pop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfoResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.pop, pop));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(pop));

  @JsonKey(ignore: true)
  @override
  _$InfoResponseCopyWith<_InfoResponse> get copyWith =>
      __$InfoResponseCopyWithImpl<_InfoResponse>(this, _$identity);
}

abstract class _InfoResponse extends InfoResponse {
  const factory _InfoResponse(
      {String? status,
      String? details,
      InfoType type,
      required String message,
      @JsonKey(ignore: true) bool pop}) = _$_InfoResponse;
  const _InfoResponse._() : super._();

  @override
  String? get status;
  @override
  String? get details;
  @override
  InfoType get type;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  bool get pop;
  @override
  @JsonKey(ignore: true)
  _$InfoResponseCopyWith<_InfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
