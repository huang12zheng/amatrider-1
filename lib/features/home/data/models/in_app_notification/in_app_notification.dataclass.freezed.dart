// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of in_app_notification.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InAppNotificationDTO _$InAppNotificationDTOFromJson(Map<String, dynamic> json) {
  return _InAppNotificationDTO.fromJson(json);
}

/// @nodoc
class _$InAppNotificationDTOTearOff {
  const _$InAppNotificationDTOTearOff();

  _InAppNotificationDTO call(
      {String? id,
      String? title,
      String? body,
      NotificationMetaDTO? meta,
      @JsonKey(name: 'date') @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt}) {
    return _InAppNotificationDTO(
      id: id,
      title: title,
      body: body,
      meta: meta,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  InAppNotificationDTO fromJson(Map<String, Object?> json) {
    return InAppNotificationDTO.fromJson(json);
  }
}

/// @nodoc
const $InAppNotificationDTO = _$InAppNotificationDTOTearOff();

/// @nodoc
mixin _$InAppNotificationDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  NotificationMetaDTO? get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InAppNotificationDTOCopyWith<InAppNotificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InAppNotificationDTOCopyWith<$Res> {
  factory $InAppNotificationDTOCopyWith(InAppNotificationDTO value,
          $Res Function(InAppNotificationDTO) then) =
      _$InAppNotificationDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? body,
      NotificationMetaDTO? meta,
      @JsonKey(name: 'date') @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});

