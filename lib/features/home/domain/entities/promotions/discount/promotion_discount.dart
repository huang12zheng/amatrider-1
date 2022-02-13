library promotion_discount.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_discount.freezed.dart';

@freezed
@immutable
class PromotionDiscount extends BaseEntity with _$PromotionDiscount {
  const PromotionDiscount._();

  const factory PromotionDiscount({
    required UniqueId<String?> id,
    required UniqueId<String?> promotionId,
    required UniqueId<String?> storeId,
    required BasicTextField<String?> promoCode,
    required BasicTextField<String?> percentageOff,
    required BasicTextField<int> maxUse,
    required BasicTextField<int> maxUsePerUser,
    DateTime? startAt,
    DateTime? endAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _PromotionDiscount;

  factory PromotionDiscount.blank() => PromotionDiscount(
        id: UniqueId.fromExternal(null),
        storeId: UniqueId.fromExternal(null),
        promotionId: UniqueId.fromExternal(null),
        promoCode: BasicTextField(null),
        percentageOff: BasicTextField(null),
        maxUse: BasicTextField(0),
        maxUsePerUser: BasicTextField(0),
      );
}
