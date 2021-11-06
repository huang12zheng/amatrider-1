library send_package.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_package.freezed.dart';

@freezed
@immutable
class SendPackage with _$SendPackage {
  const SendPackage._();

  const factory SendPackage({
    required UniqueId<String?> id,
    required RiderLocation pickup,
    required RiderLocation destination,
    @Default(PackageSize.small) PackageSize packageSize,
    @Default(false) bool isFragile,
    required AmountField<double?> amount,
    required DisplayName receiverFullName,
    required Phone receiverPhone,
    required EmailAddress receiverEmailAddress,
    required BasicTextField<String?> receiverPhoneAlt,
    required BasicTextField<String?> notes,
    @Default(SendPackageStatus.PENDING) SendPackageStatus status,
    PaymentMethod? paymentMethod,
    //
    required UniqueId<String?> riderId,
    required RiderLocation riderLocation,
    @Default(Duration.zero) Duration durationToPickup,
    required BasicTextField<double?> distanceToPickup,
    DateTime? orderActiveAt,
    DateTime? riderAcceptedAt,
    DateTime? riderReceivedAt,
    DateTime? riderDeliveredAt,
    required Sender sender,
    //
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SendPackage;

  String? get distanceKM {
    final _val = distanceToPickup.getOrNull;
    if (_val != null) return '${(_val * Utils.distanceKMConverter).ceil()} KM';
    return null;
  }

  factory SendPackage.blank() => SendPackage(
        id: UniqueId.fromExternal(null),
        pickup: RiderLocation(
          lat: BasicTextField(null),
          lng: BasicTextField(null),
          address: BasicTextField(null),
        ),
        destination: RiderLocation(
          lat: BasicTextField(null),
          lng: BasicTextField(null),
          address: BasicTextField(null),
        ),
        amount: AmountField(null),
        receiverFullName: DisplayName(null),
        receiverPhone: Phone(null),
        receiverEmailAddress: EmailAddress(null, validate: false),
        receiverPhoneAlt: BasicTextField(null, validate: false),
        notes: BasicTextField(null, validate: false),
        distanceToPickup: BasicTextField(null, validate: false),
        durationToPickup: Duration.zero,
        riderId: UniqueId.fromExternal(null),
        sender: Sender.blank(),
        riderLocation: RiderLocation(
          lat: BasicTextField(null),
          lng: BasicTextField(null),
          address: BasicTextField(null),
        ),
      );

  SendPackage merge(SendPackage? package) => copyWith(
        id: package?.id.value != null ? package!.id : id,
        pickup: package?.pickup != null ? package!.pickup : pickup,
        destination:
            package?.destination != null ? package!.destination : destination,
        amount: package?.amount.isNotNull((it) => it as AmountField<double?>,
                orElse: (_) => amount) ??
            amount,
        isFragile: package?.isFragile != null ? package!.isFragile : isFragile,
        paymentMethod: package?.paymentMethod ?? paymentMethod,
        packageSize:
            package?.packageSize != null ? package!.packageSize : packageSize,
        status: package?.status != null ? package!.status : status,
        receiverFullName: package?.receiverFullName.isNotNull(
                (it) => it as DisplayName,
                orElse: (_) => receiverFullName) ??
            receiverFullName,
        receiverEmailAddress: package?.receiverEmailAddress.isNotNull(
                (it) => it as EmailAddress,
                orElse: (_) => receiverEmailAddress) ??
            receiverEmailAddress,
        receiverPhone: package?.receiverPhone
                .isNotNull((it) => it as Phone, orElse: (_) => receiverPhone) ??
            receiverPhone,
        receiverPhoneAlt: package?.receiverPhoneAlt.isNotNull(
                (it) => it as BasicTextField<String?>,
                orElse: (_) => receiverPhoneAlt) ??
            receiverPhoneAlt,
        notes: package?.notes.isNotNull((it) => it as BasicTextField<String?>,
                orElse: (_) => notes) ??
            notes,
        durationToPickup: package?.durationToPickup ?? durationToPickup,
        distanceToPickup: package?.distanceToPickup.isNotNull(
                (it) => it as BasicTextField<double?>,
                orElse: (_) => distanceToPickup) ??
            distanceToPickup,
        riderId: package?.riderId.value != null ? package!.riderId : riderId,
        riderLocation: package?.riderLocation != null
            ? package!.riderLocation
            : riderLocation,
        orderActiveAt: package?.orderActiveAt ?? orderActiveAt,
        riderAcceptedAt: package?.riderAcceptedAt ?? riderAcceptedAt,
        riderReceivedAt: package?.riderReceivedAt ?? riderReceivedAt,
        riderDeliveredAt: package?.riderDeliveredAt ?? riderDeliveredAt,
        sender: package?.sender ?? sender,
        createdAt: createdAt != null ? package!.createdAt : createdAt,
        updatedAt: updatedAt != null ? package!.updatedAt : updatedAt,
      );
}
