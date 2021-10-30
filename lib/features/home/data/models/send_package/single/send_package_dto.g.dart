// GENERATED CODE - DO NOT MODIFY BY HAND

part of send_package_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendPackageDTO _$$_SendPackageDTOFromJson(Map<String, dynamic> json) =>
    _$_SendPackageDTO(
      id: json['id'] as String?,
      pickupLat: (json['pickup_lat'] as num?)?.toDouble(),
      pickupLng: (json['pickup_long'] as num?)?.toDouble(),
      destinationLat: (json['destination_lat'] as num?)?.toDouble(),
      destinationLng: (json['destination_long'] as num?)?.toDouble(),
      pickupAddress: json['pickup_address'] as String?,
      destinationAddress: json['destination_address'] as String?,
      packageSize: const PackageSizeSerializer()
          .fromJson(json['package_size'] as String?),
      isFragile: const BooleanSerializer().fromJson(json['package_is_fragile']),
      amount: const DoubleSerializer().fromJson(json['amount']),
      paymentMethod: const PaymentMethodSerializer()
          .fromJson(json['payment_method'] as String?),
      receiverFullName: json['receiver_full_name'] as String?,
      receiverPhone: json['receiver_phone_number'] as String?,
      receiverEmailAddress: json['receiver_email_address'] as String?,
      receiverPhoneAlt: json['receiver_alternative_phone_number'] as String?,
      notes: json['note'] as String?,
      status: json['status'] == null
          ? SendPackageStatus.PENDING
          : const SendPackageStatusSerializer()
              .fromJson(json['status'] as String?),
      riderId: json['rider_id'] as String?,
      riderLat: const DoubleSerializer().fromJson(json['rider_current_lat']),
      riderLng: const DoubleSerializer().fromJson(json['rider_current_long']),
      orderActiveAt: const TimestampConverter()
          .fromJson(json['order_active_at'] as String?),
      riderAcceptedAt: const TimestampConverter()
          .fromJson(json['rider_accepted_at'] as String?),
      riderReceivedAt: const TimestampConverter()
          .fromJson(json['rider_received_package_at'] as String?),
      riderDeliveredAt: const TimestampConverter()
          .fromJson(json['rider_delivered_package_at'] as String?),
      time: const SecondsToDurationConverter().fromJson(json['time']),
      distance: const DoubleSerializer().fromJson(json['distance']),
      journey: json['journeyDetails'] == null
          ? null
          : JourneyDetailDTO.fromJson(
              json['journeyDetails'] as Map<String, dynamic>),
      packageData: json['package'] == null
          ? null
          : SendPackageDTO.fromJson(json['package'] as Map<String, dynamic>),
      createdAt:
          const TimestampConverter().fromJson(json['created_at'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updated_at'] as String?),
    );

Map<String, dynamic> _$$_SendPackageDTOToJson(_$_SendPackageDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('pickup_lat', instance.pickupLat);
  writeNotNull('pickup_long', instance.pickupLng);
  writeNotNull('destination_lat', instance.destinationLat);
  writeNotNull('destination_long', instance.destinationLng);
  val['pickup_address'] = instance.pickupAddress;
  val['destination_address'] = instance.destinationAddress;
  writeNotNull('package_size',
      const PackageSizeSerializer().toJson(instance.packageSize));
  writeNotNull('package_is_fragile',
      const BooleanSerializer().toJson(instance.isFragile));
  writeNotNull('amount', const DoubleSerializer().toJson(instance.amount));
  writeNotNull('payment_method',
      const PaymentMethodSerializer().toJson(instance.paymentMethod));
  writeNotNull('receiver_full_name', instance.receiverFullName);
  writeNotNull('receiver_phone_number', instance.receiverPhone);
  writeNotNull('receiver_email_address', instance.receiverEmailAddress);
  writeNotNull('receiver_alternative_phone_number', instance.receiverPhoneAlt);
  writeNotNull('note', instance.notes);
  val['status'] = const SendPackageStatusSerializer().toJson(instance.status);
  writeNotNull('rider_id', instance.riderId);
  writeNotNull(
      'rider_current_lat', const DoubleSerializer().toJson(instance.riderLat));
  writeNotNull(
      'rider_current_long', const DoubleSerializer().toJson(instance.riderLng));
  writeNotNull('order_active_at',
      const TimestampConverter().toJson(instance.orderActiveAt));
  writeNotNull('rider_accepted_at',
      const TimestampConverter().toJson(instance.riderAcceptedAt));
  writeNotNull('rider_received_package_at',
      const TimestampConverter().toJson(instance.riderReceivedAt));
  writeNotNull('rider_delivered_package_at',
      const TimestampConverter().toJson(instance.riderDeliveredAt));
  writeNotNull(
      'time', const SecondsToDurationConverter().toJson(instance.time));
  writeNotNull('distance', const DoubleSerializer().toJson(instance.distance));
  writeNotNull('journeyDetails', instance.journey);
  writeNotNull('package', instance.packageData);
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}
