// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of delivery_history.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeliveryHistoryTearOff {
  const _$DeliveryHistoryTearOff();

  _DeliveryHistory call(
      {required UniqueId<String?> id,
      required RiderLocation pickup,
      required RiderLocation destination,
      required AmountField<double?> amount,
      required DisplayName receiverFullName,
      required Phone receiverPhone,
      required EmailAddress receiverEmailAddress,
      required BasicTextField<String?> receiverPhoneAlt,
      required BasicTextField<String?> notes,
      required PaymentMethod paymentMethod,
      required UniqueId<String?> riderId,
      required RiderLocation riderLocation,
      Duration durationToPickup = Duration.zero,
      required BasicTextField<double?> distanceToPickup,
      required Rider rider,
      required Sender sender,
      DateTime? orderActiveAt,
      DateTime? orderCancelledAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? paymentDepositedAt,
      DateTime? paymentDepositConfirmedAt,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _DeliveryHistory(
      id: id,
      pickup: pickup,
      destination: destination,
      amount: amount,
      receiverFullName: receiverFullName,
      receiverPhone: receiverPhone,
      receiverEmailAddress: receiverEmailAddress,
      receiverPhoneAlt: receiverPhoneAlt,
      notes: notes,
      paymentMethod: paymentMethod,
      riderId: riderId,
      riderLocation: riderLocation,
      durationToPickup: durationToPickup,
      distanceToPickup: distanceToPickup,
      rider: rider,
      sender: sender,
      orderActiveAt: orderActiveAt,
      orderCancelledAt: orderCancelledAt,
      riderAcceptedAt: riderAcceptedAt,
      riderReceivedAt: riderReceivedAt,
      riderDeliveredAt: riderDeliveredAt,
      paymentDepositedAt: paymentDepositedAt,
      paymentDepositConfirmedAt: paymentDepositConfirmedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $DeliveryHistory = _$DeliveryHistoryTearOff();

/// @nodoc
mixin _$DeliveryHistory {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  RiderLocation get pickup => throw _privateConstructorUsedError;
  RiderLocation get destination => throw _privateConstructorUsedError;
  AmountField<double?> get amount => throw _privateConstructorUsedError;
  DisplayName get receiverFullName => throw _privateConstructorUsedError;
  Phone get receiverPhone => throw _privateConstructorUsedError;
  EmailAddress get receiverEmailAddress => throw _privateConstructorUsedError;
  BasicTextField<String?> get receiverPhoneAlt =>
      throw _privateConstructorUsedError;
  BasicTextField<String?> get notes => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError; //
  UniqueId<String?> get riderId => throw _privateConstructorUsedError;
  RiderLocation get riderLocation => throw _privateConstructorUsedError;
  Duration get durationToPickup => throw _privateConstructorUsedError;
  BasicTextField<double?> get distanceToPickup =>
      throw _privateConstructorUsedError; //
  Rider get rider => throw _privateConstructorUsedError;
  Sender get sender => throw _privateConstructorUsedError; //
  DateTime? get orderActiveAt => throw _privateConstructorUsedError;
  DateTime? get orderCancelledAt => throw _privateConstructorUsedError;
  DateTime? get riderAcceptedAt => throw _privateConstructorUsedError;
  DateTime? get riderReceivedAt => throw _privateConstructorUsedError;
  DateTime? get riderDeliveredAt => throw _privateConstructorUsedError;
  DateTime? get paymentDepositedAt => throw _privateConstructorUsedError;
  DateTime? get paymentDepositConfirmedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryHistoryCopyWith<DeliveryHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryHistoryCopyWith<$Res> {
  factory $DeliveryHistoryCopyWith(
          DeliveryHistory value, $Res Function(DeliveryHistory) then) =
      _$DeliveryHistoryCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      RiderLocation pickup,
      RiderLocation destination,
      AmountField<double?> amount,
      DisplayName receiverFullName,
      Phone receiverPhone,
      EmailAddress receiverEmailAddress,
      BasicTextField<String?> receiverPhoneAlt,
      BasicTextField<String?> notes,
      PaymentMethod paymentMethod,
      UniqueId<String?> riderId,
      RiderLocation riderLocation,
      Duration durationToPickup,
      BasicTextField<double?> distanceToPickup,
      Rider rider,
      Sender sender,
      DateTime? orderActiveAt,
      DateTime? orderCancelledAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? paymentDepositedAt,
      DateTime? paymentDepositConfirmedAt,
      DateTime? createdAt,
      DateTime? updatedAt});

  $RiderLocationCopyWith<$Res> get pickup;
  $RiderLocationCopyWith<$Res> get destination;
  $RiderLocationCopyWith<$Res> get riderLocation;
  $RiderCopyWith<$Res> get rider;
  $SenderCopyWith<$Res> get sender;
}

/// @nodoc
class _$DeliveryHistoryCopyWithImpl<$Res>
    implements $DeliveryHistoryCopyWith<$Res> {
  _$DeliveryHistoryCopyWithImpl(this._value, this._then);

  final DeliveryHistory _value;
  // ignore: unused_field
  final $Res Function(DeliveryHistory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pickup = freezed,
    Object? destination = freezed,
    Object? amount = freezed,
    Object? receiverFullName = freezed,
    Object? receiverPhone = freezed,
    Object? receiverEmailAddress = freezed,
    Object? receiverPhoneAlt = freezed,
    Object? notes = freezed,
    Object? paymentMethod = freezed,
    Object? riderId = freezed,
    Object? riderLocation = freezed,
    Object? durationToPickup = freezed,
    Object? distanceToPickup = freezed,
    Object? rider = freezed,
    Object? sender = freezed,
    Object? orderActiveAt = freezed,
    Object? orderCancelledAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? paymentDepositedAt = freezed,
    Object? paymentDepositConfirmedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      pickup: pickup == freezed
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountField<double?>,
      receiverFullName: receiverFullName == freezed
          ? _value.receiverFullName
          : receiverFullName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      receiverPhone: receiverPhone == freezed
          ? _value.receiverPhone
          : receiverPhone // ignore: cast_nullable_to_non_nullable
              as Phone,
      receiverEmailAddress: receiverEmailAddress == freezed
          ? _value.receiverEmailAddress
          : receiverEmailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      receiverPhoneAlt: receiverPhoneAlt == freezed
          ? _value.receiverPhoneAlt
          : receiverPhoneAlt // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderLocation: riderLocation == freezed
          ? _value.riderLocation
          : riderLocation // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      durationToPickup: durationToPickup == freezed
          ? _value.durationToPickup
          : durationToPickup // ignore: cast_nullable_to_non_nullable
              as Duration,
      distanceToPickup: distanceToPickup == freezed
          ? _value.distanceToPickup
          : distanceToPickup // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as Rider,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
      orderActiveAt: orderActiveAt == freezed
          ? _value.orderActiveAt
          : orderActiveAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderCancelledAt: orderCancelledAt == freezed
          ? _value.orderCancelledAt
          : orderCancelledAt // ignore: cast_nullable_to_non_nullable
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
      paymentDepositedAt: paymentDepositedAt == freezed
          ? _value.paymentDepositedAt
          : paymentDepositedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentDepositConfirmedAt: paymentDepositConfirmedAt == freezed
          ? _value.paymentDepositConfirmedAt
          : paymentDepositConfirmedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $RiderLocationCopyWith<$Res> get pickup {
    return $RiderLocationCopyWith<$Res>(_value.pickup, (value) {
      return _then(_value.copyWith(pickup: value));
    });
  }

  @override
  $RiderLocationCopyWith<$Res> get destination {
    return $RiderLocationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value));
    });
  }

  @override
  $RiderLocationCopyWith<$Res> get riderLocation {
    return $RiderLocationCopyWith<$Res>(_value.riderLocation, (value) {
      return _then(_value.copyWith(riderLocation: value));
    });
  }

  @override
  $RiderCopyWith<$Res> get rider {
    return $RiderCopyWith<$Res>(_value.rider, (value) {
      return _then(_value.copyWith(rider: value));
    });
  }

  @override
  $SenderCopyWith<$Res> get sender {
    return $SenderCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$DeliveryHistoryCopyWith<$Res>
    implements $DeliveryHistoryCopyWith<$Res> {
  factory _$DeliveryHistoryCopyWith(
          _DeliveryHistory value, $Res Function(_DeliveryHistory) then) =
      __$DeliveryHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      RiderLocation pickup,
      RiderLocation destination,
      AmountField<double?> amount,
      DisplayName receiverFullName,
      Phone receiverPhone,
      EmailAddress receiverEmailAddress,
      BasicTextField<String?> receiverPhoneAlt,
      BasicTextField<String?> notes,
      PaymentMethod paymentMethod,
      UniqueId<String?> riderId,
      RiderLocation riderLocation,
      Duration durationToPickup,
      BasicTextField<double?> distanceToPickup,
      Rider rider,
      Sender sender,
      DateTime? orderActiveAt,
      DateTime? orderCancelledAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? paymentDepositedAt,
      DateTime? paymentDepositConfirmedAt,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $RiderLocationCopyWith<$Res> get pickup;
  @override
  $RiderLocationCopyWith<$Res> get destination;
  @override
  $RiderLocationCopyWith<$Res> get riderLocation;
  @override
  $RiderCopyWith<$Res> get rider;
  @override
  $SenderCopyWith<$Res> get sender;
}

/// @nodoc
class __$DeliveryHistoryCopyWithImpl<$Res>
    extends _$DeliveryHistoryCopyWithImpl<$Res>
    implements _$DeliveryHistoryCopyWith<$Res> {
  __$DeliveryHistoryCopyWithImpl(
      _DeliveryHistory _value, $Res Function(_DeliveryHistory) _then)
      : super(_value, (v) => _then(v as _DeliveryHistory));

  @override
  _DeliveryHistory get _value => super._value as _DeliveryHistory;

  @override
  $Res call({
    Object? id = freezed,
    Object? pickup = freezed,
    Object? destination = freezed,
    Object? amount = freezed,
    Object? receiverFullName = freezed,
    Object? receiverPhone = freezed,
    Object? receiverEmailAddress = freezed,
    Object? receiverPhoneAlt = freezed,
    Object? notes = freezed,
    Object? paymentMethod = freezed,
    Object? riderId = freezed,
    Object? riderLocation = freezed,
    Object? durationToPickup = freezed,
    Object? distanceToPickup = freezed,
    Object? rider = freezed,
    Object? sender = freezed,
    Object? orderActiveAt = freezed,
    Object? orderCancelledAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? paymentDepositedAt = freezed,
    Object? paymentDepositConfirmedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_DeliveryHistory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      pickup: pickup == freezed
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountField<double?>,
      receiverFullName: receiverFullName == freezed
          ? _value.receiverFullName
          : receiverFullName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      receiverPhone: receiverPhone == freezed
          ? _value.receiverPhone
          : receiverPhone // ignore: cast_nullable_to_non_nullable
              as Phone,
      receiverEmailAddress: receiverEmailAddress == freezed
          ? _value.receiverEmailAddress
          : receiverEmailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      receiverPhoneAlt: receiverPhoneAlt == freezed
          ? _value.receiverPhoneAlt
          : receiverPhoneAlt // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderLocation: riderLocation == freezed
          ? _value.riderLocation
          : riderLocation // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      durationToPickup: durationToPickup == freezed
          ? _value.durationToPickup
          : durationToPickup // ignore: cast_nullable_to_non_nullable
              as Duration,
      distanceToPickup: distanceToPickup == freezed
          ? _value.distanceToPickup
          : distanceToPickup // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as Rider,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
      orderActiveAt: orderActiveAt == freezed
          ? _value.orderActiveAt
          : orderActiveAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderCancelledAt: orderCancelledAt == freezed
          ? _value.orderCancelledAt
          : orderCancelledAt // ignore: cast_nullable_to_non_nullable
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
      paymentDepositedAt: paymentDepositedAt == freezed
          ? _value.paymentDepositedAt
          : paymentDepositedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentDepositConfirmedAt: paymentDepositConfirmedAt == freezed
          ? _value.paymentDepositConfirmedAt
          : paymentDepositConfirmedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DeliveryHistory extends _DeliveryHistory {
  const _$_DeliveryHistory(
      {required this.id,
      required this.pickup,
      required this.destination,
      required this.amount,
      required this.receiverFullName,
      required this.receiverPhone,
      required this.receiverEmailAddress,
      required this.receiverPhoneAlt,
      required this.notes,
      required this.paymentMethod,
      required this.riderId,
      required this.riderLocation,
      this.durationToPickup = Duration.zero,
      required this.distanceToPickup,
      required this.rider,
      required this.sender,
      this.orderActiveAt,
      this.orderCancelledAt,
      this.riderAcceptedAt,
      this.riderReceivedAt,
      this.riderDeliveredAt,
      this.paymentDepositedAt,
      this.paymentDepositConfirmedAt,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final RiderLocation pickup;
  @override
  final RiderLocation destination;
  @override
  final AmountField<double?> amount;
  @override
  final DisplayName receiverFullName;
  @override
  final Phone receiverPhone;
  @override
  final EmailAddress receiverEmailAddress;
  @override
  final BasicTextField<String?> receiverPhoneAlt;
  @override
  final BasicTextField<String?> notes;
  @override
  final PaymentMethod paymentMethod;
  @override //
  final UniqueId<String?> riderId;
  @override
  final RiderLocation riderLocation;
  @JsonKey()
  @override
  final Duration durationToPickup;
  @override
  final BasicTextField<double?> distanceToPickup;
  @override //
  final Rider rider;
  @override
  final Sender sender;
  @override //
  final DateTime? orderActiveAt;
  @override
  final DateTime? orderCancelledAt;
  @override
  final DateTime? riderAcceptedAt;
  @override
  final DateTime? riderReceivedAt;
  @override
  final DateTime? riderDeliveredAt;
  @override
  final DateTime? paymentDepositedAt;
  @override
  final DateTime? paymentDepositConfirmedAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DeliveryHistory(id: $id, pickup: $pickup, destination: $destination, amount: $amount, receiverFullName: $receiverFullName, receiverPhone: $receiverPhone, receiverEmailAddress: $receiverEmailAddress, receiverPhoneAlt: $receiverPhoneAlt, notes: $notes, paymentMethod: $paymentMethod, riderId: $riderId, riderLocation: $riderLocation, durationToPickup: $durationToPickup, distanceToPickup: $distanceToPickup, rider: $rider, sender: $sender, orderActiveAt: $orderActiveAt, orderCancelledAt: $orderCancelledAt, riderAcceptedAt: $riderAcceptedAt, riderReceivedAt: $riderReceivedAt, riderDeliveredAt: $riderDeliveredAt, paymentDepositedAt: $paymentDepositedAt, paymentDepositConfirmedAt: $paymentDepositConfirmedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryHistory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.pickup, pickup) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.receiverFullName, receiverFullName) &&
            const DeepCollectionEquality()
                .equals(other.receiverPhone, receiverPhone) &&
            const DeepCollectionEquality()
                .equals(other.receiverEmailAddress, receiverEmailAddress) &&
            const DeepCollectionEquality()
                .equals(other.receiverPhoneAlt, receiverPhoneAlt) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality().equals(other.riderId, riderId) &&
            const DeepCollectionEquality()
                .equals(other.riderLocation, riderLocation) &&
            const DeepCollectionEquality()
                .equals(other.durationToPickup, durationToPickup) &&
            const DeepCollectionEquality()
                .equals(other.distanceToPickup, distanceToPickup) &&
            const DeepCollectionEquality().equals(other.rider, rider) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality()
                .equals(other.orderActiveAt, orderActiveAt) &&
            const DeepCollectionEquality()
                .equals(other.orderCancelledAt, orderCancelledAt) &&
            const DeepCollectionEquality()
                .equals(other.riderAcceptedAt, riderAcceptedAt) &&
            const DeepCollectionEquality()
                .equals(other.riderReceivedAt, riderReceivedAt) &&
            const DeepCollectionEquality()
                .equals(other.riderDeliveredAt, riderDeliveredAt) &&
            const DeepCollectionEquality()
                .equals(other.paymentDepositedAt, paymentDepositedAt) &&
            const DeepCollectionEquality().equals(
                other.paymentDepositConfirmedAt, paymentDepositConfirmedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(pickup),
        const DeepCollectionEquality().hash(destination),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(receiverFullName),
        const DeepCollectionEquality().hash(receiverPhone),
        const DeepCollectionEquality().hash(receiverEmailAddress),
        const DeepCollectionEquality().hash(receiverPhoneAlt),
        const DeepCollectionEquality().hash(notes),
        const DeepCollectionEquality().hash(paymentMethod),
        const DeepCollectionEquality().hash(riderId),
        const DeepCollectionEquality().hash(riderLocation),
        const DeepCollectionEquality().hash(durationToPickup),
        const DeepCollectionEquality().hash(distanceToPickup),
        const DeepCollectionEquality().hash(rider),
        const DeepCollectionEquality().hash(sender),
        const DeepCollectionEquality().hash(orderActiveAt),
        const DeepCollectionEquality().hash(orderCancelledAt),
        const DeepCollectionEquality().hash(riderAcceptedAt),
        const DeepCollectionEquality().hash(riderReceivedAt),
        const DeepCollectionEquality().hash(riderDeliveredAt),
        const DeepCollectionEquality().hash(paymentDepositedAt),
        const DeepCollectionEquality().hash(paymentDepositConfirmedAt),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$DeliveryHistoryCopyWith<_DeliveryHistory> get copyWith =>
      __$DeliveryHistoryCopyWithImpl<_DeliveryHistory>(this, _$identity);
}

abstract class _DeliveryHistory extends DeliveryHistory {
  const factory _DeliveryHistory(
      {required UniqueId<String?> id,
      required RiderLocation pickup,
      required RiderLocation destination,
      required AmountField<double?> amount,
      required DisplayName receiverFullName,
      required Phone receiverPhone,
      required EmailAddress receiverEmailAddress,
      required BasicTextField<String?> receiverPhoneAlt,
      required BasicTextField<String?> notes,
      required PaymentMethod paymentMethod,
      required UniqueId<String?> riderId,
      required RiderLocation riderLocation,
      Duration durationToPickup,
      required BasicTextField<double?> distanceToPickup,
      required Rider rider,
      required Sender sender,
      DateTime? orderActiveAt,
      DateTime? orderCancelledAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? paymentDepositedAt,
      DateTime? paymentDepositConfirmedAt,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_DeliveryHistory;
  const _DeliveryHistory._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  RiderLocation get pickup;
  @override
  RiderLocation get destination;
  @override
  AmountField<double?> get amount;
  @override
  DisplayName get receiverFullName;
  @override
  Phone get receiverPhone;
  @override
  EmailAddress get receiverEmailAddress;
  @override
  BasicTextField<String?> get receiverPhoneAlt;
  @override
  BasicTextField<String?> get notes;
  @override
  PaymentMethod get paymentMethod;
  @override //
  UniqueId<String?> get riderId;
  @override
  RiderLocation get riderLocation;
  @override
  Duration get durationToPickup;
  @override
  BasicTextField<double?> get distanceToPickup;
  @override //
  Rider get rider;
  @override
  Sender get sender;
  @override //
  DateTime? get orderActiveAt;
  @override
  DateTime? get orderCancelledAt;
  @override
  DateTime? get riderAcceptedAt;
  @override
  DateTime? get riderReceivedAt;
  @override
  DateTime? get riderDeliveredAt;
  @override
  DateTime? get paymentDepositedAt;
  @override
  DateTime? get paymentDepositConfirmedAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$DeliveryHistoryCopyWith<_DeliveryHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
