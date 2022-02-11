// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of user_order.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserOrderTearOff {
  const _$UserOrderTearOff();

  _UserOrder call(
      {required UniqueId<String?> id,
      required UniqueId<String?> riderId,
      UserAddress? deliveryAddress,
      PaymentMethod? paymentMethod,
      required LogisticsType type,
      DeliveryMode deliveryMode = DeliveryMode.delivery,
      ParcelStatus status = ParcelStatus.PENDING,
      required BasicTextField<String?> reference,
      required AmountField<double?> riderTip,
      required BasicTextField<String?> notes,
      bool contactlessDelivery = false,
      required AmountField<double> price,
      Duration durationToPickup = Duration.zero,
      required BasicTextField<double?> distanceToPickup,
      required RiderLocation riderLocation,
      required Store store,
      required User receiver,
      JourneyDetail? journey,
      DateTime? orderActiveAt,
      DateTime? storeAcceptedAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? cancelledAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) {
    return _UserOrder(
      id: id,
      riderId: riderId,
      deliveryAddress: deliveryAddress,
      paymentMethod: paymentMethod,
      type: type,
      deliveryMode: deliveryMode,
      status: status,
      reference: reference,
      riderTip: riderTip,
      notes: notes,
      contactlessDelivery: contactlessDelivery,
      price: price,
      durationToPickup: durationToPickup,
      distanceToPickup: distanceToPickup,
      riderLocation: riderLocation,
      store: store,
      receiver: receiver,
      journey: journey,
      orderActiveAt: orderActiveAt,
      storeAcceptedAt: storeAcceptedAt,
      riderAcceptedAt: riderAcceptedAt,
      riderReceivedAt: riderReceivedAt,
      riderDeliveredAt: riderDeliveredAt,
      cancelledAt: cancelledAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
const $UserOrder = _$UserOrderTearOff();

/// @nodoc
mixin _$UserOrder {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  UniqueId<String?> get riderId => throw _privateConstructorUsedError;
  UserAddress? get deliveryAddress => throw _privateConstructorUsedError;
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError;
  LogisticsType get type => throw _privateConstructorUsedError;
  DeliveryMode get deliveryMode => throw _privateConstructorUsedError;
  ParcelStatus get status => throw _privateConstructorUsedError;
  BasicTextField<String?> get reference => throw _privateConstructorUsedError;
  AmountField<double?> get riderTip => throw _privateConstructorUsedError;
  BasicTextField<String?> get notes => throw _privateConstructorUsedError;
  bool get contactlessDelivery => throw _privateConstructorUsedError;
  AmountField<double> get price => throw _privateConstructorUsedError;
  Duration get durationToPickup => throw _privateConstructorUsedError;
  BasicTextField<double?> get distanceToPickup =>
      throw _privateConstructorUsedError;
  RiderLocation get riderLocation => throw _privateConstructorUsedError; //
  Store get store => throw _privateConstructorUsedError;
  User get receiver => throw _privateConstructorUsedError;
  JourneyDetail? get journey => throw _privateConstructorUsedError; //
  DateTime? get orderActiveAt => throw _privateConstructorUsedError;
  DateTime? get storeAcceptedAt => throw _privateConstructorUsedError;
  DateTime? get riderAcceptedAt => throw _privateConstructorUsedError;
  DateTime? get riderReceivedAt => throw _privateConstructorUsedError;
  DateTime? get riderDeliveredAt => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError; //
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserOrderCopyWith<UserOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrderCopyWith<$Res> {
  factory $UserOrderCopyWith(UserOrder value, $Res Function(UserOrder) then) =
      _$UserOrderCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> riderId,
      UserAddress? deliveryAddress,
      PaymentMethod? paymentMethod,
      LogisticsType type,
      DeliveryMode deliveryMode,
      ParcelStatus status,
      BasicTextField<String?> reference,
      AmountField<double?> riderTip,
      BasicTextField<String?> notes,
      bool contactlessDelivery,
      AmountField<double> price,
      Duration durationToPickup,
      BasicTextField<double?> distanceToPickup,
      RiderLocation riderLocation,
      Store store,
      User receiver,
      JourneyDetail? journey,
      DateTime? orderActiveAt,
      DateTime? storeAcceptedAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? cancelledAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  $UserAddressCopyWith<$Res>? get deliveryAddress;
  $RiderLocationCopyWith<$Res> get riderLocation;
  $StoreCopyWith<$Res> get store;
  $UserCopyWith<$Res> get receiver;
  $JourneyDetailCopyWith<$Res>? get journey;
}

/// @nodoc
class _$UserOrderCopyWithImpl<$Res> implements $UserOrderCopyWith<$Res> {
  _$UserOrderCopyWithImpl(this._value, this._then);

  final UserOrder _value;
  // ignore: unused_field
  final $Res Function(UserOrder) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? riderId = freezed,
    Object? deliveryAddress = freezed,
    Object? paymentMethod = freezed,
    Object? type = freezed,
    Object? deliveryMode = freezed,
    Object? status = freezed,
    Object? reference = freezed,
    Object? riderTip = freezed,
    Object? notes = freezed,
    Object? contactlessDelivery = freezed,
    Object? price = freezed,
    Object? durationToPickup = freezed,
    Object? distanceToPickup = freezed,
    Object? riderLocation = freezed,
    Object? store = freezed,
    Object? receiver = freezed,
    Object? journey = freezed,
    Object? orderActiveAt = freezed,
    Object? storeAcceptedAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? cancelledAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as UserAddress?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LogisticsType,
      deliveryMode: deliveryMode == freezed
          ? _value.deliveryMode
          : deliveryMode // ignore: cast_nullable_to_non_nullable
              as DeliveryMode,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ParcelStatus,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      riderTip: riderTip == freezed
          ? _value.riderTip
          : riderTip // ignore: cast_nullable_to_non_nullable
              as AmountField<double?>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      contactlessDelivery: contactlessDelivery == freezed
          ? _value.contactlessDelivery
          : contactlessDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      durationToPickup: durationToPickup == freezed
          ? _value.durationToPickup
          : durationToPickup // ignore: cast_nullable_to_non_nullable
              as Duration,
      distanceToPickup: distanceToPickup == freezed
          ? _value.distanceToPickup
          : distanceToPickup // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      riderLocation: riderLocation == freezed
          ? _value.riderLocation
          : riderLocation // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as User,
      journey: journey == freezed
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDetail?,
      orderActiveAt: orderActiveAt == freezed
          ? _value.orderActiveAt
          : orderActiveAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      storeAcceptedAt: storeAcceptedAt == freezed
          ? _value.storeAcceptedAt
          : storeAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riderAcceptedAt: riderAcceptedAt == freezed
          ? _value.riderAcceptedAt
          : riderAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riderReceivedAt: riderReceivedAt == freezed
          ? _value.riderReceivedAt
          : riderReceivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riderDeliveredAt: riderDeliveredAt == freezed
          ? _value.riderDeliveredAt
          : riderDeliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: cancelledAt == freezed
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $UserAddressCopyWith<$Res>? get deliveryAddress {
    if (_value.deliveryAddress == null) {
      return null;
    }

    return $UserAddressCopyWith<$Res>(_value.deliveryAddress!, (value) {
      return _then(_value.copyWith(deliveryAddress: value));
    });
  }

  @override
  $RiderLocationCopyWith<$Res> get riderLocation {
    return $RiderLocationCopyWith<$Res>(_value.riderLocation, (value) {
      return _then(_value.copyWith(riderLocation: value));
    });
  }

  @override
  $StoreCopyWith<$Res> get store {
    return $StoreCopyWith<$Res>(_value.store, (value) {
      return _then(_value.copyWith(store: value));
    });
  }

  @override
  $UserCopyWith<$Res> get receiver {
    return $UserCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }

  @override
  $JourneyDetailCopyWith<$Res>? get journey {
    if (_value.journey == null) {
      return null;
    }

    return $JourneyDetailCopyWith<$Res>(_value.journey!, (value) {
      return _then(_value.copyWith(journey: value));
    });
  }
}

/// @nodoc
abstract class _$UserOrderCopyWith<$Res> implements $UserOrderCopyWith<$Res> {
  factory _$UserOrderCopyWith(
          _UserOrder value, $Res Function(_UserOrder) then) =
      __$UserOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> riderId,
      UserAddress? deliveryAddress,
      PaymentMethod? paymentMethod,
      LogisticsType type,
      DeliveryMode deliveryMode,
      ParcelStatus status,
      BasicTextField<String?> reference,
      AmountField<double?> riderTip,
      BasicTextField<String?> notes,
      bool contactlessDelivery,
      AmountField<double> price,
      Duration durationToPickup,
      BasicTextField<double?> distanceToPickup,
      RiderLocation riderLocation,
      Store store,
      User receiver,
      JourneyDetail? journey,
      DateTime? orderActiveAt,
      DateTime? storeAcceptedAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? cancelledAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  @override
  $UserAddressCopyWith<$Res>? get deliveryAddress;
  @override
  $RiderLocationCopyWith<$Res> get riderLocation;
  @override
  $StoreCopyWith<$Res> get store;
  @override
  $UserCopyWith<$Res> get receiver;
  @override
  $JourneyDetailCopyWith<$Res>? get journey;
}

/// @nodoc
class __$UserOrderCopyWithImpl<$Res> extends _$UserOrderCopyWithImpl<$Res>
    implements _$UserOrderCopyWith<$Res> {
  __$UserOrderCopyWithImpl(_UserOrder _value, $Res Function(_UserOrder) _then)
      : super(_value, (v) => _then(v as _UserOrder));

  @override
  _UserOrder get _value => super._value as _UserOrder;

  @override
  $Res call({
    Object? id = freezed,
    Object? riderId = freezed,
    Object? deliveryAddress = freezed,
    Object? paymentMethod = freezed,
    Object? type = freezed,
    Object? deliveryMode = freezed,
    Object? status = freezed,
    Object? reference = freezed,
    Object? riderTip = freezed,
    Object? notes = freezed,
    Object? contactlessDelivery = freezed,
    Object? price = freezed,
    Object? durationToPickup = freezed,
    Object? distanceToPickup = freezed,
    Object? riderLocation = freezed,
    Object? store = freezed,
    Object? receiver = freezed,
    Object? journey = freezed,
    Object? orderActiveAt = freezed,
    Object? storeAcceptedAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? cancelledAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_UserOrder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as UserAddress?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LogisticsType,
      deliveryMode: deliveryMode == freezed
          ? _value.deliveryMode
          : deliveryMode // ignore: cast_nullable_to_non_nullable
              as DeliveryMode,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ParcelStatus,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      riderTip: riderTip == freezed
          ? _value.riderTip
          : riderTip // ignore: cast_nullable_to_non_nullable
              as AmountField<double?>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      contactlessDelivery: contactlessDelivery == freezed
          ? _value.contactlessDelivery
          : contactlessDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      durationToPickup: durationToPickup == freezed
          ? _value.durationToPickup
          : durationToPickup // ignore: cast_nullable_to_non_nullable
              as Duration,
      distanceToPickup: distanceToPickup == freezed
          ? _value.distanceToPickup
          : distanceToPickup // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      riderLocation: riderLocation == freezed
          ? _value.riderLocation
          : riderLocation // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as User,
      journey: journey == freezed
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDetail?,
      orderActiveAt: orderActiveAt == freezed
          ? _value.orderActiveAt
          : orderActiveAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      storeAcceptedAt: storeAcceptedAt == freezed
          ? _value.storeAcceptedAt
          : storeAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riderAcceptedAt: riderAcceptedAt == freezed
          ? _value.riderAcceptedAt
          : riderAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riderReceivedAt: riderReceivedAt == freezed
          ? _value.riderReceivedAt
          : riderReceivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riderDeliveredAt: riderDeliveredAt == freezed
          ? _value.riderDeliveredAt
          : riderDeliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: cancelledAt == freezed
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_UserOrder extends _UserOrder {
  const _$_UserOrder(
      {required this.id,
      required this.riderId,
      this.deliveryAddress,
      this.paymentMethod,
      required this.type,
      this.deliveryMode = DeliveryMode.delivery,
      this.status = ParcelStatus.PENDING,
      required this.reference,
      required this.riderTip,
      required this.notes,
      this.contactlessDelivery = false,
      required this.price,
      this.durationToPickup = Duration.zero,
      required this.distanceToPickup,
      required this.riderLocation,
      required this.store,
      required this.receiver,
      this.journey,
      this.orderActiveAt,
      this.storeAcceptedAt,
      this.riderAcceptedAt,
      this.riderReceivedAt,
      this.riderDeliveredAt,
      this.cancelledAt,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final UniqueId<String?> riderId;
  @override
  final UserAddress? deliveryAddress;
  @override
  final PaymentMethod? paymentMethod;
  @override
  final LogisticsType type;
  @JsonKey()
  @override
  final DeliveryMode deliveryMode;
  @JsonKey()
  @override
  final ParcelStatus status;
  @override
  final BasicTextField<String?> reference;
  @override
  final AmountField<double?> riderTip;
  @override
  final BasicTextField<String?> notes;
  @JsonKey()
  @override
  final bool contactlessDelivery;
  @override
  final AmountField<double> price;
  @JsonKey()
  @override
  final Duration durationToPickup;
  @override
  final BasicTextField<double?> distanceToPickup;
  @override
  final RiderLocation riderLocation;
  @override //
  final Store store;
  @override
  final User receiver;
  @override
  final JourneyDetail? journey;
  @override //
  final DateTime? orderActiveAt;
  @override
  final DateTime? storeAcceptedAt;
  @override
  final DateTime? riderAcceptedAt;
  @override
  final DateTime? riderReceivedAt;
  @override
  final DateTime? riderDeliveredAt;
  @override
  final DateTime? cancelledAt;
  @override //
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'UserOrder(id: $id, riderId: $riderId, deliveryAddress: $deliveryAddress, paymentMethod: $paymentMethod, type: $type, deliveryMode: $deliveryMode, status: $status, reference: $reference, riderTip: $riderTip, notes: $notes, contactlessDelivery: $contactlessDelivery, price: $price, durationToPickup: $durationToPickup, distanceToPickup: $distanceToPickup, riderLocation: $riderLocation, store: $store, receiver: $receiver, journey: $journey, orderActiveAt: $orderActiveAt, storeAcceptedAt: $storeAcceptedAt, riderAcceptedAt: $riderAcceptedAt, riderReceivedAt: $riderReceivedAt, riderDeliveredAt: $riderDeliveredAt, cancelledAt: $cancelledAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserOrder &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.riderId, riderId) &&
            const DeepCollectionEquality()
                .equals(other.deliveryAddress, deliveryAddress) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.deliveryMode, deliveryMode) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            const DeepCollectionEquality().equals(other.riderTip, riderTip) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality()
                .equals(other.contactlessDelivery, contactlessDelivery) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.durationToPickup, durationToPickup) &&
            const DeepCollectionEquality()
                .equals(other.distanceToPickup, distanceToPickup) &&
            const DeepCollectionEquality()
                .equals(other.riderLocation, riderLocation) &&
            const DeepCollectionEquality().equals(other.store, store) &&
            const DeepCollectionEquality().equals(other.receiver, receiver) &&
            const DeepCollectionEquality().equals(other.journey, journey) &&
            const DeepCollectionEquality()
                .equals(other.orderActiveAt, orderActiveAt) &&
            const DeepCollectionEquality()
                .equals(other.storeAcceptedAt, storeAcceptedAt) &&
            const DeepCollectionEquality()
                .equals(other.riderAcceptedAt, riderAcceptedAt) &&
            const DeepCollectionEquality()
                .equals(other.riderReceivedAt, riderReceivedAt) &&
            const DeepCollectionEquality()
                .equals(other.riderDeliveredAt, riderDeliveredAt) &&
            const DeepCollectionEquality()
                .equals(other.cancelledAt, cancelledAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(riderId),
        const DeepCollectionEquality().hash(deliveryAddress),
        const DeepCollectionEquality().hash(paymentMethod),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(deliveryMode),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(reference),
        const DeepCollectionEquality().hash(riderTip),
        const DeepCollectionEquality().hash(notes),
        const DeepCollectionEquality().hash(contactlessDelivery),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(durationToPickup),
        const DeepCollectionEquality().hash(distanceToPickup),
        const DeepCollectionEquality().hash(riderLocation),
        const DeepCollectionEquality().hash(store),
        const DeepCollectionEquality().hash(receiver),
        const DeepCollectionEquality().hash(journey),
        const DeepCollectionEquality().hash(orderActiveAt),
        const DeepCollectionEquality().hash(storeAcceptedAt),
        const DeepCollectionEquality().hash(riderAcceptedAt),
        const DeepCollectionEquality().hash(riderReceivedAt),
        const DeepCollectionEquality().hash(riderDeliveredAt),
        const DeepCollectionEquality().hash(cancelledAt),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(deletedAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$UserOrderCopyWith<_UserOrder> get copyWith =>
      __$UserOrderCopyWithImpl<_UserOrder>(this, _$identity);
}

abstract class _UserOrder extends UserOrder {
  const factory _UserOrder(
      {required UniqueId<String?> id,
      required UniqueId<String?> riderId,
      UserAddress? deliveryAddress,
      PaymentMethod? paymentMethod,
      required LogisticsType type,
      DeliveryMode deliveryMode,
      ParcelStatus status,
      required BasicTextField<String?> reference,
      required AmountField<double?> riderTip,
      required BasicTextField<String?> notes,
      bool contactlessDelivery,
      required AmountField<double> price,
      Duration durationToPickup,
      required BasicTextField<double?> distanceToPickup,
      required RiderLocation riderLocation,
      required Store store,
      required User receiver,
      JourneyDetail? journey,
      DateTime? orderActiveAt,
      DateTime? storeAcceptedAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? cancelledAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _$_UserOrder;
  const _UserOrder._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  UniqueId<String?> get riderId;
  @override
  UserAddress? get deliveryAddress;
  @override
  PaymentMethod? get paymentMethod;
  @override
  LogisticsType get type;
  @override
  DeliveryMode get deliveryMode;
  @override
  ParcelStatus get status;
  @override
  BasicTextField<String?> get reference;
  @override
  AmountField<double?> get riderTip;
  @override
  BasicTextField<String?> get notes;
  @override
  bool get contactlessDelivery;
  @override
  AmountField<double> get price;
  @override
  Duration get durationToPickup;
  @override
  BasicTextField<double?> get distanceToPickup;
  @override
  RiderLocation get riderLocation;
  @override //
  Store get store;
  @override
  User get receiver;
  @override
  JourneyDetail? get journey;
  @override //
  DateTime? get orderActiveAt;
  @override
  DateTime? get storeAcceptedAt;
  @override
  DateTime? get riderAcceptedAt;
  @override
  DateTime? get riderReceivedAt;
  @override
  DateTime? get riderDeliveredAt;
  @override
  DateTime? get cancelledAt;
  @override //
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$UserOrderCopyWith<_UserOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
