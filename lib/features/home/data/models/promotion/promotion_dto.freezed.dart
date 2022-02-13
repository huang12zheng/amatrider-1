// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of promotion_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromotionDTO _$PromotionDTOFromJson(Map<String, dynamic> json) {
  return _PromotionDTO.fromJson(json);
}

/// @nodoc
class _$PromotionDTOTearOff {
  const _$PromotionDTOTearOff();

  _PromotionDTO call(
      {String? id,
      String? media,
      PromotionDiscountDTO? discount,
      @JsonKey(name: 'media_type')
      @AttachmentMimeSerializer()
          String? mediaType,
      @JsonKey(name: 'playback_url')
          String? playbackUrl,
      String? description,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
      @JsonKey(name: 'stop_showing_at')
      @TimestampConverter()
          DateTime? shopShowingAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt}) {
    return _PromotionDTO(
      id: id,
      media: media,
      discount: discount,
      mediaType: mediaType,
      playbackUrl: playbackUrl,
      description: description,
      store: store,
      shopShowingAt: shopShowingAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  PromotionDTO fromJson(Map<String, Object?> json) {
    return PromotionDTO.fromJson(json);
  }
}

/// @nodoc
const $PromotionDTO = _$PromotionDTOTearOff();

/// @nodoc
mixin _$PromotionDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get media => throw _privateConstructorUsedError;
  PromotionDiscountDTO? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  @AttachmentMimeSerializer()
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'playback_url')
  String? get playbackUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant')
  StoreDTO? get store => throw _privateConstructorUsedError;
  @JsonKey(name: 'stop_showing_at')
  @TimestampConverter()
  DateTime? get shopShowingAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionDTOCopyWith<PromotionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDTOCopyWith<$Res> {
  factory $PromotionDTOCopyWith(
          PromotionDTO value, $Res Function(PromotionDTO) then) =
      _$PromotionDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? media,
      PromotionDiscountDTO? discount,
      @JsonKey(name: 'media_type')
      @AttachmentMimeSerializer()
          String? mediaType,
      @JsonKey(name: 'playback_url')
          String? playbackUrl,
      String? description,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
      @JsonKey(name: 'stop_showing_at')
      @TimestampConverter()
          DateTime? shopShowingAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt});

  $PromotionDiscountDTOCopyWith<$Res>? get discount;
  $StoreDTOCopyWith<$Res>? get store;
}

/// @nodoc
class _$PromotionDTOCopyWithImpl<$Res> implements $PromotionDTOCopyWith<$Res> {
  _$PromotionDTOCopyWithImpl(this._value, this._then);

  final PromotionDTO _value;
  // ignore: unused_field
  final $Res Function(PromotionDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? media = freezed,
    Object? discount = freezed,
    Object? mediaType = freezed,
    Object? playbackUrl = freezed,
    Object? description = freezed,
    Object? store = freezed,
    Object? shopShowingAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as PromotionDiscountDTO?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      playbackUrl: playbackUrl == freezed
          ? _value.playbackUrl
          : playbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreDTO?,
      shopShowingAt: shopShowingAt == freezed
          ? _value.shopShowingAt
          : shopShowingAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $PromotionDiscountDTOCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $PromotionDiscountDTOCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value));
    });
  }

  @override
  $StoreDTOCopyWith<$Res>? get store {
    if (_value.store == null) {
      return null;
    }

    return $StoreDTOCopyWith<$Res>(_value.store!, (value) {
      return _then(_value.copyWith(store: value));
    });
  }
}

/// @nodoc
abstract class _$PromotionDTOCopyWith<$Res>
    implements $PromotionDTOCopyWith<$Res> {
  factory _$PromotionDTOCopyWith(
          _PromotionDTO value, $Res Function(_PromotionDTO) then) =
      __$PromotionDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? media,
      PromotionDiscountDTO? discount,
      @JsonKey(name: 'media_type')
      @AttachmentMimeSerializer()
          String? mediaType,
      @JsonKey(name: 'playback_url')
          String? playbackUrl,
      String? description,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
      @JsonKey(name: 'stop_showing_at')
      @TimestampConverter()
          DateTime? shopShowingAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt});

  @override
  $PromotionDiscountDTOCopyWith<$Res>? get discount;
  @override
  $StoreDTOCopyWith<$Res>? get store;
}