  $NotificationMetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$InAppNotificationDTOCopyWithImpl<$Res>
    implements $InAppNotificationDTOCopyWith<$Res> {
  _$InAppNotificationDTOCopyWithImpl(this._value, this._then);

  final InAppNotificationDTO _value;
  // ignore: unused_field
  final $Res Function(InAppNotificationDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as NotificationMetaDTO?,
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
  $NotificationMetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $NotificationMetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$InAppNotificationDTOCopyWith<$Res>
    implements $InAppNotificationDTOCopyWith<$Res> {
  factory _$InAppNotificationDTOCopyWith(_InAppNotificationDTO value,
          $Res Function(_InAppNotificationDTO) then) =
      __$InAppNotificationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? body,
      NotificationMetaDTO? meta,
      @JsonKey(name: 'date') @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});

  @override
  $NotificationMetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$InAppNotificationDTOCopyWithImpl<$Res>
    extends _$InAppNotificationDTOCopyWithImpl<$Res>
    implements _$InAppNotificationDTOCopyWith<$Res> {
  __$InAppNotificationDTOCopyWithImpl(
      _InAppNotificationDTO _value, $Res Function(_InAppNotificationDTO) _then)
      : super(_value, (v) => _then(v as _InAppNotificationDTO));

  @override
  _InAppNotificationDTO get _value => super._value as _InAppNotificationDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_InAppNotificationDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as NotificationMetaDTO?,
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
class _$_InAppNotificationDTO extends _InAppNotificationDTO {
  const _$_InAppNotificationDTO(
      {this.id,
      this.title,
      this.body,
      this.meta,
      @JsonKey(name: 'date') @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      @TimestampConverter() this.deletedAt})
      : super._();

  factory _$_InAppNotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_InAppNotificationDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final NotificationMetaDTO? meta;
  @override
  @JsonKey(name: 'date')
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
    return 'InAppNotificationDTO(id: $id, title: $title, body: $body, meta: $meta, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InAppNotificationDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$InAppNotificationDTOCopyWith<_InAppNotificationDTO> get copyWith =>
      __$InAppNotificationDTOCopyWithImpl<_InAppNotificationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InAppNotificationDTOToJson(this);
  }
}

abstract class _InAppNotificationDTO extends InAppNotificationDTO {
  const factory _InAppNotificationDTO(
      {String? id,
      String? title,
      String? body,
      NotificationMetaDTO? meta,
      @JsonKey(name: 'date') @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt}) = _$_InAppNotificationDTO;
  const _InAppNotificationDTO._() : super._();

  factory _InAppNotificationDTO.fromJson(Map<String, dynamic> json) =
      _$_InAppNotificationDTO.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  NotificationMetaDTO? get meta;
  @override
  @JsonKey(name: 'date')
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
  _$InAppNotificationDTOCopyWith<_InAppNotificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

InAppNotificationListDTO _$InAppNotificationListDTOFromJson(
    Map<String, dynamic> json) {
  return _InAppNotificationListDTO.fromJson(json);
}

/// @nodoc
class _$InAppNotificationListDTOTearOff {
  const _$InAppNotificationListDTOTearOff();

  _InAppNotificationListDTO call(
      {List<InAppNotificationDTO> data = const [],
      PaginationLinks? links,
      MetaField? meta}) {
    return _InAppNotificationListDTO(
      data: data,
      links: links,
      meta: meta,
    );
  }

  InAppNotificationListDTO fromJson(Map<String, Object?> json) {
    return InAppNotificationListDTO.fromJson(json);
  }
}

/// @nodoc
const $InAppNotificationListDTO = _$InAppNotificationListDTOTearOff();

/// @nodoc
mixin _$InAppNotificationListDTO {
  List<InAppNotificationDTO> get data => throw _privateConstructorUsedError;
  PaginationLinks? get links => throw _privateConstructorUsedError;
  MetaField? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InAppNotificationListDTOCopyWith<InAppNotificationListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InAppNotificationListDTOCopyWith<$Res> {
  factory $InAppNotificationListDTOCopyWith(InAppNotificationListDTO value,
          $Res Function(InAppNotificationListDTO) then) =
      _$InAppNotificationListDTOCopyWithImpl<$Res>;
  $Res call(
      {List<InAppNotificationDTO> data,
      PaginationLinks? links,
      MetaField? meta});

  $PaginationLinksCopyWith<$Res>? get links;
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class _$InAppNotificationListDTOCopyWithImpl<$Res>
    implements $InAppNotificationListDTOCopyWith<$Res> {
  _$InAppNotificationListDTOCopyWithImpl(this._value, this._then);

  final InAppNotificationListDTO _value;
  // ignore: unused_field
  final $Res Function(InAppNotificationListDTO) _then;

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
              as List<InAppNotificationDTO>,
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
abstract class _$InAppNotificationListDTOCopyWith<$Res>
    implements $InAppNotificationListDTOCopyWith<$Res> {
  factory _$InAppNotificationListDTOCopyWith(_InAppNotificationListDTO value,
          $Res Function(_InAppNotificationListDTO) then) =
      __$InAppNotificationListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<InAppNotificationDTO> data,
      PaginationLinks? links,
      MetaField? meta});

  @override
  $PaginationLinksCopyWith<$Res>? get links;
  @override
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class __$InAppNotificationListDTOCopyWithImpl<$Res>
    extends _$InAppNotificationListDTOCopyWithImpl<$Res>
    implements _$InAppNotificationListDTOCopyWith<$Res> {
  __$InAppNotificationListDTOCopyWithImpl(_InAppNotificationListDTO _value,
      $Res Function(_InAppNotificationListDTO) _then)
      : super(_value, (v) => _then(v as _InAppNotificationListDTO));

  @override
  _InAppNotificationListDTO get _value =>
      super._value as _InAppNotificationListDTO;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_InAppNotificationListDTO(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<InAppNotificationDTO>,
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
class _$_InAppNotificationListDTO extends _InAppNotificationListDTO {
  const _$_InAppNotificationListDTO(
      {this.data = const [], this.links, this.meta})
      : super._();

  factory _$_InAppNotificationListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_InAppNotificationListDTOFromJson(json);

  @JsonKey()
  @override
  final List<InAppNotificationDTO> data;
  @override
  final PaginationLinks? links;
  @override
  final MetaField? meta;

  @override
  String toString() {
    return 'InAppNotificationListDTO(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InAppNotificationListDTO &&
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
  _$InAppNotificationListDTOCopyWith<_InAppNotificationListDTO> get copyWith =>
      __$InAppNotificationListDTOCopyWithImpl<_InAppNotificationListDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InAppNotificationListDTOToJson(this);
  }
}

abstract class _InAppNotificationListDTO extends InAppNotificationListDTO {
  const factory _InAppNotificationListDTO(
      {List<InAppNotificationDTO> data,
      PaginationLinks? links,
      MetaField? meta}) = _$_InAppNotificationListDTO;
  const _InAppNotificationListDTO._() : super._();

  factory _InAppNotificationListDTO.fromJson(Map<String, dynamic> json) =
      _$_InAppNotificationListDTO.fromJson;

  @override
  List<InAppNotificationDTO> get data;
  @override
  PaginationLinks? get links;
  @override
  MetaField? get meta;
  @override
  @JsonKey(ignore: true)
  _$InAppNotificationListDTOCopyWith<_InAppNotificationListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
