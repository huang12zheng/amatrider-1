library send_package_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_package_dto.freezed.dart';
part 'send_package_dto.g.dart';

@freezed
@immutable
class SendPackageDTO with _$SendPackageDTO {
  const factory SendPackageDTO({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false, name: 'pickup_lat') double? pickupLat,
    @JsonKey(includeIfNull: false, name: 'pickup_long') double? pickupLng,
    @JsonKey(includeIfNull: false, name: 'destination_lat')
        double? destinationLat,
    @JsonKey(includeIfNull: false, name: 'destination_long')
        double? destinationLng,
    @JsonKey(name: 'pickup_address') String? pickupAddress,
    @JsonKey(name: 'destination_address') String? destinationAddress,
    @JsonKey(includeIfNull: false, name: 'package_size')
    @PackageSizeSerializer()
        PackageSize? packageSize,
    @JsonKey(includeIfNull: false, name: 'package_is_fragile')
    @BooleanSerializer()
        bool? isFragile,
    @JsonKey(includeIfNull: false) @DoubleSerializer() double? amount,
    @JsonKey(includeIfNull: false, name: 'payment_method')
    @PaymentMethodSerializer()
        PaymentMethod? paymentMethod,
    @JsonKey(includeIfNull: false, name: 'receiver_full_name')
        String? receiverFullName,
    @JsonKey(includeIfNull: false, name: 'receiver_phone_number')
        String? receiverPhone,
    @JsonKey(includeIfNull: false, name: 'receiver_email_address')
        String? receiverEmailAddress,
    @JsonKey(includeIfNull: false, name: 'receiver_alternative_phone_number')
        String? receiverPhoneAlt,
    @JsonKey(includeIfNull: false, name: 'note') String? notes,
    @Default(SendPackageStatus.PENDING)
    @SendPackageStatusSerializer()
        SendPackageStatus status,
    //
    @JsonKey(includeIfNull: false, name: 'rider_id') String? riderId,
    @JsonKey(includeIfNull: false, name: 'rider_current_lat')
    @DoubleSerializer()
        double? riderLat,
    @JsonKey(includeIfNull: false, name: 'rider_current_long')
    @DoubleSerializer()
        double? riderLng,
    @JsonKey(includeIfNull: false, name: 'order_active_at')
    @TimestampConverter()
        DateTime? orderActiveAt,
    @JsonKey(includeIfNull: false, name: 'rider_accepted_at')
    @TimestampConverter()
        DateTime? riderAcceptedAt,
    @JsonKey(includeIfNull: false, name: 'rider_received_package_at')
    @TimestampConverter()
        DateTime? riderReceivedAt,
    @JsonKey(includeIfNull: false, name: 'rider_delivered_package_at')
    @TimestampConverter()
        DateTime? riderDeliveredAt,
    @JsonKey(includeIfNull: false) @SecondsToDurationConverter() Duration? time,
    @JsonKey(includeIfNull: false) @DoubleSerializer() double? distance,
    @JsonKey(includeIfNull: false, name: 'journeyDetails')
        JourneyDetailDTO? journey,
    @JsonKey(includeIfNull: false, name: 'package') SendPackageDTO? packageData,
    //
    @JsonKey(includeIfNull: false, name: 'created_at')
    @TimestampConverter()
        DateTime? createdAt,
    @JsonKey(includeIfNull: false, name: 'updated_at')
    @TimestampConverter()
        DateTime? updatedAt,
  }) = _SendPackageDTO;

  const SendPackageDTO._();

  /// Maps SendPackage to a Data Transfer Object.
  factory SendPackageDTO.fromDomain(SendPackage instance) => SendPackageDTO(
        pickupLat: instance.pickup.lat.getOrNull,
        pickupLng: instance.pickup.lng.getOrNull,
        destinationLat: instance.destination.lat.getOrNull,
        destinationLng: instance.destination.lng.getOrNull,
        packageSize: instance.packageSize,
        isFragile: instance.isFragile,
        amount: instance.amount.getOrNull,
        receiverFullName: instance.receiverFullName.getOrNull,
        receiverPhone: instance.receiverPhone.getOrNull,
        receiverEmailAddress: instance.receiverEmailAddress.getOrNull,
        receiverPhoneAlt: instance.receiverPhoneAlt.getOrNull,
        notes: instance.notes.getOrNull,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory SendPackageDTO.fromJson(Map<String, dynamic> json) =>
      _$SendPackageDTOFromJson(json);

  /// Maps the Data Transfer Object to a SendPackage Object.
  SendPackage get domain => SendPackage(
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
        packageSize: packageSize!,
        isFragile: isFragile!,
        paymentMethod: paymentMethod,
        amount: AmountField(amount),
        receiverFullName: DisplayName(receiverFullName),
        receiverPhone: Phone(receiverPhone),
        receiverEmailAddress: EmailAddress(receiverEmailAddress),
        receiverPhoneAlt: BasicTextField(receiverPhoneAlt),
        notes: BasicTextField(notes),
        status: status,
        createdAt: createdAt,
        updatedAt: updatedAt,
        orderActiveAt: orderActiveAt,
        riderId: UniqueId.fromExternal(riderId),
        riderLocation: RiderLocation(
          lat: BasicTextField(riderLat),
          lng: BasicTextField(riderLng),
          address: BasicTextField(null),
        ),
        riderAcceptedAt: riderAcceptedAt,
        riderDeliveredAt: riderDeliveredAt,
        riderReceivedAt: riderReceivedAt,
        durationToPickup: time ?? Duration.zero,
        distanceToPickup: BasicTextField(distance),
      );
}

class PackageSizeSerializer implements JsonConverter<PackageSize?, String?> {
  const PackageSizeSerializer();

  @override
  PackageSize fromJson(String? value) => PackageSize.valueOf(value ?? '');

  @override
  String? toJson(PackageSize? instance) => instance?.name;
}

class SendPackageStatusSerializer
    implements JsonConverter<SendPackageStatus, String?> {
  const SendPackageStatusSerializer();

  @override
  SendPackageStatus fromJson(String? value) =>
      SendPackageStatus.valueOf(value ?? '');

  @override
  String? toJson(SendPackageStatus instance) => instance.name;
}

class PaymentMethodSerializer
    implements JsonConverter<PaymentMethod?, String?> {
  const PaymentMethodSerializer();

  @override
  PaymentMethod? fromJson(String? value) =>
      value?.let((it) => PaymentMethod.valueOf(it));

  @override
  String? toJson(PaymentMethod? instance) => instance?.name;
}
