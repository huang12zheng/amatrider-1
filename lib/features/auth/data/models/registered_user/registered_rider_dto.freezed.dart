// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of registered_rider_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisteredRiderDTO _$RegisteredRiderDTOFromJson(Map<String, dynamic> json) {
  return _RegisteredRiderDTO.fromJson(json);
}

/// @nodoc
class _$RegisteredRiderDTOTearOff {
  const _$RegisteredRiderDTOTearOff();

  _RegisteredRiderDTO call({String? status, RiderDTO? data, RiderDTO? user}) {
    return _RegisteredRiderDTO(
      status: status,
      data: data,
      user: user,
    );
  }

  RegisteredRiderDTO fromJson(Map<String, Object?> json) {
    return RegisteredRiderDTO.fromJson(json);
  }
}

/// @nodoc
const $RegisteredRiderDTO = _$RegisteredRiderDTOTearOff();

/// @nodoc
mixin _$RegisteredRiderDTO {
  String? get status => throw _privateConstructorUsedError;
  RiderDTO? get data => throw _privateConstructorUsedError;
  RiderDTO? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisteredRiderDTOCopyWith<RegisteredRiderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisteredRiderDTOCopyWith<$Res> {
  factory $RegisteredRiderDTOCopyWith(
          RegisteredRiderDTO value, $Res Function(RegisteredRiderDTO) then) =
      _$RegisteredRiderDTOCopyWithImpl<$Res>;
  $Res call({String? status, RiderDTO? data, RiderDTO? user});

  $RiderDTOCopyWith<$Res>? get data;
  $RiderDTOCopyWith<$Res>? get user;
}

/// @nodoc
class _$RegisteredRiderDTOCopyWithImpl<$Res>
    implements $RegisteredRiderDTOCopyWith<$Res> {
  _$RegisteredRiderDTOCopyWithImpl(this._value, this._then);

  final RegisteredRiderDTO _value;
  // ignore: unused_field
  final $Res Function(RegisteredRiderDTO) _then;

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
abstract class _$RegisteredRiderDTOCopyWith<$Res>
    implements $RegisteredRiderDTOCopyWith<$Res> {
  factory _$RegisteredRiderDTOCopyWith(
          _RegisteredRiderDTO value, $Res Function(_RegisteredRiderDTO) then) =
      __$RegisteredRiderDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? status, RiderDTO? data, RiderDTO? user});

  @override
  $RiderDTOCopyWith<$Res>? get data;
  @override
  $RiderDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$RegisteredRiderDTOCopyWithImpl<$Res>
    extends _$RegisteredRiderDTOCopyWithImpl<$Res>
    implements _$RegisteredRiderDTOCopyWith<$Res> {
  __$RegisteredRiderDTOCopyWithImpl(
      _RegisteredRiderDTO _value, $Res Function(_RegisteredRiderDTO) _then)
      : super(_value, (v) => _then(v as _RegisteredRiderDTO));

  @override
  _RegisteredRiderDTO get _value => super._value as _RegisteredRiderDTO;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? user = freezed,
  }) {
    return _then(_RegisteredRiderDTO(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$_RegisteredRiderDTO extends _RegisteredRiderDTO {
  const _$_RegisteredRiderDTO({this.status, this.data, this.user}) : super._();

  factory _$_RegisteredRiderDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RegisteredRiderDTOFromJson(json);

  @override
  final String? status;
  @override
  final RiderDTO? data;
  @override
  final RiderDTO? user;

  @override
  String toString() {
    return 'RegisteredRiderDTO(status: $status, data: $data, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisteredRiderDTO &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$RegisteredRiderDTOCopyWith<_RegisteredRiderDTO> get copyWith =>
      __$RegisteredRiderDTOCopyWithImpl<_RegisteredRiderDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisteredRiderDTOToJson(this);
  }
}

abstract class _RegisteredRiderDTO extends RegisteredRiderDTO {
  const factory _RegisteredRiderDTO(
      {String? status, RiderDTO? data, RiderDTO? user}) = _$_RegisteredRiderDTO;
  const _RegisteredRiderDTO._() : super._();

  factory _RegisteredRiderDTO.fromJson(Map<String, dynamic> json) =
      _$_RegisteredRiderDTO.fromJson;

  @override
  String? get status;
  @override
  RiderDTO? get data;
  @override
  RiderDTO? get user;
  @override
  @JsonKey(ignore: true)
  _$RegisteredRiderDTOCopyWith<_RegisteredRiderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
