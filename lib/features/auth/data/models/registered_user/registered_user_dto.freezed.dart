// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of registered_user_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisteredUserDTO _$RegisteredUserDTOFromJson(Map<String, dynamic> json) {
  return _RegisteredUserDTO.fromJson(json);
}

/// @nodoc
class _$RegisteredUserDTOTearOff {
  const _$RegisteredUserDTOTearOff();

  _RegisteredUserDTO call(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) UserDTO? data,
      @JsonKey(includeIfNull: false) UserDTO? user}) {
    return _RegisteredUserDTO(
      status: status,
      data: data,
      user: user,
    );
  }

  RegisteredUserDTO fromJson(Map<String, Object?> json) {
    return RegisteredUserDTO.fromJson(json);
  }
}

/// @nodoc
const $RegisteredUserDTO = _$RegisteredUserDTOTearOff();

/// @nodoc
mixin _$RegisteredUserDTO {
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  UserDTO? get data => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  UserDTO? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisteredUserDTOCopyWith<RegisteredUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisteredUserDTOCopyWith<$Res> {
  factory $RegisteredUserDTOCopyWith(
          RegisteredUserDTO value, $Res Function(RegisteredUserDTO) then) =
      _$RegisteredUserDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) UserDTO? data,
      @JsonKey(includeIfNull: false) UserDTO? user});

  $UserDTOCopyWith<$Res>? get data;
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class _$RegisteredUserDTOCopyWithImpl<$Res>
    implements $RegisteredUserDTOCopyWith<$Res> {
  _$RegisteredUserDTOCopyWithImpl(this._value, this._then);

  final RegisteredUserDTO _value;
  // ignore: unused_field
  final $Res Function(RegisteredUserDTO) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
    ));
  }

  @override
  $UserDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $UserDTOCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$RegisteredUserDTOCopyWith<$Res>
    implements $RegisteredUserDTOCopyWith<$Res> {
  factory _$RegisteredUserDTOCopyWith(
          _RegisteredUserDTO value, $Res Function(_RegisteredUserDTO) then) =
      __$RegisteredUserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) UserDTO? data,
      @JsonKey(includeIfNull: false) UserDTO? user});

  @override
  $UserDTOCopyWith<$Res>? get data;
  @override
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$RegisteredUserDTOCopyWithImpl<$Res>
    extends _$RegisteredUserDTOCopyWithImpl<$Res>
    implements _$RegisteredUserDTOCopyWith<$Res> {
  __$RegisteredUserDTOCopyWithImpl(
      _RegisteredUserDTO _value, $Res Function(_RegisteredUserDTO) _then)
      : super(_value, (v) => _then(v as _RegisteredUserDTO));

  @override
  _RegisteredUserDTO get _value => super._value as _RegisteredUserDTO;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? user = freezed,
  }) {
    return _then(_RegisteredUserDTO(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisteredUserDTO extends _RegisteredUserDTO {
  const _$_RegisteredUserDTO(
      {@JsonKey(includeIfNull: false) this.status,
      @JsonKey(includeIfNull: false) this.data,
      @JsonKey(includeIfNull: false) this.user})
      : super._();

  factory _$_RegisteredUserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RegisteredUserDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? status;
  @override
  @JsonKey(includeIfNull: false)
  final UserDTO? data;
  @override
  @JsonKey(includeIfNull: false)
  final UserDTO? user;

  @override
  String toString() {
    return 'RegisteredUserDTO(status: $status, data: $data, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisteredUserDTO &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data, user);

  @JsonKey(ignore: true)
  @override
  _$RegisteredUserDTOCopyWith<_RegisteredUserDTO> get copyWith =>
      __$RegisteredUserDTOCopyWithImpl<_RegisteredUserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisteredUserDTOToJson(this);
  }
}

abstract class _RegisteredUserDTO extends RegisteredUserDTO {
  const factory _RegisteredUserDTO(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) UserDTO? data,
      @JsonKey(includeIfNull: false) UserDTO? user}) = _$_RegisteredUserDTO;
  const _RegisteredUserDTO._() : super._();

  factory _RegisteredUserDTO.fromJson(Map<String, dynamic> json) =
      _$_RegisteredUserDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get status;
  @override
  @JsonKey(includeIfNull: false)
  UserDTO? get data;
  @override
  @JsonKey(includeIfNull: false)
  UserDTO? get user;
  @override
  @JsonKey(ignore: true)
  _$RegisteredUserDTOCopyWith<_RegisteredUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
