// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of delivery_history_list_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryHistoryListDTO _$DeliveryHistoryListDTOFromJson(
    Map<String, dynamic> json) {
  return _DeliveryHistoryListDTO.fromJson(json);
}

/// @nodoc
class _$DeliveryHistoryListDTOTearOff {
  const _$DeliveryHistoryListDTOTearOff();

  _DeliveryHistoryListDTO call(
      {@JsonKey(defaultValue: []) List<DeliveryHistoryDTO> data = const [],
      PaginationLinks? links,
      MetaField? meta}) {
    return _DeliveryHistoryListDTO(
      data: data,
      links: links,
      meta: meta,
    );
  }

  DeliveryHistoryListDTO fromJson(Map<String, Object?> json) {
    return DeliveryHistoryListDTO.fromJson(json);
  }
}

/// @nodoc
const $DeliveryHistoryListDTO = _$DeliveryHistoryListDTOTearOff();

/// @nodoc
mixin _$DeliveryHistoryListDTO {
  @JsonKey(defaultValue: [])
  List<DeliveryHistoryDTO> get data => throw _privateConstructorUsedError;
  PaginationLinks? get links => throw _privateConstructorUsedError;
  MetaField? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryHistoryListDTOCopyWith<DeliveryHistoryListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryHistoryListDTOCopyWith<$Res> {
  factory $DeliveryHistoryListDTOCopyWith(DeliveryHistoryListDTO value,
          $Res Function(DeliveryHistoryListDTO) then) =
      _$DeliveryHistoryListDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: []) List<DeliveryHistoryDTO> data,
      PaginationLinks? links,
      MetaField? meta});

  $PaginationLinksCopyWith<$Res>? get links;
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DeliveryHistoryListDTOCopyWithImpl<$Res>
    implements $DeliveryHistoryListDTOCopyWith<$Res> {
  _$DeliveryHistoryListDTOCopyWithImpl(this._value, this._then);

  final DeliveryHistoryListDTO _value;
  // ignore: unused_field
  final $Res Function(DeliveryHistoryListDTO) _then;

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
              as List<DeliveryHistoryDTO>,
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
abstract class _$DeliveryHistoryListDTOCopyWith<$Res>
    implements $DeliveryHistoryListDTOCopyWith<$Res> {
  factory _$DeliveryHistoryListDTOCopyWith(_DeliveryHistoryListDTO value,
          $Res Function(_DeliveryHistoryListDTO) then) =
      __$DeliveryHistoryListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: []) List<DeliveryHistoryDTO> data,
      PaginationLinks? links,
      MetaField? meta});

  @override
  $PaginationLinksCopyWith<$Res>? get links;
  @override
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class __$DeliveryHistoryListDTOCopyWithImpl<$Res>
    extends _$DeliveryHistoryListDTOCopyWithImpl<$Res>
    implements _$DeliveryHistoryListDTOCopyWith<$Res> {
  __$DeliveryHistoryListDTOCopyWithImpl(_DeliveryHistoryListDTO _value,
      $Res Function(_DeliveryHistoryListDTO) _then)
      : super(_value, (v) => _then(v as _DeliveryHistoryListDTO));

  @override
  _DeliveryHistoryListDTO get _value => super._value as _DeliveryHistoryListDTO;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_DeliveryHistoryListDTO(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DeliveryHistoryDTO>,
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
class _$_DeliveryHistoryListDTO extends _DeliveryHistoryListDTO {
  const _$_DeliveryHistoryListDTO(
      {@JsonKey(defaultValue: []) this.data = const [], this.links, this.meta})
      : super._();

  factory _$_DeliveryHistoryListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryHistoryListDTOFromJson(json);

  @override
  @JsonKey(defaultValue: [])
  final List<DeliveryHistoryDTO> data;
  @override
  final PaginationLinks? links;
  @override
  final MetaField? meta;

  @override
  String toString() {
    return 'DeliveryHistoryListDTO(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryHistoryListDTO &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), links, meta);

  @JsonKey(ignore: true)
  @override
  _$DeliveryHistoryListDTOCopyWith<_DeliveryHistoryListDTO> get copyWith =>
      __$DeliveryHistoryListDTOCopyWithImpl<_DeliveryHistoryListDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryHistoryListDTOToJson(this);
  }
}

abstract class _DeliveryHistoryListDTO extends DeliveryHistoryListDTO {
  const factory _DeliveryHistoryListDTO(
      {@JsonKey(defaultValue: []) List<DeliveryHistoryDTO> data,
      PaginationLinks? links,
      MetaField? meta}) = _$_DeliveryHistoryListDTO;
  const _DeliveryHistoryListDTO._() : super._();

  factory _DeliveryHistoryListDTO.fromJson(Map<String, dynamic> json) =
      _$_DeliveryHistoryListDTO.fromJson;

  @override
  @JsonKey(defaultValue: [])
  List<DeliveryHistoryDTO> get data;
  @override
  PaginationLinks? get links;
  @override
  MetaField? get meta;
  @override
  @JsonKey(ignore: true)
  _$DeliveryHistoryListDTOCopyWith<_DeliveryHistoryListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
