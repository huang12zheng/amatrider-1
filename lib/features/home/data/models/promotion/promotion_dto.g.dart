// GENERATED CODE - DO NOT MODIFY BY HAND

part of promotion_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionDTO _$$_PromotionDTOFromJson(Map<String, dynamic> json) =>
    _$_PromotionDTO(
      id: json['id'] as String?,
      media: json['media'] as String?,
      discount: json['discount'] == null
          ? null
          : PromotionDiscountDTO.fromJson(
              json['discount'] as Map<String, dynamic>),
      mediaType: json['media_type'] as String?,
      playbackUrl: json['playback_url'] as String?,
      description: json['description'] as String?,
      store: json['restaurant'] == null
          ? null
          : StoreDTO.fromJson(json['restaurant'] as Map<String, dynamic>),
      shopShowingAt:
          const TimestampConverter().fromJson(json['stop_showing_at']),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
    );

Map<String, dynamic> _$$_PromotionDTOToJson(_$_PromotionDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('media', instance.media);
  writeNotNull('discount', instance.discount?.toJson());
  writeNotNull('media_type', instance.mediaType);
  writeNotNull('playback_url', instance.playbackUrl);
  writeNotNull('description', instance.description);
  writeNotNull('restaurant', instance.store?.toJson());
  writeNotNull('stop_showing_at',
      const TimestampConverter().toJson(instance.shopShowingAt));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}
