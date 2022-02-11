// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_order_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserOrderDTO _$$_UserOrderDTOFromJson(Map<String, dynamic> json) =>
    _$_UserOrderDTO(
      id: json['id'] as String?,
      reference: json['reference'] as String?,
      note: json['note'] as String?,
      price: const DoubleSerializer().fromJson(json['price']),
      riderTip: const DoubleSerializer().fromJson(json['rider_tip']),
      deliveryAddress: json['address'] == null
          ? null
          : UserAddressDTO.fromJson(json['address'] as Map<String, dynamic>),
      status: json['status'] == null
          ? ParcelStatus.PENDING
          : const ParcelStatusSerializer().fromJson(json['status'] as String?),
      type: json['type'] == null
          ? LogisticsType.order
          : const LogisticsTypeSerializer().fromJson(json['type'] as String),
      deliveryCost: const DoubleSerializer().fromJson(json['delivery_fee']),
      paymentMethod: const PaymentMethodSerializer()
          .fromJson(json['payment_method'] as String?),
      deliveryMode: json['delivery_mode'] == null
          ? DeliveryMode.delivery
          : const DeliveryModeSerializer()
              .fromJson(json['delivery_mode'] as String),
      timeToCancelThreshold:
          const IntegerSerializer().fromJson(json['time_to_cancel_threshold']),
      contactlessDelivery:
          const BooleanSerializer().fromJson(json['is_contactless']),
      conversionRate:
          const DoubleSerializer().fromJson(json['conversion_rate']),
      riderId: json['rider_id'] as String?,
      riderLat: const DoubleSerializer().fromJson(json['rider_current_lat']),
      riderLng: const DoubleSerializer().fromJson(json['rider_current_long']),
      orderActiveAt:
          const TimestampConverter().fromJson(json['order_active_at']),
      storeAcceptedAt:
          const TimestampConverter().fromJson(json['restaurant_accepted_at']),
      riderAcceptedAt:
          const TimestampConverter().fromJson(json['rider_accepted_at']),
      riderReceivedAt: const TimestampConverter()
          .fromJson(json['rider_received_package_at']),
      riderDeliveredAt: const TimestampConverter()
          .fromJson(json['rider_delivered_package_at']),
      store: json['restaurant'] == null
          ? null
          : StoreDTO.fromJson(json['restaurant'] as Map<String, dynamic>),
      receiver: json['user'] == null
          ? null
          : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      journey: json['journeyDetails'] == null
          ? null
          : JourneyDetailDTO.fromJson(
              json['journeyDetails'] as Map<String, dynamic>),
      time: const SecondsToDurationConverter().fromJson(json['time']),
      distance: const DoubleSerializer().fromJson(json['distance']),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      deletedAt: const TimestampConverter().fromJson(json['deleted_at']),
      orderData: json['order'] == null
          ? null
          : UserOrderDTO.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserOrderDTOToJson(_$_UserOrderDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('reference', instance.reference);
  writeNotNull('note', instance.note);
  writeNotNull('price', const DoubleSerializer().toJson(instance.price));
  writeNotNull('rider_tip', const DoubleSerializer().toJson(instance.riderTip));
  writeNotNull('address', instance.deliveryAddress?.toJson());
  writeNotNull(
      'status', const ParcelStatusSerializer().toJson(instance.status));
  writeNotNull('type', const LogisticsTypeSerializer().toJson(instance.type));
  writeNotNull(
      'delivery_fee', const DoubleSerializer().toJson(instance.deliveryCost));
  writeNotNull('payment_method',
      const PaymentMethodSerializer().toJson(instance.paymentMethod));
  writeNotNull('delivery_mode',
      const DeliveryModeSerializer().toJson(instance.deliveryMode));
  writeNotNull('time_to_cancel_threshold',
      const IntegerSerializer().toJson(instance.timeToCancelThreshold));
  writeNotNull('is_contactless',
      const BooleanSerializer().toJson(instance.contactlessDelivery));
  writeNotNull('conversion_rate',
      const DoubleSerializer().toJson(instance.conversionRate));
  writeNotNull('rider_id', instance.riderId);
  writeNotNull(
      'rider_current_lat', const DoubleSerializer().toJson(instance.riderLat));
  writeNotNull(
      'rider_current_long', const DoubleSerializer().toJson(instance.riderLng));
  writeNotNull('order_active_at',
      const TimestampConverter().toJson(instance.orderActiveAt));
  writeNotNull('restaurant_accepted_at',
      const TimestampConverter().toJson(instance.storeAcceptedAt));
  writeNotNull('rider_accepted_at',
      const TimestampConverter().toJson(instance.riderAcceptedAt));
  writeNotNull('rider_received_package_at',
      const TimestampConverter().toJson(instance.riderReceivedAt));
  writeNotNull('rider_delivered_package_at',
      const TimestampConverter().toJson(instance.riderDeliveredAt));
  writeNotNull('restaurant', instance.store?.toJson());
  writeNotNull('user', instance.receiver?.toJson());
  writeNotNull('journeyDetails', instance.journey?.toJson());
  writeNotNull(
      'time', const SecondsToDurationConverter().toJson(instance.time));
  writeNotNull('distance', const DoubleSerializer().toJson(instance.distance));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  writeNotNull('order', instance.orderData?.toJson());
  return val;
}

_$_UserOrderListDTO _$$_UserOrderListDTOFromJson(Map<String, dynamic> json) =>
    _$_UserOrderListDTO(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => UserOrderDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      links: json['links'] == null
          ? null
          : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserOrderListDTOToJson(_$_UserOrderListDTO instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('links', instance.links?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  return val;
}
