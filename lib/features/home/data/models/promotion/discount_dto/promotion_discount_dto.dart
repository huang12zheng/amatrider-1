library promotion_discount_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_discount_dto.g.dart';
part 'promotion_discount_dto.freezed.dart';

PromotionDiscountDTO deserializePromotionDiscountDTO(Map<String, dynamic> json) => PromotionDiscountDTO.fromJson(json);
Map<String, dynamic> serializePromotionDiscountDTO(PromotionDiscountDTO object) => object.toJson();

@freezed
@immutable
class PromotionDiscountDTO with _$PromotionDiscountDTO {
  const PromotionDiscountDTO._();

  const factory PromotionDiscountDTO({
    String? id,
    String? promotionId,
    @JsonKey(name: 'restaurant_id') String? storeId,
    @JsonKey(name: 'code') String? promoCode,
    String? percentageOff,
    @JsonKey(name: 'maximum_number_of_use') @IntegerSerializer() int? maxUse,
    @JsonKey(name: 'maximum_use_per_user') @IntegerSerializer() int? maxUsePerUser,
    @JsonKey(name: 'start_from') @TimestampConverter() DateTime? startAt,
    @JsonKey(name: 'end_at') @TimestampConverter() DateTime? endAt,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? deletedAt,
  }) = _PromotionDiscountDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory PromotionDiscountDTO.fromJson(Map<String, dynamic> json) => _$PromotionDiscountDTOFromJson(json);

  /// Maps the Data Transfer Object to a PromootionDiscount Object.
  PromotionDiscount get domain => PromotionDiscount(
        id: UniqueId.fromExternal(id),
        storeId: UniqueId.fromExternal(storeId),
        promotionId: UniqueId.fromExternal(promotionId),
        promoCode: BasicTextField(promoCode),
        percentageOff: BasicTextField(percentageOff),
        maxUse: BasicTextField(maxUse ?? 0),
        maxUsePerUser: BasicTextField(maxUsePerUser ?? 0),
        startAt: startAt,
        endAt: endAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
