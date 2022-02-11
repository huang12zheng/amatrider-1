// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of store_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreDTO _$StoreDTOFromJson(Map<String, dynamic> json) {
  return _StoreDTO.fromJson(json);
}

/// @nodoc
class _$StoreDTOTearOff {
  const _$StoreDTOTearOff();

  _StoreDTO call(
      {String? id,
      String? name,
      String? speciality,
      String? phone,
      String? image,
      @JsonKey(name: 'restaurant_location')
          StoreLocationDTO? location,
      @JsonKey(name: 'is_open')
      @IntToBoolSerializer()
          bool? isOpen,
      @JsonKey(name: 'allow_weekend_orders')
      @IntToBoolSerializer()
          bool? allowWeekendOrders,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt}) {
    return _StoreDTO(
      id: id,
      name: name,
      speciality: speciality,
      phone: phone,
      image: image,
      location: location,
      isOpen: isOpen,
      allowWeekendOrders: allowWeekendOrders,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  StoreDTO fromJson(Map<String, Object?> json) {
    return StoreDTO.fromJson(json);
  }
}

/// @nodoc
const $StoreDTO = _$StoreDTOTearOff();

/// @nodoc
mixin _$StoreDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get speciality => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_location')
  StoreLocationDTO? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_open')
  @IntToBoolSerializer()
  bool? get isOpen => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_weekend_orders')
  @IntToBoolSerializer()
  bool? get allowWeekendOrders => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreDTOCopyWith<StoreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDTOCopyWith<$Res> {
  factory $StoreDTOCopyWith(StoreDTO value, $Res Function(StoreDTO) then) =
      _$StoreDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? speciality,
      String? phone,
      String? image,
      @JsonKey(name: 'restaurant_location')
          StoreLocationDTO? location,
      @JsonKey(name: 'is_open')
      @IntToBoolSerializer()
          bool? isOpen,
      @JsonKey(name: 'allow_weekend_orders')
      @IntToBoolSerializer()
          bool? allowWeekendOrders,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt});

  $StoreLocationDTOCopyWith<$Res>? get location;
}

/// @nodoc
class _$StoreDTOCopyWithImpl<$Res> implements $StoreDTOCopyWith<$Res> {
  _$StoreDTOCopyWithImpl(this._value, this._then);

  final StoreDTO _value;
  // ignore: unused_field
  final $Res Function(StoreDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? speciality = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? location = freezed,
    Object? isOpen = freezed,
    Object? allowWeekendOrders = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
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
      speciality: speciality == freezed
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as StoreLocationDTO?,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowWeekendOrders: allowWeekendOrders == freezed
          ? _value.allowWeekendOrders
          : allowWeekendOrders // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $StoreLocationDTOCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $StoreLocationDTOCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$StoreDTOCopyWith<$Res> implements $StoreDTOCopyWith<$Res> {
  factory _$StoreDTOCopyWith(_StoreDTO value, $Res Function(_StoreDTO) then) =
      __$StoreDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? speciality,
      String? phone,
      String? image,
      @JsonKey(name: 'restaurant_location')
          StoreLocationDTO? location,
      @JsonKey(name: 'is_open')
      @IntToBoolSerializer()
          bool? isOpen,
      @JsonKey(name: 'allow_weekend_orders')
      @IntToBoolSerializer()
          bool? allowWeekendOrders,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt});

  @override
  $StoreLocationDTOCopyWith<$Res>? get location;
}

