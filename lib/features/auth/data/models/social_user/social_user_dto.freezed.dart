// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of social_user_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialUserDTO _$SocialUserDTOFromJson(Map<String, dynamic> json) {
  return _SocialUserDTO.fromJson(json);
}

/// @nodoc
class _$SocialUserDTOTearOff {
  const _$SocialUserDTOTearOff();

  _SocialUserDTO call(
      {String? status,
      @IntegerSerializer() int? code,
      String? message,
      RiderDTO? data,
      RiderDTO? user}) {
    return _SocialUserDTO(
      status: status,
      code: code,
      message: message,
      data: data,
      user: user,
    );
  }

  SocialUserDTO fromJson(Map<String, Object?> json) {
    return SocialUserDTO.fromJson(json);
  }
}

/// @nodoc
const $SocialUserDTO = _$SocialUserDTOTearOff();

/// @nodoc
mixin _$SocialUserDTO {
  String? get status => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  RiderDTO? get data => throw _privateConstructorUsedError;
  RiderDTO? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialUserDTOCopyWith<SocialUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialUserDTOCopyWith<$Res> {
  factory $SocialUserDTOCopyWith(
          SocialUserDTO value, $Res Function(SocialUserDTO) then) =
      _$SocialUserDTOCopyWithImpl<$Res>;
  $Res call(
      {String? status,
      @IntegerSerializer() int? code,
      String? message,
      RiderDTO? data,
      RiderDTO? user});

  $RiderDTOCopyWith<$Res>? get data;
  $RiderDTOCopyWith<$Res>? get user;
}

/// @nodoc
class _$SocialUserDTOCopyWithImpl<$Res>
    implements $SocialUserDTOCopyWith<$Res> {
  _$SocialUserDTOCopyWithImpl(this._value, this._then);

  final SocialUserDTO _value;
  // ignore: unused_field
  final $Res Function(SocialUserDTO) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RiderDTO?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RiderDTO?,
    ));
  }

  @override
  $RiderDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RiderDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $RiderDTOCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $RiderDTOCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$SocialUserDTOCopyWith<$Res>
    implements $SocialUserDTOCopyWith<$Res> {
  factory _$SocialUserDTOCopyWith(
          _SocialUserDTO value, $Res Function(_SocialUserDTO) then) =
      __$SocialUserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      @IntegerSerializer() int? code,
      String? message,
      RiderDTO? data,
      RiderDTO? user});

  @override
  $RiderDTOCopyWith<$Res>? get data;
  @override
  $RiderDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$SocialUserDTOCopyWithImpl<$Res>
    extends _$SocialUserDTOCopyWithImpl<$Res>
    implements _$SocialUserDTOCopyWith<$Res> {
  __$SocialUserDTOCopyWithImpl(
      _SocialUserDTO _value, $Res Function(_SocialUserDTO) _then)
      : super(_value, (v) => _then(v as _SocialUserDTO));

  @override
  _SocialUserDTO get _value => super._value as _SocialUserDTO;

  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? user = freezed,
  }) {
    return _then(_SocialUserDTO(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RiderDTO?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RiderDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialUserDTO extends _SocialUserDTO {
  const _$_SocialUserDTO(
      {this.status,
      @IntegerSerializer() this.code,
      this.message,
      this.data,
      this.user})
      : super._();

  factory _$_SocialUserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SocialUserDTOFromJson(json);

  @override
  final String? status;
  @override
  @IntegerSerializer()
  final int? code;
  @override
  final String? message;
  @override
  final RiderDTO? data;
  @override
  final RiderDTO? user;

  @override
  String toString() {
    return 'SocialUserDTO(status: $status, code: $code, message: $message, data: $data, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialUserDTO &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, code, message, data, user);

  @JsonKey(ignore: true)
  @override
  _$SocialUserDTOCopyWith<_SocialUserDTO> get copyWith =>
      __$SocialUserDTOCopyWithImpl<_SocialUserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialUserDTOToJson(this);
  }
}

abstract class _SocialUserDTO extends SocialUserDTO {
  const factory _SocialUserDTO(
      {String? status,
      @IntegerSerializer() int? code,
      String? message,
      RiderDTO? data,
      RiderDTO? user}) = _$_SocialUserDTO;
  const _SocialUserDTO._() : super._();

  factory _SocialUserDTO.fromJson(Map<String, dynamic> json) =
      _$_SocialUserDTO.fromJson;

  @override
  String? get status;
  @override
  @IntegerSerializer()
  int? get code;
  @override
  String? get message;
  @override
  RiderDTO? get data;
  @override
  RiderDTO? get user;
  @override
  @JsonKey(ignore: true)
  _$SocialUserDTOCopyWith<_SocialUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
