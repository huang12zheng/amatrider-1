// GENERATED CODE - DO NOT MODIFY BY HAND

part of promotion_discount_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionDiscountDTO _$$_PromotionDiscountDTOFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionDiscountDTO(
      id: json['id'] as String?,
      promotionId: json['promotion_id'] as String?,
      storeId: json['restaurant_id'] as String?,
      promoCode: json['code'] as String?,
      percentageOff: json['percentage_off'] as String?,
      maxUse: const IntegerSerializer().fromJson(json['maximum_number_of_use']),
      maxUsePerUser:
          const IntegerSerializer().fromJson(json['maximum_use_per_user']),
      startAt: const TimestampConverter().fromJson(json['start_from']),
      endAt: const TimestampConverter().fromJson(json['end_at']),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      deletedAt: const TimestampConverter().fromJson(json['deleted_at']),
    );

Map<String, dynamic> _$$_PromotionDiscountDTOToJson(
    _$_PromotionDiscountDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('promotion_id', instance.promotionId);
  writeNotNull('restaurant_id', instance.storeId);
  writeNotNull('code', instance.promoCode);
  writeNotNull('percentage_off', instance.percentageOff);
  writeNotNull('maximum_number_of_use',
      const IntegerSerializer().toJson(instance.maxUse));
  writeNotNull('maximum_use_per_user',
      const IntegerSerializer().toJson(instance.maxUsePerUser));
  writeNotNull(
      'start_from', const TimestampConverter().toJson(instance.startAt));
  writeNotNull('end_at', const TimestampConverter().toJson(instance.endAt));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