/// @nodoc
class __$StoreDTOCopyWithImpl<$Res> extends _$StoreDTOCopyWithImpl<$Res>
    implements _$StoreDTOCopyWith<$Res> {
  __$StoreDTOCopyWithImpl(_StoreDTO _value, $Res Function(_StoreDTO) _then)
      : super(_value, (v) => _then(v as _StoreDTO));

  @override
  _StoreDTO get _value => super._value as _StoreDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? speciality = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? location = freezed,
    Object? isOpen = freezed,
    Object? allowWeekendOrders = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_StoreDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      speciality: speciality == freezed
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as StoreLocationDTO?,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowWeekendOrders: allowWeekendOrders == freezed
          ? _value.allowWeekendOrders
          : allowWeekendOrders // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreDTO extends _StoreDTO {
  const _$_StoreDTO(
      {this.id,
      this.name,
      this.speciality,
      this.phone,
      this.image,
      @JsonKey(name: 'restaurant_location')
          this.location,
      @JsonKey(name: 'is_open')
      @IntToBoolSerializer()
          this.isOpen,
      @JsonKey(name: 'allow_weekend_orders')
      @IntToBoolSerializer()
          this.allowWeekendOrders,
      @TimestampConverter()
          this.createdAt,
      @TimestampConverter()
          this.updatedAt,
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_StoreDTO.fromJson(Map<String, dynamic> json) =>
      _$$_StoreDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? speciality;
  @override
  final String? phone;
  @override
  final String? image;
  @override
  @JsonKey(name: 'restaurant_location')
  final StoreLocationDTO? location;
  @override
  @JsonKey(name: 'is_open')
  @IntToBoolSerializer()
  final bool? isOpen;
  @override
  @JsonKey(name: 'allow_weekend_orders')
  @IntToBoolSerializer()
  final bool? allowWeekendOrders;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @TimestampConverter()
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'StoreDTO(id: $id, name: $name, speciality: $speciality, phone: $phone, image: $image, location: $location, isOpen: $isOpen, allowWeekendOrders: $allowWeekendOrders, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.speciality, speciality) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.isOpen, isOpen) &&
            const DeepCollectionEquality()
                .equals(other.allowWeekendOrders, allowWeekendOrders) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(speciality),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(isOpen),
      const DeepCollectionEquality().hash(allowWeekendOrders),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$StoreDTOCopyWith<_StoreDTO> get copyWith =>
      __$StoreDTOCopyWithImpl<_StoreDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreDTOToJson(this);
  }
}

abstract class _StoreDTO extends StoreDTO {
  const factory _StoreDTO(
      {String? id,
      String? name,
      String? speciality,
      String? phone,
      String? image,
      @JsonKey(name: 'restaurant_location')
          StoreLocationDTO? location,
      @JsonKey(name: 'is_open')
      @IntToBoolSerializer()
          bool? isOpen,
      @JsonKey(name: 'allow_weekend_orders')
      @IntToBoolSerializer()
          bool? allowWeekendOrders,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt}) = _$_StoreDTO;
  const _StoreDTO._() : super._();

  factory _StoreDTO.fromJson(Map<String, dynamic> json) = _$_StoreDTO.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get speciality;
  @override
  String? get phone;
  @override
  String? get image;
  @override
  @JsonKey(name: 'restaurant_location')
  StoreLocationDTO? get location;
  @override
  @JsonKey(name: 'is_open')
  @IntToBoolSerializer()
  bool? get isOpen;
  @override
  @JsonKey(name: 'allow_weekend_orders')
  @IntToBoolSerializer()
  bool? get allowWeekendOrders;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @TimestampConverter()
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$StoreDTOCopyWith<_StoreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreListDTO _$StoreListDTOFromJson(Map<String, dynamic> json) {
  return _StoreListDTO.fromJson(json);
}

/// @nodoc
class _$StoreListDTOTearOff {
  const _$StoreListDTOTearOff();

  _StoreListDTO call(
      {List<StoreDTO> data = const [],
      PaginationLinks? links,
      MetaField? meta}) {
    return _StoreListDTO(
      data: data,
      links: links,
      meta: meta,
    );
  }

  StoreListDTO fromJson(Map<String, Object?> json) {
    return StoreListDTO.fromJson(json);
  }
}

/// @nodoc
const $StoreListDTO = _$StoreListDTOTearOff();

/// @nodoc
mixin _$StoreListDTO {
  List<StoreDTO> get data => throw _privateConstructorUsedError;
  PaginationLinks? get links => throw _privateConstructorUsedError;
  MetaField? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreListDTOCopyWith<StoreListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreListDTOCopyWith<$Res> {
  factory $StoreListDTOCopyWith(
          StoreListDTO value, $Res Function(StoreListDTO) then) =
      _$StoreListDTOCopyWithImpl<$Res>;
  $Res call({List<StoreDTO> data, PaginationLinks? links, MetaField? meta});

  $PaginationLinksCopyWith<$Res>? get links;
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class _$StoreListDTOCopyWithImpl<$Res> implements $StoreListDTOCopyWith<$Res> {
  _$StoreListDTOCopyWithImpl(this._value, this._then);

  final StoreListDTO _value;
  // ignore: unused_field
  final $Res Function(StoreListDTO) _then;

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
              as List<StoreDTO>,
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
abstract class _$StoreListDTOCopyWith<$Res>
    implements $StoreListDTOCopyWith<$Res> {
  factory _$StoreListDTOCopyWith(
          _StoreListDTO value, $Res Function(_StoreListDTO) then) =
      __$StoreListDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<StoreDTO> data, PaginationLinks? links, MetaField? meta});

  @override
  $PaginationLinksCopyWith<$Res>? get links;
  @override
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class __$StoreListDTOCopyWithImpl<$Res> extends _$StoreListDTOCopyWithImpl<$Res>
    implements _$StoreListDTOCopyWith<$Res> {
  __$StoreListDTOCopyWithImpl(
      _StoreListDTO _value, $Res Function(_StoreListDTO) _then)
      : super(_value, (v) => _then(v as _StoreListDTO));

  @override
  _StoreListDTO get _value => super._value as _StoreListDTO;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_StoreListDTO(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StoreDTO>,
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
class _$_StoreListDTO extends _StoreListDTO {
  const _$_StoreListDTO({this.data = const [], this.links, this.meta})
      : super._();

  factory _$_StoreListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_StoreListDTOFromJson(json);

  @JsonKey()
  @override
  final List<StoreDTO> data;
  @override
  final PaginationLinks? links;
  @override
  final MetaField? meta;

  @override
  String toString() {
    return 'StoreListDTO(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreListDTO &&
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
  _$StoreListDTOCopyWith<_StoreListDTO> get copyWith =>
      __$StoreListDTOCopyWithImpl<_StoreListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreListDTOToJson(this);
  }
}

abstract class _StoreListDTO extends StoreListDTO {
  const factory _StoreListDTO(
      {List<StoreDTO> data,
      PaginationLinks? links,
      MetaField? meta}) = _$_StoreListDTO;
  const _StoreListDTO._() : super._();

  factory _StoreListDTO.fromJson(Map<String, dynamic> json) =
      _$_StoreListDTO.fromJson;

  @override
  List<StoreDTO> get data;
  @override
  PaginationLinks? get links;
  @override
  MetaField? get meta;
  @override
  @JsonKey(ignore: true)
  _$StoreListDTOCopyWith<_StoreListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
