library delivery_history_dto.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_history_dto.g.dart';
part 'delivery_history_dto.freezed.dart';

@freezed
@immutable
class DeliveryHistoryDTO with _$DeliveryHistoryDTO {
  const DeliveryHistoryDTO._();

  const factory DeliveryHistoryDTO({
    String? id,
    @JsonKey(name: 'pickup_lat') @DoubleSerializer() double? pickupLat,
    @JsonKey(name: 'pickup_long') @DoubleSerializer() double? pickupLng,
    @JsonKey(name: 'destination_lat')
    @DoubleSerializer()
        double? destinationLat,
    @JsonKey(name: 'destination_long')
    @DoubleSerializer()
        double? destinationLng,
    @JsonKey(name: 'pickup_address') String? pickupAddress,
    @JsonKey(name: 'destination_address') String? destinationAddress,
    @DoubleSerializer() double? amount,
    @JsonKey(name: 'receiver_full_name') String? receiverFullName,
    @JsonKey(name: 'receiver_phone_number') String? receiverPhone,
    @JsonKey(name: 'receiver_email_address') String? receiverEmailAddress,
    @JsonKey(name: 'receiver_alternative_phone_number')
        String? receiverPhoneAlt,
    @JsonKey(name: 'note') String? notes,
    @JsonKey(name: 'payment_method')
    @PaymentMethodSerializer()
        PaymentMethod? paymentMethod,
    //
    @JsonKey(name: 'rider_id') String? riderId,
    @JsonKey(name: 'rider_current_lat') @DoubleSerializer() double? riderLat,
    @JsonKey(name: 'rider_current_long') @DoubleSerializer() double? riderLng,
    @SecondsToDurationConverter() Duration? time,
    @DoubleSerializer() double? distance,
    //
    @JsonKey(name: 'rider') RiderDTO? rider,
    @JsonKey(name: 'user') SenderDTO? sender,
    //
    @JsonKey(name: 'order_active_at')
    @TimestampConverter()
        DateTime? orderActiveAt,
    @JsonKey(name: 'rider_accepted_at')
    @TimestampConverter()
        DateTime? riderAcceptedAt,
    @JsonKey(name: 'rider_received_package_at')
    @TimestampConverter()
        DateTime? riderReceivedAt,
    @JsonKey(name: 'rider_delivered_package_at')
    @TimestampConverter()
        DateTime? riderDeliveredAt,
    @JsonKey(name: 'payment_deposited_at')
    @TimestampConverter()
        DateTime? depositedAt,
    @JsonKey(name: 'payment_deposited_confirmed_at')
    @TimestampConverter()
        DateTime? depositConfirmedAt,
    @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt,
  }) = _DeliveryHistoryDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DeliveryHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$DeliveryHistoryDTOFromJson(json);

  /// Maps the Data Transfer Object to a DeliveryHistory Object.
  DeliveryHistory get domain => DeliveryHistory(
        id: UniqueId.fromExternal(id),
        pickup: RiderLocation(
          lat: BasicTextField(pickupLat),
          lng: BasicTextField(pickupLng),
          address: BasicTextField(pickupAddress),
        ),
        destination: RiderLocation(
          lat: BasicTextField(destinationLat),
          lng: BasicTextField(destinationLng),
          address: BasicTextField(destinationAddress),
        ),
        paymentMethod: paymentMethod!,
        amount: AmountField(amount),
        receiverFullName: DisplayName(receiverFullName),
        receiverPhone: Phone(receiverPhone),
        receiverEmailAddress: EmailAddress(receiverEmailAddress),
        receiverPhoneAlt: BasicTextField(receiverPhoneAlt),
        notes: BasicTextField(notes),
        //
        riderId: UniqueId.fromExternal(riderId),
        riderLocation: RiderLocation(
          lat: BasicTextField(riderLat),
          lng: BasicTextField(riderLng),
          address: BasicTextField(null),
        ),
        durationToPickup: time ?? Duration.zero,
        distanceToPickup: BasicTextField(distance),
        //
        rider: Rider.blank().merge(rider?.domain),
        sender: Sender.blank().merge(sender?.domain),
        //
        orderActiveAt: orderActiveAt,
        riderAcceptedAt: riderAcceptedAt,
        riderDeliveredAt: riderDeliveredAt,
        riderReceivedAt: riderReceivedAt,
        depositedAt: depositedAt,
        depositConfirmedAt: depositConfirmedAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
