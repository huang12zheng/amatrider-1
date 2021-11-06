// GENERATED CODE - DO NOT MODIFY BY HAND

part of dispatch_activity_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DispatchActivityDTO _$$_DispatchActivityDTOFromJson(
        Map<String, dynamic> json) =>
    _$_DispatchActivityDTO(
      card: const DoubleSerializer().fromJson(json['CARD']),
      deliveryWithCard:
          const DoubleSerializer().fromJson(json['PAY_ON_DELIVERY_WITH_CARD']),
      deliveryWithCash:
          const DoubleSerializer().fromJson(json['PAY_ON_DELIVERY_WITH_CASH']),
      transfer:
          const DoubleSerializer().fromJson(json['PAY_WITH_BANK_TRANSFER']),
      flutterwave: const DoubleSerializer().fromJson(json['FLUTTERWAVE']),
      stripe: const DoubleSerializer().fromJson(json['STRIPE']),
      paystack: const DoubleSerializer().fromJson(json['PAYSTACK']),
    );

Map<String, dynamic> _$$_DispatchActivityDTOToJson(
    _$_DispatchActivityDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('CARD', const DoubleSerializer().toJson(instance.card));
  writeNotNull('PAY_ON_DELIVERY_WITH_CARD',
      const DoubleSerializer().toJson(instance.deliveryWithCard));
  writeNotNull('PAY_ON_DELIVERY_WITH_CASH',
      const DoubleSerializer().toJson(instance.deliveryWithCash));
  writeNotNull('PAY_WITH_BANK_TRANSFER',
      const DoubleSerializer().toJson(instance.transfer));
  writeNotNull(
      'FLUTTERWAVE', const DoubleSerializer().toJson(instance.flutterwave));
  writeNotNull('STRIPE', const DoubleSerializer().toJson(instance.stripe));
  writeNotNull('PAYSTACK', const DoubleSerializer().toJson(instance.paystack));
  return val;
}
