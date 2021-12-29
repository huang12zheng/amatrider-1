// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of country_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDTO _$CountryDTOFromJson(Map<String, dynamic> json) {
  return _CountryDTO.fromJson(json);
}

/// @nodoc
class _$CountryDTOTearOff {
  const _$CountryDTOTearOff();

  _CountryDTO call(
      {String? id,
      String? name,
      String? iso2,
      String? iso3,
      @JsonKey(name: 'phone_code') String? dialCode}) {
    return _CountryDTO(
      id: id,
      name: name,
      iso2: iso2,
      iso3: iso3,
      dialCode: dialCode,
    );
  }

  CountryDTO fromJson(Map<String, Object?> json) {
    return CountryDTO.fromJson(json);
  }
}

/// @nodoc
const $CountryDTO = _$CountryDTOTearOff();

/// @nodoc
mixin _$CountryDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get iso2 => throw _privateConstructorUsedError;
  String? get iso3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_code')
  String? get dialCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDTOCopyWith<CountryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDTOCopyWith<$Res> {
  factory $CountryDTOCopyWith(
          CountryDTO value, $Res Function(CountryDTO) then) =
      _$CountryDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? iso2,
      String? iso3,
      @JsonKey(name: 'phone_code') String? dialCode});
}

/// @nodoc
class _$CountryDTOCopyWithImpl<$Res> implements $CountryDTOCopyWith<$Res> {
  _$CountryDTOCopyWithImpl(this._value, this._then);

  final CountryDTO _value;
  // ignore: unused_field
  final $Res Function(CountryDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iso2 = freezed,
    Object? iso3 = freezed,
    Object? dialCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iso2: iso2 == freezed
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso3: iso3 == freezed
          ? _value.iso3
          : iso3 // ignore: cast_nullable_to_non_nullable
              as String?,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CountryDTOCopyWith<$Res> implements $CountryDTOCopyWith<$Res> {
  factory _$CountryDTOCopyWith(
          _CountryDTO value, $Res Function(_CountryDTO) then) =
      __$CountryDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? iso2,
      String? iso3,
      @JsonKey(name: 'phone_code') String? dialCode});
}

/// @nodoc
class __$CountryDTOCopyWithImpl<$Res> extends _$CountryDTOCopyWithImpl<$Res>
    implements _$CountryDTOCopyWith<$Res> {
  __$CountryDTOCopyWithImpl(
      _CountryDTO _value, $Res Function(_CountryDTO) _then)
      : super(_value, (v) => _then(v as _CountryDTO));

  @override
  _CountryDTO get _value => super._value as _CountryDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iso2 = freezed,
    Object? iso3 = freezed,
    Object? dialCode = freezed,
  }) {
    return _then(_CountryDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iso2: iso2 == freezed
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso3: iso3 == freezed
          ? _value.iso3
          : iso3 // ignore: cast_nullable_to_non_nullable
              as String?,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDTO extends _CountryDTO {
  const _$_CountryDTO(
      {this.id,
      this.name,
      this.iso2,
      this.iso3,
      @JsonKey(name: 'phone_code') this.dialCode})
      : super._();

  factory _$_CountryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? iso2;
  @override
  final String? iso3;
  @override
  @JsonKey(name: 'phone_code')
  final String? dialCode;

  @override
  String toString() {
    return 'CountryDTO(id: $id, name: $name, iso2: $iso2, iso3: $iso3, dialCode: $dialCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountryDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.iso2, iso2) &&
            const DeepCollectionEquality().equals(other.iso3, iso3) &&
            const DeepCollectionEquality().equals(other.dialCode, dialCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(iso2),
      const DeepCollectionEquality().hash(iso3),
      const DeepCollectionEquality().hash(dialCode));

  @JsonKey(ignore: true)
  @override
  _$CountryDTOCopyWith<_CountryDTO> get copyWith =>
      __$CountryDTOCopyWithImpl<_CountryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDTOToJson(this);
  }
}

abstract class _CountryDTO extends CountryDTO {
  const factory _CountryDTO(
      {String? id,
      String? name,
      String? iso2,
      String? iso3,
      @JsonKey(name: 'phone_code') String? dialCode}) = _$_CountryDTO;
  const _CountryDTO._() : super._();

  factory _CountryDTO.fromJson(Map<String, dynamic> json) =
      _$_CountryDTO.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get iso2;
  @override
  String? get iso3;
  @override
  @JsonKey(name: 'phone_code')
  String? get dialCode;
  @override
  @JsonKey(ignore: true)
  _$CountryDTOCopyWith<_CountryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
