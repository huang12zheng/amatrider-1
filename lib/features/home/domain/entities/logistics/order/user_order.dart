library user_order.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_order.freezed.dart';

@freezed
@immutable
class UserOrder extends Logistics with _$UserOrder {
  const UserOrder._();

  const factory UserOrder({
    required UniqueId<String?> id,
    required UniqueId<String?> riderId,
    UserAddress? deliveryAddress,
    PaymentMethod? paymentMethod,
    required LogisticsType type,
    @Default(DeliveryMode.delivery) DeliveryMode deliveryMode,
    @Default(ParcelStatus.PENDING) ParcelStatus status,
    required BasicTextField<String?> reference,
    required AmountField<double?> riderTip,
    required BasicTextField<String?> notes,
    @Default(false) bool contactlessDelivery,
    required AmountField<double> price,
    @Default(Duration.zero) Duration durationToPickup,
    required BasicTextField<double?> distanceToPickup,
    required RiderLocation riderLocation,
    //
    required Store store,
    required User receiver,
    JourneyDetail? journey,
    //
    DateTime? orderActiveAt,
    DateTime? storeAcceptedAt,
    DateTime? riderAcceptedAt,
    DateTime? riderReceivedAt,
    DateTime? riderDeliveredAt,
    DateTime? cancelledAt,
    //
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _UserOrder;

  factory UserOrder.blank() => UserOrder(
        id: UniqueId.fromExternal(null),
        riderId: UniqueId.fromExternal(null),
        price: AmountField(0),
        type: LogisticsType.order,
        reference: BasicTextField(null),
        riderTip: AmountField(null),
        notes: BasicTextField(null),
        distanceToPickup: BasicTextField(null),
        receiver: User.blank(),
        store: Store.blank(),
        riderLocation: RiderLocation(
          lat: BasicTextField(null),
          lng: BasicTextField(null),
          address: BasicTextField(null),
        ),
      );

  @override
  User get sender => User.blank();

  @override
  UserAddress get pickup => UserAddress.fromStoreLocation(store.location);

  @override
  UserAddress get destination => deliveryAddress ?? UserAddress.blank();

  @override
  DateTime? get orderCancelledAt => cancelledAt;

  UserOrder merge(UserOrder? newValue) => UserOrder(
        id: UniqueId.fromExternal(newValue?.id.value ?? id.value),
        riderId: UniqueId.fromExternal(newValue?.riderId.value ?? riderId.value),
        deliveryAddress: newValue?.deliveryAddress ?? deliveryAddress,
        paymentMethod: newValue?.paymentMethod ?? paymentMethod,
        deliveryMode: newValue?.deliveryMode ?? deliveryMode,
        status: newValue?.status ?? status,
        type: newValue?.type ?? type,
        reference: newValue?.reference.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => reference) ?? reference,
        riderTip: newValue?.riderTip.isNotNull((it) => it as AmountField<double?>, orElse: (_) => riderTip) ?? riderTip,
        notes: newValue?.notes.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => notes) ?? notes,
        price: newValue?.price.isNotNull((it) => it as AmountField<double>, orElse: (_) => price) ?? price,
        distanceToPickup: newValue?.distanceToPickup.isNotNull((it) => it as BasicTextField<double?>, orElse: (_) => distanceToPickup) ??
            distanceToPickup,
        contactlessDelivery: newValue?.contactlessDelivery ?? contactlessDelivery,
        durationToPickup: newValue?.durationToPickup ?? durationToPickup,
        store: newValue?.store ?? store,
        receiver: newValue?.receiver ?? receiver,
        journey: newValue?.journey ?? journey,
        riderLocation: newValue?.riderLocation ?? riderLocation,
        orderActiveAt: newValue?.orderActiveAt ?? orderActiveAt,
        storeAcceptedAt: newValue?.storeAcceptedAt ?? storeAcceptedAt,
        riderAcceptedAt: newValue?.riderAcceptedAt ?? riderAcceptedAt,
        riderReceivedAt: newValue?.riderReceivedAt ?? riderReceivedAt,
        riderDeliveredAt: newValue?.riderDeliveredAt ?? riderDeliveredAt,
        cancelledAt: newValue?.cancelledAt ?? cancelledAt,
        createdAt: newValue?.createdAt ?? createdAt,
        updatedAt: newValue?.updatedAt ?? updatedAt,
        deletedAt: newValue?.deletedAt ?? deletedAt,
      );
}
