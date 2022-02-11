library send_package_dto.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'send_package_dto.freezed.dart';
part 'send_package_dto.g.dart';

SendPackageDTO deserializeSendPackageDTO(Map<String, dynamic> json) => SendPackageDTO.fromJson(json);
Map<String, dynamic> serializeSendPackageDTO(SendPackageDTO object) => object.toJson();

@freezed
@immutable
class SendPackageDTO with _$SendPackageDTO {
  const factory SendPackageDTO({
    String? id,
    @Default(LogisticsType.order) @LogisticsTypeSerializer() LogisticsType type,
    @JsonKey(name: 'pickup_lat') @DoubleSerializer() double? pickupLat,
    @JsonKey(name: 'pickup_long') @DoubleSerializer() double? pickupLng,
    @JsonKey(name: 'destination_lat') @DoubleSerializer() double? destinationLat,
    @JsonKey(name: 'destination_long') @DoubleSerializer() double? destinationLng,
    @JsonKey(name: 'pickup_address') String? pickupAddress,
    @JsonKey(name: 'destination_address') String? destinationAddress,
    @JsonKey(name: 'package_size') @PackageSizeSerializer() PackageSize? packageSize,
    @JsonKey(name: 'package_is_fragile') @BooleanSerializer() bool? isFragile,
    @DoubleSerializer() double? amount,
    @JsonKey(name: 'payment_method') @PaymentMethodSerializer() PaymentMethod? paymentMethod,
    @JsonKey(name: 'receiver_full_name') String? receiverFullName,
    @JsonKey(name: 'receiver_phone_number') String? receiverPhone,
    @JsonKey(name: 'receiver_email_address') String? receiverEmailAddress,
    @JsonKey(name: 'receiver_alternative_phone_number') String? receiverPhoneAlt,
    @JsonKey(name: 'note') String? notes,
    @JsonKey(name: 'is_contactless') @BooleanSerializer() bool? contactlessDelivery,
    @Default(ParcelStatus.PENDING) @ParcelStatusSerializer() ParcelStatus status,
    //
    @JsonKey(name: 'rider_id') String? riderId,
    @JsonKey(name: 'rider_current_lat') @DoubleSerializer() double? riderLat,
    @JsonKey(name: 'rider_current_long') @DoubleSerializer() double? riderLng,
    @JsonKey(name: 'order_active_at') @TimestampConverter() DateTime? orderActiveAt,
    @JsonKey(name: 'order_cancelled_at') @TimestampConverter() DateTime? orderCancelledAt,
    @JsonKey(name: 'rider_accepted_at') @TimestampConverter() DateTime? riderAcceptedAt,
    @JsonKey(name: 'rider_received_package_at') @TimestampConverter() DateTime? riderReceivedAt,
    @JsonKey(name: 'rider_delivered_package_at') @TimestampConverter() DateTime? riderDeliveredAt,
    @JsonKey(name: 'payment_deposited_at') @TimestampConverter() DateTime? paymentDepositedAt,
    @JsonKey(name: 'payment_deposited_confirmed_at') @TimestampConverter() DateTime? paymentDepositConfirmedAt,
    //
    @SecondsToDurationConverter() Duration? time,
    @DoubleSerializer() double? distance,
    //
    @JsonKey(name: 'journeyDetails') JourneyDetailDTO? journey,
    @JsonKey(name: 'package') SendPackageDTO? packageData,
    @JsonKey(name: 'user') UserDTO? sender,
    //
    @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt,
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
        amount: instance.price.getOrNull,
        receiverFullName: instance.receiver.fullName.getOrNull,
        receiverPhone: instance.receiver.phone.getOrNull,
        receiverEmailAddress: instance.receiver.email.getOrNull,
        receiverPhoneAlt: instance.receiver.phoneAlt.getOrNull,
        notes: instance.notes.getOrNull,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory SendPackageDTO.fromJson(Map<String, dynamic> json) => _$SendPackageDTOFromJson(json);

  /// Maps the Data Transfer Object to a SendPackage Object.
  SendPackage get domain => SendPackage(
        id: UniqueId.fromExternal(id),
        type: LogisticsType.package,
        pickup: UserAddress.blank(lat: pickupLat, lng: pickupLng, address: pickupAddress),
        destination: UserAddress.blank(lat: destinationLat, lng: destinationLng, address: destinationAddress),
        packageSize: packageSize!,
        isFragile: isFragile!,
        paymentMethod: paymentMethod,
        price: AmountField(amount ?? 0),
        receiver: User.blank(
          fullName: receiverFullName,
          email: receiverEmailAddress,
          phone: receiverPhone,
          phoneAlt: receiverPhoneAlt,
        ),
        notes: BasicTextField(notes),
        status: status,
        createdAt: createdAt,
        updatedAt: updatedAt,
        orderActiveAt: orderActiveAt,
        orderCancelledAt: orderCancelledAt,
        contactlessDelivery: contactlessDelivery!,
        riderId: UniqueId.fromExternal(riderId),
        journey: JourneyDetail.blank().merge(journey?.domain),
        riderLocation: RiderLocation(
          lat: BasicTextField(riderLat),
          lng: BasicTextField(riderLng),
          address: BasicTextField(null),
        ),
        riderAcceptedAt: riderAcceptedAt,
        riderDeliveredAt: riderDeliveredAt,
        riderReceivedAt: riderReceivedAt,
        paymentDepositedAt: paymentDepositedAt,
        paymentDepositConfirmedAt: paymentDepositConfirmedAt,
        sender: User.blank().merge(sender?.domain),
        durationToPickup: time ?? Duration.zero,
        distanceToPickup: BasicTextField(distance),
      );
}

@freezed
@immutable
class SendPackageListDTO with _$SendPackageListDTO {
  const SendPackageListDTO._();

  const factory SendPackageListDTO({
    @JsonKey(defaultValue: []) @Default([]) List<SendPackageDTO> data,
    PaginationLinks? links,
    MetaField? meta,
  }) = _SendPackageListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory SendPackageListDTO.fromJson(Map<String, dynamic> json) => _$SendPackageListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<SendPackage> Object.
  KtList<SendPackage> get domain => KtList.from(data.map((e) => e.domain).toList());
}

class PackageSizeSerializer implements JsonConverter<PackageSize?, String?> {
  const PackageSizeSerializer();

  @override
  PackageSize fromJson(String? value) => PackageSize.valueOf(value ?? '');

  @override
  String? toJson(PackageSize? instance) => instance?.name;
}

class ParcelStatusSerializer implements JsonConverter<ParcelStatus, String?> {
  const ParcelStatusSerializer();

  @override
  ParcelStatus fromJson(String? value) => ParcelStatus.valueOf(value ?? '');

  @override
  String? toJson(ParcelStatus instance) => instance.name;
}

class PaymentMethodSerializer implements JsonConverter<PaymentMethod?, String?> {
  const PaymentMethodSerializer();

  @override
  PaymentMethod? fromJson(String? value) => value?.let((it) => PaymentMethod.valueOf(it));

  @override
  String? toJson(PaymentMethod? instance) => instance?.name;
}
