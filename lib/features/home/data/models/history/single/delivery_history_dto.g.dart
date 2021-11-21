// GENERATED CODE - DO NOT MODIFY BY HAND

part of delivery_history_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryHistoryDTO _$$_DeliveryHistoryDTOFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryHistoryDTO(
      id: json['id'] as String?,
      pickupLat: const DoubleSerializer().fromJson(json['pickup_lat']),
      pickupLng: const DoubleSerializer().fromJson(json['pickup_long']),
      destinationLat:
          const DoubleSerializer().fromJson(json['destination_lat']),
      destinationLng:
          const DoubleSerializer().fromJson(json['destination_long']),
      pickupAddress: json['pickup_address'] as String?,
      destinationAddress: json['destination_address'] as String?,
      amount: const DoubleSerializer().fromJson(json['amount']),
      receiverFullName: json['receiver_full_name'] as String?,
      receiverPhone: json['receiver_phone_number'] as String?,
      receiverEmailAddress: json['receiver_email_address'] as String?,
      receiverPhoneAlt: json['receiver_alternative_phone_number'] as String?,
      notes: json['note'] as String?,
      paymentMethod: const PaymentMethodSerializer()
          .fromJson(json['payment_method'] as String?),
      riderId: json['rider_id'] as String?,
      riderLat: const DoubleSerializer().fromJson(json['rider_current_lat']),
      riderLng: const DoubleSerializer().fromJson(json['rider_current_long']),
      time: const SecondsToDurationConverter().fromJson(json['time']),
      distance: const DoubleSerializer().fromJson(json['distance']),
      rider: json['rider'] == null
          ? null
          : RiderDTO.fromJson(json['rider'] as Map<String, dynamic>),
      sender: json['user'] == null
          ? null
          : SenderDTO.fromJson(json['user'] as Map<String, dynamic>),
      orderActiveAt:
          const TimestampConverter().fromJson(json['order_active_at']),
      orderCancelledAt:
          const TimestampConverter().fromJson(json['order_cancelled_at']),
      riderAcceptedAt:
          const TimestampConverter().fromJson(json['rider_accepted_at']),
      riderReceivedAt: const TimestampConverter()
          .fromJson(json['rider_received_package_at']),
      riderDeliveredAt: const TimestampConverter()
          .fromJson(json['rider_delivered_package_at']),
      depositedAt:
          const TimestampConverter().fromJson(json['payment_deposited_at']),
      depositConfirmedAt: const TimestampConverter()
          .fromJson(json['payment_deposited_confirmed_at']),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      historyData: json['history'] == null
          ? null
          : DeliveryHistoryDTO.fromJson(
              json['history'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeliveryHistoryDTOToJson(
    _$_DeliveryHistoryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'pickup_lat', const DoubleSerializer().toJson(instance.pickupLat));
  writeNotNull(
      'pickup_long', const DoubleSerializer().toJson(instance.pickupLng));
  writeNotNull('destination_lat',
      const DoubleSerializer().toJson(instance.destinationLat));
  writeNotNull('destination_long',
      const DoubleSerializer().toJson(instance.destinationLng));
  writeNotNull('pickup_address', instance.pickupAddress);
  writeNotNull('destination_address', instance.destinationAddress);
  writeNotNull('amount', const DoubleSerializer().toJson(instance.amount));
  writeNotNull('receiver_full_name', instance.receiverFullName);
  writeNotNull('receiver_phone_number', instance.receiverPhone);
  writeNotNull('receiver_email_address', instance.receiverEmailAddress);
  writeNotNull('receiver_alternative_phone_number', instance.receiverPhoneAlt);
  writeNotNull('note', instance.notes);
  writeNotNull('payment_method',
      const PaymentMethodSerializer().toJson(instance.paymentMethod));
  writeNotNull('rider_id', instance.riderId);
  writeNotNull(
      'rider_current_lat', const DoubleSerializer().toJson(instance.riderLat));
  writeNotNull(
      'rider_current_long', const DoubleSerializer().toJson(instance.riderLng));
  writeNotNull(
      'time', const SecondsToDurationConverter().toJson(instance.time));
  writeNotNull('distance', const DoubleSerializer().toJson(instance.distance));
  writeNotNull('rider', instance.rider?.toJson());
  writeNotNull('user', instance.sender?.toJson());
  writeNotNull('order_active_at',
      const TimestampConverter().toJson(instance.orderActiveAt));
  writeNotNull('order_cancelled_at',
      const TimestampConverter().toJson(instance.orderCancelledAt));
  writeNotNull('rider_accepted_at',
      const TimestampConverter().toJson(instance.riderAcceptedAt));
  writeNotNull('rider_received_package_at',
      const TimestampConverter().toJson(instance.riderReceivedAt));
  writeNotNull('rider_delivered_package_at',
      const TimestampConverter().toJson(instance.riderDeliveredAt));
  writeNotNull('payment_deposited_at',
      const TimestampConverter().toJson(instance.depositedAt));
  writeNotNull('payment_deposited_confirmed_at',
      const TimestampConverter().toJson(instance.depositConfirmedAt));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull('history', instance.historyData?.toJson());
  return val;
}
