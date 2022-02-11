library user_order_dto.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/data.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'user_order_dto.freezed.dart';
part 'user_order_dto.g.dart';

UserOrderDTO deserializeUserOrderDTO(Map<String, dynamic> json) => UserOrderDTO.fromJson(json);
Map<String, dynamic> serializeUserOrderDTO(UserOrderDTO object) => object.toJson();

@freezed
@immutable
class UserOrderDTO with _$UserOrderDTO {
  const UserOrderDTO._();

  const factory UserOrderDTO({
    String? id,
    String? reference,
    String? note,
    @DoubleSerializer() double? price,
    @DoubleSerializer() double? riderTip,
    @JsonKey(name: 'address') UserAddressDTO? deliveryAddress,
    @Default(ParcelStatus.PENDING) @ParcelStatusSerializer() ParcelStatus status,
    @Default(LogisticsType.order) @LogisticsTypeSerializer() LogisticsType type,
    @JsonKey(name: 'delivery_fee') @DoubleSerializer() double? deliveryCost,
    @JsonKey(name: 'payment_method') @PaymentMethodSerializer() PaymentMethod? paymentMethod,
    @Default(DeliveryMode.delivery) @DeliveryModeSerializer() DeliveryMode deliveryMode,
    @JsonKey(name: 'time_to_cancel_threshold') @IntegerSerializer() int? timeToCancelThreshold,
    @JsonKey(name: 'is_contactless') @BooleanSerializer() bool? contactlessDelivery,
    @DoubleSerializer() double? conversionRate,
    @JsonKey(name: 'rider_id') String? riderId,
    @JsonKey(name: 'rider_current_lat') @DoubleSerializer() double? riderLat,
    @JsonKey(name: 'rider_current_long') @DoubleSerializer() double? riderLng,
    @JsonKey(name: 'order_active_at') @TimestampConverter() DateTime? orderActiveAt,
    @JsonKey(name: 'restaurant_accepted_at') @TimestampConverter() DateTime? storeAcceptedAt,
    @JsonKey(name: 'rider_accepted_at') @TimestampConverter() DateTime? riderAcceptedAt,
    @JsonKey(name: 'rider_received_package_at') @TimestampConverter() DateTime? riderReceivedAt,
    @JsonKey(name: 'rider_delivered_package_at') @TimestampConverter() DateTime? riderDeliveredAt,
    //
    @JsonKey(name: 'restaurant') StoreDTO? store,
    @JsonKey(name: 'user') UserDTO? receiver,
    @JsonKey(name: 'journeyDetails') JourneyDetailDTO? journey,
    //
    @SecondsToDurationConverter() Duration? time,
    @DoubleSerializer() double? distance,
    //
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? deletedAt,
    //
    @JsonKey(name: 'order') UserOrderDTO? orderData,
  }) = _UserOrderDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserOrderDTO.fromJson(Map<String, dynamic> json) => _$UserOrderDTOFromJson(json);

  /// Maps the Data Transfer Object to a UserOrder Object.
  UserOrder get domain => UserOrder(
        id: UniqueId.fromExternal(id),
        riderId: UniqueId.fromExternal(riderId),
        reference: BasicTextField(reference),
        deliveryAddress: deliveryAddress?.domain,
        status: status,
        type: LogisticsType.order,
        price: AmountField(price ?? 0),
        paymentMethod: paymentMethod,
        deliveryMode: deliveryMode,
        riderTip: AmountField(riderTip),
        store: store?.domain ?? Store.blank(),
        notes: BasicTextField(note),
        contactlessDelivery: contactlessDelivery!,
        receiver: receiver?.domain ?? User.blank(),
        journey: journey?.domain,
        orderActiveAt: orderActiveAt,
        storeAcceptedAt: storeAcceptedAt,
        riderAcceptedAt: riderAcceptedAt,
        riderReceivedAt: riderReceivedAt,
        riderDeliveredAt: riderDeliveredAt,
        durationToPickup: time ?? Duration.zero,
        distanceToPickup: BasicTextField(distance),
        riderLocation: RiderLocation(
          lat: BasicTextField(riderLat),
          lng: BasicTextField(riderLng),
          address: BasicTextField(null),
        ),
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}

UserOrderListDTO deserializeUserOrderListDTO(Map<String, dynamic> json) => UserOrderListDTO.fromJson(json);
Map<String, dynamic> serializeUserOrderListDTO(UserOrderListDTO object) => object.toJson();

@freezed
@immutable
class UserOrderListDTO with _$UserOrderListDTO {
  const UserOrderListDTO._();

  const factory UserOrderListDTO({
    @Default([]) List<UserOrderDTO> data,
    PaginationLinks? links,
    MetaField? meta,
  }) = _UserOrderListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserOrderListDTO.fromJson(Map<String, dynamic> json) => _$UserOrderListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<UserOrder> Object.
  KtList<UserOrder> get domain => KtList.from(data.map((e) => e.domain));
}
