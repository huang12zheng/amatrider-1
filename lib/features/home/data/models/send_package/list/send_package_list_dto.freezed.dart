// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of send_package_list_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendPackageListDTO _$SendPackageListDTOFromJson(Map<String, dynamic> json) {
  return _SendPackageListDTO.fromJson(json);
}

/// @nodoc
class _$SendPackageListDTOTearOff {
  const _$SendPackageListDTOTearOff();

  _SendPackageListDTO call(
      {@JsonKey(defaultValue: []) List<SendPackageDTO> data = const [],
      PaginationLinks? links,
      MetaField? meta}) {
    return _SendPackageListDTO(
      data: data,
      links: links,
      meta: meta,
    );
  }

  SendPackageListDTO fromJson(Map<String, Object?> json) {
    return SendPackageListDTO.fromJson(json);
  }
}

/// @nodoc
const $SendPackageListDTO = _$SendPackageListDTOTearOff();

/// @nodoc
mixin _$SendPackageListDTO {
  @JsonKey(defaultValue: [])
  List<SendPackageDTO> get data => throw _privateConstructorUsedError;
  PaginationLinks? get links => throw _privateConstructorUsedError;
  MetaField? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendPackageListDTOCopyWith<SendPackageListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPackageListDTOCopyWith<$Res> {
  factory $SendPackageListDTOCopyWith(
          SendPackageListDTO value, $Res Function(SendPackageListDTO) then) =
      _$SendPackageListDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: []) List<SendPackageDTO> data,
      PaginationLinks? links,
      MetaField? meta});

  $PaginationLinksCopyWith<$Res>? get links;
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class _$SendPackageListDTOCopyWithImpl<$Res>
    implements $SendPackageListDTOCopyWith<$Res> {
  _$SendPackageListDTOCopyWithImpl(this._value, this._then);

  final SendPackageListDTO _value;
  // ignore: unused_field
  final $Res Function(SendPackageListDTO) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SendPackageDTO>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinks?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaField?,
    ));
  }

  @override
  $PaginationLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $PaginationLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $MetaFieldCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaFieldCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$SendPackageListDTOCopyWith<$Res>
    implements $SendPackageListDTOCopyWith<$Res> {
  factory _$SendPackageListDTOCopyWith(
          _SendPackageListDTO value, $Res Function(_SendPackageListDTO) then) =
      __$SendPackageListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: []) List<SendPackageDTO> data,
      PaginationLinks? links,
      MetaField? meta});

  @override
  $PaginationLinksCopyWith<$Res>? get links;
  @override
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class __$SendPackageListDTOCopyWithImpl<$Res>
    extends _$SendPackageListDTOCopyWithImpl<$Res>
    implements _$SendPackageListDTOCopyWith<$Res> {
  __$SendPackageListDTOCopyWithImpl(
      _SendPackageListDTO _value, $Res Function(_SendPackageListDTO) _then)
      : super(_value, (v) => _then(v as _SendPackageListDTO));

  @override
  _SendPackageListDTO get _value => super._value as _SendPackageListDTO;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_SendPackageListDTO(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SendPackageDTO>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinks?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaField?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendPackageListDTO extends _SendPackageListDTO {
  const _$_SendPackageListDTO(
      {@JsonKey(defaultValue: []) this.data = const [], this.links, this.meta})
      : super._();

  factory _$_SendPackageListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SendPackageListDTOFromJson(json);

  @override
  @JsonKey(defaultValue: [])
  final List<SendPackageDTO> data;
  @override
  final PaginationLinks? links;
  @override
  final MetaField? meta;

  @override
  String toString() {
    return 'SendPackageListDTO(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendPackageListDTO &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.links, links) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(links),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$SendPackageListDTOCopyWith<_SendPackageListDTO> get copyWith =>
      __$SendPackageListDTOCopyWithImpl<_SendPackageListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendPackageListDTOToJson(this);
  }
}

abstract class _SendPackageListDTO extends SendPackageListDTO {
  const factory _SendPackageListDTO(
      {@JsonKey(defaultValue: []) List<SendPackageDTO> data,
      PaginationLinks? links,
      MetaField? meta}) = _$_SendPackageListDTO;
  const _SendPackageListDTO._() : super._();

  factory _SendPackageListDTO.fromJson(Map<String, dynamic> json) =
      _$_SendPackageListDTO.fromJson;

  @override
  @JsonKey(defaultValue: [])
  List<SendPackageDTO> get data;
  @override
  PaginationLinks? get links;
  @override
  MetaField? get meta;
  @override
  @JsonKey(ignore: true)
  _$SendPackageListDTOCopyWith<_SendPackageListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