/// @nodoc
class __$PromotionDTOCopyWithImpl<$Res> extends _$PromotionDTOCopyWithImpl<$Res>
    implements _$PromotionDTOCopyWith<$Res> {
  __$PromotionDTOCopyWithImpl(
      _PromotionDTO _value, $Res Function(_PromotionDTO) _then)
      : super(_value, (v) => _then(v as _PromotionDTO));

  @override
  _PromotionDTO get _value => super._value as _PromotionDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? media = freezed,
    Object? discount = freezed,
    Object? mediaType = freezed,
    Object? playbackUrl = freezed,
    Object? description = freezed,
    Object? store = freezed,
    Object? shopShowingAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_PromotionDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as PromotionDiscountDTO?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      playbackUrl: playbackUrl == freezed
          ? _value.playbackUrl
          : playbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreDTO?,
      shopShowingAt: shopShowingAt == freezed
          ? _value.shopShowingAt
          : shopShowingAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionDTO extends _PromotionDTO {
  const _$_PromotionDTO(
      {this.id,
      this.media,
      this.discount,
      @JsonKey(name: 'media_type')
      @AttachmentMimeSerializer()
          this.mediaType,
      @JsonKey(name: 'playback_url')
          this.playbackUrl,
      this.description,
      @JsonKey(name: 'restaurant')
          this.store,
      @JsonKey(name: 'stop_showing_at')
      @TimestampConverter()
          this.shopShowingAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          this.updatedAt})
      : super._();

  factory _$_PromotionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? media;
  @override
  final PromotionDiscountDTO? discount;
  @override
  @JsonKey(name: 'media_type')
  @AttachmentMimeSerializer()
  final String? mediaType;
  @override
  @JsonKey(name: 'playback_url')
  final String? playbackUrl;
  @override
  final String? description;
  @override
  @JsonKey(name: 'restaurant')
  final StoreDTO? store;
  @override
  @JsonKey(name: 'stop_showing_at')
  @TimestampConverter()
  final DateTime? shopShowingAt;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PromotionDTO(id: $id, media: $media, discount: $discount, mediaType: $mediaType, playbackUrl: $playbackUrl, description: $description, store: $store, shopShowingAt: $shopShowingAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PromotionDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.media, media) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.mediaType, mediaType) &&
            const DeepCollectionEquality()
                .equals(other.playbackUrl, playbackUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.store, store) &&
            const DeepCollectionEquality()
                .equals(other.shopShowingAt, shopShowingAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(media),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(mediaType),
      const DeepCollectionEquality().hash(playbackUrl),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(store),
      const DeepCollectionEquality().hash(shopShowingAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$PromotionDTOCopyWith<_PromotionDTO> get copyWith =>
      __$PromotionDTOCopyWithImpl<_PromotionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionDTOToJson(this);
  }
}

abstract class _PromotionDTO extends PromotionDTO {
  const factory _PromotionDTO(
      {String? id,
      String? media,
      PromotionDiscountDTO? discount,
      @JsonKey(name: 'media_type')
      @AttachmentMimeSerializer()
          String? mediaType,
      @JsonKey(name: 'playback_url')
          String? playbackUrl,
      String? description,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
      @JsonKey(name: 'stop_showing_at')
      @TimestampConverter()
          DateTime? shopShowingAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt}) = _$_PromotionDTO;
  const _PromotionDTO._() : super._();

  factory _PromotionDTO.fromJson(Map<String, dynamic> json) =
      _$_PromotionDTO.fromJson;

  @override
  String? get id;
  @override
  String? get media;
  @override
  PromotionDiscountDTO? get discount;
  @override
  @JsonKey(name: 'media_type')
  @AttachmentMimeSerializer()
  String? get mediaType;
  @override
  @JsonKey(name: 'playback_url')
  String? get playbackUrl;
  @override
  String? get description;
  @override
  @JsonKey(name: 'restaurant')
  StoreDTO? get store;
  @override
  @JsonKey(name: 'stop_showing_at')
  @TimestampConverter()
  DateTime? get shopShowingAt;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$PromotionDTOCopyWith<_PromotionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
