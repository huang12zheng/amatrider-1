// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of address_component_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressComponentDTO _$AddressComponentDTOFromJson(Map<String, dynamic> json) {
  return _AddressComponentDTO.fromJson(json);
}

/// @nodoc
class _$AddressComponentDTOTearOff {
  const _$AddressComponentDTOTearOff();

  _AddressComponentDTO call(
      {@JsonKey(name: 'long_name')
          String? longName,
      @JsonKey(name: 'short_name')
          String? shortName,
      @AddressComponentTypeSerializer()
          List<AddressComponentType> types = const []}) {
    return _AddressComponentDTO(
      longName: longName,
      shortName: shortName,
      types: types,
    );
  }

  AddressComponentDTO fromJson(Map<String, Object?> json) {
    return AddressComponentDTO.fromJson(json);
  }
}

/// @nodoc
const $AddressComponentDTO = _$AddressComponentDTOTearOff();

/// @nodoc
mixin _$AddressComponentDTO {
  @JsonKey(name: 'long_name')
  String? get longName => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_name')
  String? get shortName => throw _privateConstructorUsedError;
  @AddressComponentTypeSerializer()
  List<AddressComponentType> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressComponentDTOCopyWith<AddressComponentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressComponentDTOCopyWith<$Res> {
  factory $AddressComponentDTOCopyWith(
          AddressComponentDTO value, $Res Function(AddressComponentDTO) then) =
      _$AddressComponentDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'long_name') String? longName,
      @JsonKey(name: 'short_name') String? shortName,
      @AddressComponentTypeSerializer() List<AddressComponentType> types});
}

/// @nodoc
class _$AddressComponentDTOCopyWithImpl<$Res>
    implements $AddressComponentDTOCopyWith<$Res> {
  _$AddressComponentDTOCopyWithImpl(this._value, this._then);

  final AddressComponentDTO _value;
  // ignore: unused_field
  final $Res Function(AddressComponentDTO) _then;

  @override
  $Res call({
    Object? longName = freezed,
    Object? shortName = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      longName: longName == freezed
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<AddressComponentType>,
    ));
  }
}

/// @nodoc
abstract class _$AddressComponentDTOCopyWith<$Res>
    implements $AddressComponentDTOCopyWith<$Res> {
  factory _$AddressComponentDTOCopyWith(_AddressComponentDTO value,
          $Res Function(_AddressComponentDTO) then) =
      __$AddressComponentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'long_name') String? longName,
      @JsonKey(name: 'short_name') String? shortName,
      @AddressComponentTypeSerializer() List<AddressComponentType> types});
}

/// @nodoc
class __$AddressComponentDTOCopyWithImpl<$Res>
    extends _$AddressComponentDTOCopyWithImpl<$Res>
    implements _$AddressComponentDTOCopyWith<$Res> {
  __$AddressComponentDTOCopyWithImpl(
      _AddressComponentDTO _value, $Res Function(_AddressComponentDTO) _then)
      : super(_value, (v) => _then(v as _AddressComponentDTO));

  @override
  _AddressComponentDTO get _value => super._value as _AddressComponentDTO;

  @override
  $Res call({
    Object? longName = freezed,
    Object? shortName = freezed,
    Object? types = freezed,
  }) {
    return _then(_AddressComponentDTO(
      longName: longName == freezed
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<AddressComponentType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressComponentDTO extends _AddressComponentDTO {
  const _$_AddressComponentDTO(
      {@JsonKey(name: 'long_name') this.longName,
      @JsonKey(name: 'short_name') this.shortName,
      @AddressComponentTypeSerializer() this.types = const []})
      : super._();

  factory _$_AddressComponentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AddressComponentDTOFromJson(json);

  @override
  @JsonKey(name: 'long_name')
  final String? longName;
  @override
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(defaultValue: const [])
  @override
  @AddressComponentTypeSerializer()
  final List<AddressComponentType> types;

  @override
  String toString() {
    return 'AddressComponentDTO(longName: $longName, shortName: $shortName, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressComponentDTO &&
            (identical(other.longName, longName) ||
                other.longName == longName) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @override
  int get hashCode => Object.hash(runtimeType, longName, shortName,
      const DeepCollectionEquality().hash(types));

  @JsonKey(ignore: true)
  @override
  _$AddressComponentDTOCopyWith<_AddressComponentDTO> get copyWith =>
      __$AddressComponentDTOCopyWithImpl<_AddressComponentDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressComponentDTOToJson(this);
  }
}

abstract class _AddressComponentDTO extends AddressComponentDTO {
  const factory _AddressComponentDTO(
          {@JsonKey(name: 'long_name') String? longName,
          @JsonKey(name: 'short_name') String? shortName,
          @AddressComponentTypeSerializer() List<AddressComponentType> types}) =
      _$_AddressComponentDTO;
  const _AddressComponentDTO._() : super._();

  factory _AddressComponentDTO.fromJson(Map<String, dynamic> json) =
      _$_AddressComponentDTO.fromJson;

  @override
  @JsonKey(name: 'long_name')
  String? get longName;
  @override
  @JsonKey(name: 'short_name')
  String? get shortName;
  @override
  @AddressComponentTypeSerializer()
  List<AddressComponentType> get types;
  @override
  @JsonKey(ignore: true)
  _$AddressComponentDTOCopyWith<_AddressComponentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
