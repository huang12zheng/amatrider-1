// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of send_package.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendPackageTearOff {
  const _$SendPackageTearOff();

  _SendPackage call(
      {required UniqueId<String?> id,
      required UniqueId<String?> riderId,
      required UserAddress pickup,
      required UserAddress destination,
      PackageSize packageSize = PackageSize.small,
      required LogisticsType type,
      bool isFragile = false,
      required AmountField<double> price,
      required BasicTextField<String?> notes,
      ParcelStatus status = ParcelStatus.PENDING,
      PaymentMethod? paymentMethod,
      required RiderLocation riderLocation,
      bool contactlessDelivery = false,
      Duration durationToPickup = Duration.zero,
      required BasicTextField<double?> distanceToPickup,
      DateTime? orderActiveAt,
      DateTime? orderCancelledAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? paymentDepositedAt,
      DateTime? paymentDepositConfirmedAt,
      required User sender,
      required User receiver,
      required JourneyDetail journey,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) {
    return _SendPackage(
      id: id,
      riderId: riderId,
      pickup: pickup,
      destination: destination,
      packageSize: packageSize,
      type: type,
      isFragile: isFragile,
      price: price,
      notes: notes,
      status: status,
      paymentMethod: paymentMethod,
      riderLocation: riderLocation,
      contactlessDelivery: contactlessDelivery,
      durationToPickup: durationToPickup,
      distanceToPickup: distanceToPickup,
      orderActiveAt: orderActiveAt,
      orderCancelledAt: orderCancelledAt,
      riderAcceptedAt: riderAcceptedAt,
      riderReceivedAt: riderReceivedAt,
      riderDeliveredAt: riderDeliveredAt,
      paymentDepositedAt: paymentDepositedAt,
      paymentDepositConfirmedAt: paymentDepositConfirmedAt,
      sender: sender,
      receiver: receiver,
      journey: journey,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
const $SendPackage = _$SendPackageTearOff();

/// @nodoc
mixin _$SendPackage {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  UniqueId<String?> get riderId => throw _privateConstructorUsedError;
  UserAddress get pickup => throw _privateConstructorUsedError;
  UserAddress get destination => throw _privateConstructorUsedError;
  PackageSize get packageSize => throw _privateConstructorUsedError;
  LogisticsType get type => throw _privateConstructorUsedError;
  bool get isFragile => throw _privateConstructorUsedError;
  AmountField<double> get price => throw _privateConstructorUsedError;
  BasicTextField<String?> get notes => throw _privateConstructorUsedError;
  ParcelStatus get status => throw _privateConstructorUsedError;
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError; //
  RiderLocation get riderLocation => throw _privateConstructorUsedError;
  bool get contactlessDelivery => throw _privateConstructorUsedError;
  Duration get durationToPickup => throw _privateConstructorUsedError;
  BasicTextField<double?> get distanceToPickup =>
      throw _privateConstructorUsedError; //
  DateTime? get orderActiveAt => throw _privateConstructorUsedError;
  DateTime? get orderCancelledAt => throw _privateConstructorUsedError;
  DateTime? get riderAcceptedAt => throw _privateConstructorUsedError;
  DateTime? get riderReceivedAt => throw _privateConstructorUsedError;
  DateTime? get riderDeliveredAt => throw _privateConstructorUsedError;
  DateTime? get paymentDepositedAt => throw _privateConstructorUsedError;
  DateTime? get paymentDepositConfirmedAt =>
      throw _privateConstructorUsedError; //
  User get sender => throw _privateConstructorUsedError;
  User get receiver => throw _privateConstructorUsedError;
  JourneyDetail get journey => throw _privateConstructorUsedError; //
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendPackageCopyWith<SendPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPackageCopyWith<$Res> {
  factory $SendPackageCopyWith(
          SendPackage value, $Res Function(SendPackage) then) =
      _$SendPackageCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> riderId,
      UserAddress pickup,
      UserAddress destination,
      PackageSize packageSize,
      LogisticsType type,
      bool isFragile,
      AmountField<double> price,
      BasicTextField<String?> notes,
      ParcelStatus status,
      PaymentMethod? paymentMethod,
      RiderLocation riderLocation,
      bool contactlessDelivery,
      Duration durationToPickup,
      BasicTextField<double?> distanceToPickup,
      DateTime? orderActiveAt,
      DateTime? orderCancelledAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? paymentDepositedAt,
      DateTime? paymentDepositConfirmedAt,
      User sender,
      User receiver,
      JourneyDetail journey,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  $UserAddressCopyWith<$Res> get pickup;
  $UserAddressCopyWith<$Res> get destination;
  $RiderLocationCopyWith<$Res> get riderLocation;
  $UserCopyWith<$Res> get sender;
  $UserCopyWith<$Res> get receiver;
  $JourneyDetailCopyWith<$Res> get journey;
}

/// @nodoc
class _$SendPackageCopyWithImpl<$Res> implements $SendPackageCopyWith<$Res> {
  _$SendPackageCopyWithImpl(this._value, this._then);

  final SendPackage _value;
  // ignore: unused_field
  final $Res Function(SendPackage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? riderId = freezed,
    Object? pickup = freezed,
    Object? destination = freezed,
    Object? packageSize = freezed,
    Object? type = freezed,
    Object? isFragile = freezed,
    Object? price = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? riderLocation = freezed,
    Object? contactlessDelivery = freezed,
    Object? durationToPickup = freezed,
    Object? distanceToPickup = freezed,
    Object? orderActiveAt = freezed,
    Object? orderCancelledAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? paymentDepositedAt = freezed,
    Object? paymentDepositConfirmedAt = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? journey = freezed,
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
      pickup: pickup == freezed
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      packageSize: packageSize == freezed
          ? _value.packageSize
          : packageSize // ignore: cast_nullable_to_non_nullable
              as PackageSize,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LogisticsType,
      isFragile: isFragile == freezed
          ? _value.isFragile
          : isFragile // ignore: cast_nullable_to_non_nullable
              as bool,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ParcelStatus,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      riderLocation: riderLocation == freezed
          ? _value.riderLocation
          : riderLocation // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      contactlessDelivery: contactlessDelivery == freezed
          ? _value.contactlessDelivery
          : contactlessDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      durationToPickup: durationToPickup == freezed
          ? _value.durationToPickup
          : durationToPickup // ignore: cast_nullable_to_non_nullable
              as Duration,
      distanceToPickup: distanceToPickup == freezed
          ? _value.distanceToPickup
          : distanceToPickup // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
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
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as User,
      journey: journey == freezed
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDetail,
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
  $UserAddressCopyWith<$Res> get pickup {
    return $UserAddressCopyWith<$Res>(_value.pickup, (value) {
      return _then(_value.copyWith(pickup: value));
    });
  }

  @override
  $UserAddressCopyWith<$Res> get destination {
    return $UserAddressCopyWith<$Res>(_value.destination, (value) {
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
  $UserCopyWith<$Res> get sender {
    return $UserCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $UserCopyWith<$Res> get receiver {
    return $UserCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }

  @override
  $JourneyDetailCopyWith<$Res> get journey {
    return $JourneyDetailCopyWith<$Res>(_value.journey, (value) {
      return _then(_value.copyWith(journey: value));
    });
  }
}

/// @nodoc
abstract class _$SendPackageCopyWith<$Res>
    implements $SendPackageCopyWith<$Res> {
  factory _$SendPackageCopyWith(
          _SendPackage value, $Res Function(_SendPackage) then) =
      __$SendPackageCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> riderId,
      UserAddress pickup,
      UserAddress destination,
      PackageSize packageSize,
      LogisticsType type,
      bool isFragile,
      AmountField<double> price,
      BasicTextField<String?> notes,
      ParcelStatus status,
      PaymentMethod? paymentMethod,
      RiderLocation riderLocation,
      bool contactlessDelivery,
      Duration durationToPickup,
      BasicTextField<double?> distanceToPickup,
      DateTime? orderActiveAt,
      DateTime? orderCancelledAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? paymentDepositedAt,
      DateTime? paymentDepositConfirmedAt,
      User sender,
      User receiver,
      JourneyDetail journey,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  @override
  $UserAddressCopyWith<$Res> get pickup;
  @override
  $UserAddressCopyWith<$Res> get destination;
  @override
  $RiderLocationCopyWith<$Res> get riderLocation;
  @override
  $UserCopyWith<$Res> get sender;
  @override
  $UserCopyWith<$Res> get receiver;
  @override
  $JourneyDetailCopyWith<$Res> get journey;
}

/// @nodoc
class __$SendPackageCopyWithImpl<$Res> extends _$SendPackageCopyWithImpl<$Res>
    implements _$SendPackageCopyWith<$Res> {
  __$SendPackageCopyWithImpl(
      _SendPackage _value, $Res Function(_SendPackage) _then)
      : super(_value, (v) => _then(v as _SendPackage));

  @override
  _SendPackage get _value => super._value as _SendPackage;

  @override
  $Res call({
    Object? id = freezed,
    Object? riderId = freezed,
    Object? pickup = freezed,
    Object? destination = freezed,
    Object? packageSize = freezed,
    Object? type = freezed,
    Object? isFragile = freezed,
    Object? price = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? riderLocation = freezed,
    Object? contactlessDelivery = freezed,
    Object? durationToPickup = freezed,
    Object? distanceToPickup = freezed,
    Object? orderActiveAt = freezed,
    Object? orderCancelledAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? paymentDepositedAt = freezed,
    Object? paymentDepositConfirmedAt = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? journey = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_SendPackage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      pickup: pickup == freezed
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      packageSize: packageSize == freezed
          ? _value.packageSize
          : packageSize // ignore: cast_nullable_to_non_nullable
              as PackageSize,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LogisticsType,
      isFragile: isFragile == freezed
          ? _value.isFragile
          : isFragile // ignore: cast_nullable_to_non_nullable
              as bool,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ParcelStatus,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      riderLocation: riderLocation == freezed
          ? _value.riderLocation
          : riderLocation // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      contactlessDelivery: contactlessDelivery == freezed
          ? _value.contactlessDelivery
          : contactlessDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      durationToPickup: durationToPickup == freezed
          ? _value.durationToPickup
          : durationToPickup // ignore: cast_nullable_to_non_nullable
              as Duration,
      distanceToPickup: distanceToPickup == freezed
          ? _value.distanceToPickup
          : distanceToPickup // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
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
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as User,
      journey: journey == freezed
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDetail,
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

class _$_SendPackage extends _SendPackage {
  const _$_SendPackage(
      {required this.id,
      required this.riderId,
      required this.pickup,
      required this.destination,
      this.packageSize = PackageSize.small,
      required this.type,
      this.isFragile = false,
      required this.price,
      required this.notes,
      this.status = ParcelStatus.PENDING,
      this.paymentMethod,
      required this.riderLocation,
      this.contactlessDelivery = false,
      this.durationToPickup = Duration.zero,
      required this.distanceToPickup,
      this.orderActiveAt,
      this.orderCancelledAt,
      this.riderAcceptedAt,
      this.riderReceivedAt,
      this.riderDeliveredAt,
      this.paymentDepositedAt,
      this.paymentDepositConfirmedAt,
      required this.sender,
      required this.receiver,
      required this.journey,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final UniqueId<String?> riderId;
  @override
  final UserAddress pickup;
  @override
  final UserAddress destination;
  @JsonKey()
  @override
  final PackageSize packageSize;
  @override
  final LogisticsType type;
  @JsonKey()
  @override
  final bool isFragile;
  @override
  final AmountField<double> price;
  @override
  final BasicTextField<String?> notes;
  @JsonKey()
  @override
  final ParcelStatus status;
  @override
  final PaymentMethod? paymentMethod;
  @override //
  final RiderLocation riderLocation;
  @JsonKey()
  @override
  final bool contactlessDelivery;
  @JsonKey()
  @override
  final Duration durationToPickup;
  @override
  final BasicTextField<double?> distanceToPickup;
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
  @override //
  final User sender;
  @override
  final User receiver;
  @override
  final JourneyDetail journey;
  @override //
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'SendPackage(id: $id, riderId: $riderId, pickup: $pickup, destination: $destination, packageSize: $packageSize, type: $type, isFragile: $isFragile, price: $price, notes: $notes, status: $status, paymentMethod: $paymentMethod, riderLocation: $riderLocation, contactlessDelivery: $contactlessDelivery, durationToPickup: $durationToPickup, distanceToPickup: $distanceToPickup, orderActiveAt: $orderActiveAt, orderCancelledAt: $orderCancelledAt, riderAcceptedAt: $riderAcceptedAt, riderReceivedAt: $riderReceivedAt, riderDeliveredAt: $riderDeliveredAt, paymentDepositedAt: $paymentDepositedAt, paymentDepositConfirmedAt: $paymentDepositConfirmedAt, sender: $sender, receiver: $receiver, journey: $journey, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendPackage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.riderId, riderId) &&
            const DeepCollectionEquality().equals(other.pickup, pickup) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality()
                .equals(other.packageSize, packageSize) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.isFragile, isFragile) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.riderLocation, riderLocation) &&
            const DeepCollectionEquality()
                .equals(other.contactlessDelivery, contactlessDelivery) &&
            const DeepCollectionEquality()
                .equals(other.durationToPickup, durationToPickup) &&
            const DeepCollectionEquality()
                .equals(other.distanceToPickup, distanceToPickup) &&
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
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.receiver, receiver) &&
            const DeepCollectionEquality().equals(other.journey, journey) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(riderId),
        const DeepCollectionEquality().hash(pickup),
        const DeepCollectionEquality().hash(destination),
        const DeepCollectionEquality().hash(packageSize),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(isFragile),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(notes),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(paymentMethod),
        const DeepCollectionEquality().hash(riderLocation),
        const DeepCollectionEquality().hash(contactlessDelivery),
        const DeepCollectionEquality().hash(durationToPickup),
        const DeepCollectionEquality().hash(distanceToPickup),
        const DeepCollectionEquality().hash(orderActiveAt),
        const DeepCollectionEquality().hash(orderCancelledAt),
        const DeepCollectionEquality().hash(riderAcceptedAt),
        const DeepCollectionEquality().hash(riderReceivedAt),
        const DeepCollectionEquality().hash(riderDeliveredAt),
        const DeepCollectionEquality().hash(paymentDepositedAt),
        const DeepCollectionEquality().hash(paymentDepositConfirmedAt),
        const DeepCollectionEquality().hash(sender),
        const DeepCollectionEquality().hash(receiver),
        const DeepCollectionEquality().hash(journey),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(deletedAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$SendPackageCopyWith<_SendPackage> get copyWith =>
      __$SendPackageCopyWithImpl<_SendPackage>(this, _$identity);
}

abstract class _SendPackage extends SendPackage {
  const factory _SendPackage(
      {required UniqueId<String?> id,
      required UniqueId<String?> riderId,
      required UserAddress pickup,
      required UserAddress destination,
      PackageSize packageSize,
      required LogisticsType type,
      bool isFragile,
      required AmountField<double> price,
      required BasicTextField<String?> notes,
      ParcelStatus status,
      PaymentMethod? paymentMethod,
      required RiderLocation riderLocation,
      bool contactlessDelivery,
      Duration durationToPickup,
      required BasicTextField<double?> distanceToPickup,
      DateTime? orderActiveAt,
      DateTime? orderCancelledAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      DateTime? paymentDepositedAt,
      DateTime? paymentDepositConfirmedAt,
      required User sender,
      required User receiver,
      required JourneyDetail journey,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _$_SendPackage;
  const _SendPackage._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  UniqueId<String?> get riderId;
  @override
  UserAddress get pickup;
  @override
  UserAddress get destination;
  @override
  PackageSize get packageSize;
  @override
  LogisticsType get type;
  @override
  bool get isFragile;
  @override
  AmountField<double> get price;
  @override
  BasicTextField<String?> get notes;
  @override
  ParcelStatus get status;
  @override
  PaymentMethod? get paymentMethod;
  @override //
  RiderLocation get riderLocation;
  @override
  bool get contactlessDelivery;
  @override
  Duration get durationToPickup;
  @override
  BasicTextField<double?> get distanceToPickup;
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
  @override //
  User get sender;
  @override
  User get receiver;
  @override
  JourneyDetail get journey;
  @override //
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$SendPackageCopyWith<_SendPackage> get copyWith =>
      throw _privateConstructorUsedError;
}
