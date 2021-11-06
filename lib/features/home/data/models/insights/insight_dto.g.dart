// GENERATED CODE - DO NOT MODIFY BY HAND

part of insight_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InsightDTO _$$_InsightDTOFromJson(Map<String, dynamic> json) =>
    _$_InsightDTO(
      completedOrder:
          const IntegerSerializer().fromJson(json['completed_orders']),
      target: const IntegerSerializer().fromJson(json['target']),
      progress: json['percentage'] as int?,
      daysLeft: const IntegerSerializer().fromJson(json['days_left']),
      cashAtHand: const DoubleSerializer().fromJson(json['cash_at_hand']),
      bonus: const DoubleSerializer().fromJson(json['bonus']),
      extraDelivery: const IntegerSerializer().fromJson(json['extra_delivery']),
      activities: json['money_made_from_payment_methods'] == null
          ? null
          : DispatchActivityDTO.fromJson(
              json['money_made_from_payment_methods'] as Map<String, dynamic>),
      planStarted: const TimestampConverter()
          .fromJson(json['current_plan_started'] as String?),
      planEnded: const TimestampConverter()
          .fromJson(json['current_plan_ended'] as String?),
    );

Map<String, dynamic> _$$_InsightDTOToJson(_$_InsightDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('completed_orders',
      const IntegerSerializer().toJson(instance.completedOrder));
  writeNotNull('target', const IntegerSerializer().toJson(instance.target));
  writeNotNull('percentage', instance.progress);
  writeNotNull(
      'days_left', const IntegerSerializer().toJson(instance.daysLeft));
  writeNotNull(
      'cash_at_hand', const DoubleSerializer().toJson(instance.cashAtHand));
  writeNotNull('bonus', const DoubleSerializer().toJson(instance.bonus));
  writeNotNull('extra_delivery',
      const IntegerSerializer().toJson(instance.extraDelivery));
  writeNotNull(
      'money_made_from_payment_methods', instance.activities?.toJson());
  writeNotNull('current_plan_started',
      const TimestampConverter().toJson(instance.planStarted));
  writeNotNull('current_plan_ended',
      const TimestampConverter().toJson(instance.planEnded));
  return val;
}
