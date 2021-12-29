// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of sender_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SenderDTO _$SenderDTOFromJson(Map<String, dynamic> json) {
  return _SenderDTO.fromJson(json);
}

/// @nodoc
class _$SenderDTOTearOff {
  const _$SenderDTOTearOff();

  _SenderDTO call(
      {String? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      String? phone,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt}) {
    return _SenderDTO(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      image: image,
      createdAt: createdAt,
    );
  }

  SenderDTO fromJson(Map<String, Object?> json) {
    return SenderDTO.fromJson(json);
  }
}

/// @nodoc
const $SenderDTO = _$SenderDTOTearOff();

/// @nodoc
mixin _$SenderDTO {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SenderDTOCopyWith<SenderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderDTOCopyWith<$Res> {
  factory $SenderDTOCopyWith(SenderDTO value, $Res Function(SenderDTO) then) =
      _$SenderDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      String? phone,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class _$SenderDTOCopyWithImpl<$Res> implements $SenderDTOCopyWith<$Res> {
  _$SenderDTOCopyWithImpl(this._value, this._then);

  final SenderDTO _value;
  // ignore: unused_field
  final $Res Function(SenderDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$SenderDTOCopyWith<$Res> implements $SenderDTOCopyWith<$Res> {
  factory _$SenderDTOCopyWith(
          _SenderDTO value, $Res Function(_SenderDTO) then) =
      __$SenderDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      String? phone,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class __$SenderDTOCopyWithImpl<$Res> extends _$SenderDTOCopyWithImpl<$Res>
    implements _$SenderDTOCopyWith<$Res> {
  __$SenderDTOCopyWithImpl(_SenderDTO _value, $Res Function(_SenderDTO) _then)
      : super(_value, (v) => _then(v as _SenderDTO));

  @override
  _SenderDTO get _value => super._value as _SenderDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_SenderDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SenderDTO extends _SenderDTO {
  const _$_SenderDTO(
      {this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.email,
      this.phone,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'created_at') @TimestampConverter() this.createdAt})
      : super._();

  factory _$_SenderDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SenderDTOFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'SenderDTO(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, image: $image, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SenderDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$SenderDTOCopyWith<_SenderDTO> get copyWith =>
      __$SenderDTOCopyWithImpl<_SenderDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SenderDTOToJson(this);
  }
}

abstract class _SenderDTO extends SenderDTO {
  const factory _SenderDTO(
      {String? id,
      @JsonKey(name: 'first_name')
          String? firstName,
      @JsonKey(name: 'last_name')
          String? lastName,
      String? email,
      String? phone,
      @JsonKey(name: 'image')
          String? image,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt}) = _$_SenderDTO;
  const _SenderDTO._() : super._();

  factory _SenderDTO.fromJson(Map<String, dynamic> json) =
      _$_SenderDTO.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$SenderDTOCopyWith<_SenderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
