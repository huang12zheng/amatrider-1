library insight_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'insight_dto.g.dart';
part 'insight_dto.freezed.dart';

@freezed
@immutable
class InsightDTO with _$InsightDTO {
  const InsightDTO._();

  const factory InsightDTO({
    @JsonKey(name: 'completed_orders') @IntegerSerializer() int? completedOrders,
    @IntegerSerializer() int? target,
    @JsonKey(name: 'percentage') @IntegerSerializer() int? progress,
    @JsonKey(name: 'days_left') @IntegerSerializer() int? daysLeft,
    @JsonKey(name: 'cash_at_hand') @DoubleSerializer() double? cashAtHand,
    //
    @JsonKey(name: 'total_bonus_claimable') @DoubleSerializer() double? currentBonus,
    @JsonKey(name: 'total_bonus_claimed') @DoubleSerializer() double? totalBonusClaimed,
    @JsonKey(name: 'total_bonus_available') @DoubleSerializer() double? totalBonusAvailable,
    @Default(false) @JsonKey(name: 'can_claim_bonus') @BooleanSerializer() bool canClaimBonus,
    //
    @JsonKey(name: 'bonus_per_extra_delivery') @DoubleSerializer() double? bonusPerExtraDelivery,
    @JsonKey(name: 'completed_extra_delivery') @IntegerSerializer() int? completedExtraDeliveries,
    @JsonKey(name: 'available_extra_delivery') @IntegerSerializer() int? totalExtraDeliveries,
    //
    @JsonKey(name: 'money_made_from_payment_methods') DispatchActivityDTO? activities,
    @JsonKey(name: 'current_plan_started') @TimestampConverter() DateTime? planStarted,
    @JsonKey(name: 'current_plan_ended') @TimestampConverter() DateTime? planEnded,
    @JsonKey(name: 'average_rating') @DoubleSerializer() double? avgRating,
    //
    @JsonKey(name: 'insight') InsightDTO? insightData,
  }) = _InsightDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory InsightDTO.fromJson(Map<String, dynamic> json) => _$InsightDTOFromJson(json);

  /// Maps the Data Transfer Object to a Insight Object.
  Insight get domain => Insight(
        completed: BasicTextField(completedOrders),
        target: BasicTextField(target),
        progress: BasicTextField(progress),
        daysLeft: BasicTextField(daysLeft),
        cashAtHand: AmountField(cashAtHand),
        currentBonus: AmountField(currentBonus),
        totalBonusClaimed: AmountField(totalBonusClaimed),
        totalBonusAvailable: AmountField(totalBonusAvailable),
        canClaimBonus: canClaimBonus,
        bonusPerExtraDelivery: AmountField(bonusPerExtraDelivery),
        completedExtraDeliveries: BasicTextField(completedExtraDeliveries),
        totalExtraDeliveries: BasicTextField(totalExtraDeliveries),
        activities: activities?.domain,
        planStarted: planStarted,
        planEnded: planEnded,
        avgRating: BasicTextField(avgRating),
      );
}
