library send_package.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_package.freezed.dart';

@freezed
@immutable
class SendPackage extends Logistics with _$SendPackage {
  const SendPackage._();

  const factory SendPackage({
    required UniqueId<String?> id,
    required UniqueId<String?> riderId,
    required UserAddress pickup,
    required UserAddress destination,
    @Default(PackageSize.small) PackageSize packageSize,
    required LogisticsType type,
    @Default(false) bool isFragile,
    required AmountField<double> price,
    required BasicTextField<String?> notes,
    @Default(ParcelStatus.PENDING) ParcelStatus status,
    PaymentMethod? paymentMethod,
    //
    required RiderLocation riderLocation,
    @Default(false) bool contactlessDelivery,
    @Default(Duration.zero) Duration durationToPickup,
    required BasicTextField<double?> distanceToPickup,
    //
    DateTime? orderActiveAt,
    DateTime? orderCancelledAt,
    DateTime? riderAcceptedAt,
    DateTime? riderReceivedAt,
    DateTime? riderDeliveredAt,
    DateTime? paymentDepositedAt,
    DateTime? paymentDepositConfirmedAt,
    //
    required User sender,
    required User receiver,
    required JourneyDetail journey,
    //
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _SendPackage;

  String? get distanceKM {
    final _val = distanceToPickup.getOrNull;
    if (_val != null) return '${(_val * Utils.distanceKMConverter).ceil()} KM';
    return null;
  }

  @override
  Store get store => Store.blank();

  factory SendPackage.blank() => SendPackage(
        id: UniqueId.fromExternal(null),
        pickup: UserAddress.blank(),
        destination: UserAddress.blank(),
        type: LogisticsType.package,
        price: AmountField(0),
        receiver: User.blank(),
        notes: BasicTextField(null, validate: false),
        distanceToPickup: BasicTextField(null, validate: false),
        durationToPickup: Duration.zero,
        riderId: UniqueId.fromExternal(null),
        sender: User.blank(),
        journey: JourneyDetail.blank(),
        riderLocation: RiderLocation(
          lat: BasicTextField(null),
          lng: BasicTextField(null),
          address: BasicTextField(null),
        ),
      );

  SendPackage merge(SendPackage? package) => copyWith(
        id: package?.id.value != null ? package!.id : id,
        pickup: package?.pickup != null ? package!.pickup : pickup,
        destination: package?.destination != null ? package!.destination : destination,
        price: package?.price.isNotNull((it) => it as AmountField<double>, orElse: (_) => price) ?? price,
        isFragile: package?.isFragile != null ? package!.isFragile : isFragile,
        paymentMethod: package?.paymentMethod ?? paymentMethod,
        packageSize: package?.packageSize != null ? package!.packageSize : packageSize,
        type: package?.type ?? type,
        status: package?.status != null ? package!.status : status,
        receiver: package?.receiver != null ? package!.receiver : receiver,
        notes: package?.notes.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => notes) ?? notes,
        durationToPickup: package?.durationToPickup ?? durationToPickup,
        distanceToPickup:
            package?.distanceToPickup.isNotNull((it) => it as BasicTextField<double?>, orElse: (_) => distanceToPickup) ?? distanceToPickup,
        riderId: package?.riderId.value != null ? package!.riderId : riderId,
        riderLocation: package?.riderLocation != null ? package!.riderLocation : riderLocation,
        paymentDepositedAt: package?.paymentDepositedAt ?? paymentDepositedAt,
        paymentDepositConfirmedAt: package?.paymentDepositConfirmedAt ?? paymentDepositConfirmedAt,
        contactlessDelivery: package?.contactlessDelivery ?? contactlessDelivery,
        orderActiveAt: package?.orderActiveAt ?? orderActiveAt,
        riderAcceptedAt: package?.riderAcceptedAt ?? riderAcceptedAt,
        riderReceivedAt: package?.riderReceivedAt ?? riderReceivedAt,
        riderDeliveredAt: package?.riderDeliveredAt ?? riderDeliveredAt,
        orderCancelledAt: package?.orderCancelledAt ?? orderCancelledAt,
        sender: package?.sender ?? sender,
        journey: package?.journey ?? journey,
        createdAt: createdAt != null ? package!.createdAt : createdAt,
        updatedAt: updatedAt != null ? package!.updatedAt : updatedAt,
        deletedAt: deletedAt != null ? package!.deletedAt : deletedAt,
      );
}
