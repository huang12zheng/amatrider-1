// GENERATED CODE - DO NOT MODIFY BY HAND

part of insight_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InsightDTO _$$_InsightDTOFromJson(Map<String, dynamic> json) =>
    _$_InsightDTO(
      completedOrders:
          const IntegerSerializer().fromJson(json['completed_orders']),
      target: const IntegerSerializer().fromJson(json['target']),
      progress: const IntegerSerializer().fromJson(json['percentage']),
      daysLeft: const IntegerSerializer().fromJson(json['days_left']),
      cashAtHand: const DoubleSerializer().fromJson(json['cash_at_hand']),
      currentBonus:
          const DoubleSerializer().fromJson(json['total_bonus_claimable']),
      totalBonusClaimed:
          const DoubleSerializer().fromJson(json['total_bonus_claimed']),
      totalBonusAvailable:
          const DoubleSerializer().fromJson(json['total_bonus_available']),
      canClaimBonus: json['can_claim_bonus'] as bool? ?? false,
      bonusPerExtraDelivery:
          const DoubleSerializer().fromJson(json['bonus_per_extra_delivery']),
      completedExtraDeliveries:
          const IntegerSerializer().fromJson(json['completed_extra_delivery']),
      totalExtraDeliveries:
          const IntegerSerializer().fromJson(json['available_extra_delivery']),
      activities: json['money_made_from_payment_methods'] == null
          ? null
          : DispatchActivityDTO.fromJson(
              json['money_made_from_payment_methods'] as Map<String, dynamic>),
      planStarted:
          const TimestampConverter().fromJson(json['current_plan_started']),
      planEnded:
          const TimestampConverter().fromJson(json['current_plan_ended']),
      avgRating: const DoubleSerializer().fromJson(json['average_rating']),
      insightData: json['insight'] == null
          ? null
          : InsightDTO.fromJson(json['insight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InsightDTOToJson(_$_InsightDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('completed_orders',
      const IntegerSerializer().toJson(instance.completedOrders));
  writeNotNull('target', const IntegerSerializer().toJson(instance.target));
  writeNotNull(
      'percentage', const IntegerSerializer().toJson(instance.progress));
  writeNotNull(
      'days_left', const IntegerSerializer().toJson(instance.daysLeft));
  writeNotNull(
      'cash_at_hand', const DoubleSerializer().toJson(instance.cashAtHand));
  writeNotNull('total_bonus_claimable',
      const DoubleSerializer().toJson(instance.currentBonus));
  writeNotNull('total_bonus_claimed',
      const DoubleSerializer().toJson(instance.totalBonusClaimed));
  writeNotNull('total_bonus_available',
      const DoubleSerializer().toJson(instance.totalBonusAvailable));
  val['can_claim_bonus'] = instance.canClaimBonus;
  writeNotNull('bonus_per_extra_delivery',
      const DoubleSerializer().toJson(instance.bonusPerExtraDelivery));
  writeNotNull('completed_extra_delivery',
      const IntegerSerializer().toJson(instance.completedExtraDeliveries));
  writeNotNull('available_extra_delivery',
      const IntegerSerializer().toJson(instance.totalExtraDeliveries));
  writeNotNull(
      'money_made_from_payment_methods', instance.activities?.toJson());
  writeNotNull('current_plan_started',
      const TimestampConverter().toJson(instance.planStarted));
  writeNotNull('current_plan_ended',
      const TimestampConverter().toJson(instance.planEnded));
  writeNotNull(
      'average_rating', const DoubleSerializer().toJson(instance.avgRating));
  writeNotNull('insight', instance.insightData?.toJson());
  return val;
}
