// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of in_app_notification_dto.dart;

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
      {String? title,
      @JsonKey(name: 'amat_notification_type')
      @WebsocketResponseTypeSerializer()
          WebsocketResponseType? type,
      dynamic meta,
      @JsonKey(name: 'date')
      @TimestampConverter()
          DateTime? createdAt}) {
    return _InAppNotificationDTO(
      title: title,
      type: type,
      meta: meta,
      createdAt: createdAt,
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
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'amat_notification_type')
  @WebsocketResponseTypeSerializer()
  WebsocketResponseType? get type => throw _privateConstructorUsedError;
  dynamic get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

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
      {String? title,
      @JsonKey(name: 'amat_notification_type')
      @WebsocketResponseTypeSerializer()
          WebsocketResponseType? type,
      dynamic meta,
      @JsonKey(name: 'date')
      @TimestampConverter()
          DateTime? createdAt});
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
    Object? title = freezed,
    Object? type = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WebsocketResponseType?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
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
      {String? title,
      @JsonKey(name: 'amat_notification_type')
      @WebsocketResponseTypeSerializer()
          WebsocketResponseType? type,
      dynamic meta,
      @JsonKey(name: 'date')
      @TimestampConverter()
          DateTime? createdAt});
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
    Object? title = freezed,
    Object? type = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_InAppNotificationDTO(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WebsocketResponseType?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InAppNotificationDTO extends _InAppNotificationDTO {
  const _$_InAppNotificationDTO(
      {this.title,
      @JsonKey(name: 'amat_notification_type')
      @WebsocketResponseTypeSerializer()
          this.type,
      this.meta,
      @JsonKey(name: 'date')
      @TimestampConverter()
          this.createdAt})
      : super._();

  factory _$_InAppNotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_InAppNotificationDTOFromJson(json);

  @override
  final String? title;
  @override
  @JsonKey(name: 'amat_notification_type')
  @WebsocketResponseTypeSerializer()
  final WebsocketResponseType? type;
  @override
  final dynamic meta;
  @override
  @JsonKey(name: 'date')
  @TimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'InAppNotificationDTO(title: $title, type: $type, meta: $meta, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InAppNotificationDTO &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(createdAt));

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
      {String? title,
      @JsonKey(name: 'amat_notification_type')
      @WebsocketResponseTypeSerializer()
          WebsocketResponseType? type,
      dynamic meta,
      @JsonKey(name: 'date')
      @TimestampConverter()
          DateTime? createdAt}) = _$_InAppNotificationDTO;
  const _InAppNotificationDTO._() : super._();

  factory _InAppNotificationDTO.fromJson(Map<String, dynamic> json) =
      _$_InAppNotificationDTO.fromJson;

  @override
  String? get title;
  @override
  @JsonKey(name: 'amat_notification_type')
  @WebsocketResponseTypeSerializer()
  WebsocketResponseType? get type;
  @override
  dynamic get meta;
  @override
  @JsonKey(name: 'date')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$InAppNotificationDTOCopyWith<_InAppNotificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
