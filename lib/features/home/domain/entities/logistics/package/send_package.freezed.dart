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
      required RiderLocation pickup,
      required RiderLocation destination,
      PackageSize packageSize = PackageSize.small,
      bool isFragile = false,
      required AmountField<double> amount,
      required DisplayName receiverFullName,
      required Phone receiverPhone,
      required EmailAddress receiverEmailAddress,
      required BasicTextField<String?> receiverPhoneAlt,
      required BasicTextField<String?> notes,
      SendPackageStatus status = SendPackageStatus.PENDING,
      PaymentMethod? paymentMethod,
      required UniqueId<String?> riderId,
      required RiderLocation riderLocation,
      Duration durationToPickup = Duration.zero,
      required BasicTextField<double?> distanceToPickup,
      DateTime? orderActiveAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      required Sender sender,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _SendPackage(
      id: id,
      pickup: pickup,
      destination: destination,
      packageSize: packageSize,
      isFragile: isFragile,
      amount: amount,
      receiverFullName: receiverFullName,
      receiverPhone: receiverPhone,
      receiverEmailAddress: receiverEmailAddress,
      receiverPhoneAlt: receiverPhoneAlt,
      notes: notes,
      status: status,
      paymentMethod: paymentMethod,
      riderId: riderId,
      riderLocation: riderLocation,
      durationToPickup: durationToPickup,
      distanceToPickup: distanceToPickup,
      orderActiveAt: orderActiveAt,
      riderAcceptedAt: riderAcceptedAt,
      riderReceivedAt: riderReceivedAt,
      riderDeliveredAt: riderDeliveredAt,
      sender: sender,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $SendPackage = _$SendPackageTearOff();

/// @nodoc
mixin _$SendPackage {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  RiderLocation get pickup => throw _privateConstructorUsedError;
  RiderLocation get destination => throw _privateConstructorUsedError;
  PackageSize get packageSize => throw _privateConstructorUsedError;
  bool get isFragile => throw _privateConstructorUsedError;
  AmountField<double> get amount => throw _privateConstructorUsedError;
  DisplayName get receiverFullName => throw _privateConstructorUsedError;
  Phone get receiverPhone => throw _privateConstructorUsedError;
  EmailAddress get receiverEmailAddress => throw _privateConstructorUsedError;
  BasicTextField<String?> get receiverPhoneAlt =>
      throw _privateConstructorUsedError;
  BasicTextField<String?> get notes => throw _privateConstructorUsedError;
  SendPackageStatus get status => throw _privateConstructorUsedError;
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError; //
  UniqueId<String?> get riderId => throw _privateConstructorUsedError;
  RiderLocation get riderLocation => throw _privateConstructorUsedError;
  Duration get durationToPickup => throw _privateConstructorUsedError;
  BasicTextField<double?> get distanceToPickup =>
      throw _privateConstructorUsedError;
  DateTime? get orderActiveAt => throw _privateConstructorUsedError;
  DateTime? get riderAcceptedAt => throw _privateConstructorUsedError;
  DateTime? get riderReceivedAt => throw _privateConstructorUsedError;
  DateTime? get riderDeliveredAt => throw _privateConstructorUsedError;
  Sender get sender => throw _privateConstructorUsedError; //
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      RiderLocation pickup,
      RiderLocation destination,
      PackageSize packageSize,
      bool isFragile,
      AmountField<double> amount,
      DisplayName receiverFullName,
      Phone receiverPhone,
      EmailAddress receiverEmailAddress,
      BasicTextField<String?> receiverPhoneAlt,
      BasicTextField<String?> notes,
      SendPackageStatus status,
      PaymentMethod? paymentMethod,
      UniqueId<String?> riderId,
      RiderLocation riderLocation,
      Duration durationToPickup,
      BasicTextField<double?> distanceToPickup,
      DateTime? orderActiveAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      Sender sender,
      DateTime? createdAt,
      DateTime? updatedAt});

  $RiderLocationCopyWith<$Res> get pickup;
  $RiderLocationCopyWith<$Res> get destination;
  $RiderLocationCopyWith<$Res> get riderLocation;
  $SenderCopyWith<$Res> get sender;
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
    Object? pickup = freezed,
    Object? destination = freezed,
    Object? packageSize = freezed,
    Object? isFragile = freezed,
    Object? amount = freezed,
    Object? receiverFullName = freezed,
    Object? receiverPhone = freezed,
    Object? receiverEmailAddress = freezed,
    Object? receiverPhoneAlt = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? riderId = freezed,
    Object? riderLocation = freezed,
    Object? durationToPickup = freezed,
    Object? distanceToPickup = freezed,
    Object? orderActiveAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? sender = freezed,
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
      packageSize: packageSize == freezed
          ? _value.packageSize
          : packageSize // ignore: cast_nullable_to_non_nullable
              as PackageSize,
      isFragile: isFragile == freezed
          ? _value.isFragile
          : isFragile // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendPackageStatus,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
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
      orderActiveAt: orderActiveAt == freezed
          ? _value.orderActiveAt
          : orderActiveAt // ignore: cast_nullable_to_non_nullable
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
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
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
  $SenderCopyWith<$Res> get sender {
    return $SenderCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
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
      RiderLocation pickup,
      RiderLocation destination,
      PackageSize packageSize,
      bool isFragile,
      AmountField<double> amount,
      DisplayName receiverFullName,
      Phone receiverPhone,
      EmailAddress receiverEmailAddress,
      BasicTextField<String?> receiverPhoneAlt,
      BasicTextField<String?> notes,
      SendPackageStatus status,
      PaymentMethod? paymentMethod,
      UniqueId<String?> riderId,
      RiderLocation riderLocation,
      Duration durationToPickup,
      BasicTextField<double?> distanceToPickup,
      DateTime? orderActiveAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      Sender sender,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $RiderLocationCopyWith<$Res> get pickup;
  @override
  $RiderLocationCopyWith<$Res> get destination;
  @override
  $RiderLocationCopyWith<$Res> get riderLocation;
  @override
  $SenderCopyWith<$Res> get sender;
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
    Object? pickup = freezed,
    Object? destination = freezed,
    Object? packageSize = freezed,
    Object? isFragile = freezed,
    Object? amount = freezed,
    Object? receiverFullName = freezed,
    Object? receiverPhone = freezed,
    Object? receiverEmailAddress = freezed,
    Object? receiverPhoneAlt = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? riderId = freezed,
    Object? riderLocation = freezed,
    Object? durationToPickup = freezed,
    Object? distanceToPickup = freezed,
    Object? orderActiveAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? sender = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_SendPackage(
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
      packageSize: packageSize == freezed
          ? _value.packageSize
          : packageSize // ignore: cast_nullable_to_non_nullable
              as PackageSize,
      isFragile: isFragile == freezed
          ? _value.isFragile
          : isFragile // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendPackageStatus,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
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
      orderActiveAt: orderActiveAt == freezed
          ? _value.orderActiveAt
          : orderActiveAt // ignore: cast_nullable_to_non_nullable
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
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
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

class _$_SendPackage extends _SendPackage {
  const _$_SendPackage(
      {required this.id,
      required this.pickup,
      required this.destination,
      this.packageSize = PackageSize.small,
      this.isFragile = false,
      required this.amount,
      required this.receiverFullName,
      required this.receiverPhone,
      required this.receiverEmailAddress,
      required this.receiverPhoneAlt,
      required this.notes,
      this.status = SendPackageStatus.PENDING,
      this.paymentMethod,
      required this.riderId,
      required this.riderLocation,
      this.durationToPickup = Duration.zero,
      required this.distanceToPickup,
      this.orderActiveAt,
      this.riderAcceptedAt,
      this.riderReceivedAt,
      this.riderDeliveredAt,
      required this.sender,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final RiderLocation pickup;
  @override
  final RiderLocation destination;
  @JsonKey(defaultValue: PackageSize.small)
  @override
  final PackageSize packageSize;
  @JsonKey(defaultValue: false)
  @override
  final bool isFragile;
  @override
  final AmountField<double> amount;
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
  @JsonKey(defaultValue: SendPackageStatus.PENDING)
  @override
  final SendPackageStatus status;
  @override
  final PaymentMethod? paymentMethod;
  @override //
  final UniqueId<String?> riderId;
  @override
  final RiderLocation riderLocation;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration durationToPickup;
  @override
  final BasicTextField<double?> distanceToPickup;
  @override
  final DateTime? orderActiveAt;
  @override
  final DateTime? riderAcceptedAt;
  @override
  final DateTime? riderReceivedAt;
  @override
  final DateTime? riderDeliveredAt;
  @override
  final Sender sender;
  @override //
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'SendPackage(id: $id, pickup: $pickup, destination: $destination, packageSize: $packageSize, isFragile: $isFragile, amount: $amount, receiverFullName: $receiverFullName, receiverPhone: $receiverPhone, receiverEmailAddress: $receiverEmailAddress, receiverPhoneAlt: $receiverPhoneAlt, notes: $notes, status: $status, paymentMethod: $paymentMethod, riderId: $riderId, riderLocation: $riderLocation, durationToPickup: $durationToPickup, distanceToPickup: $distanceToPickup, orderActiveAt: $orderActiveAt, riderAcceptedAt: $riderAcceptedAt, riderReceivedAt: $riderReceivedAt, riderDeliveredAt: $riderDeliveredAt, sender: $sender, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendPackage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.packageSize, packageSize) ||
                other.packageSize == packageSize) &&
            (identical(other.isFragile, isFragile) ||
                other.isFragile == isFragile) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receiverFullName, receiverFullName) ||
                other.receiverFullName == receiverFullName) &&
            (identical(other.receiverPhone, receiverPhone) ||
                other.receiverPhone == receiverPhone) &&
            (identical(other.receiverEmailAddress, receiverEmailAddress) ||
                other.receiverEmailAddress == receiverEmailAddress) &&
            (identical(other.receiverPhoneAlt, receiverPhoneAlt) ||
                other.receiverPhoneAlt == receiverPhoneAlt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.riderId, riderId) || other.riderId == riderId) &&
            (identical(other.riderLocation, riderLocation) ||
                other.riderLocation == riderLocation) &&
            (identical(other.durationToPickup, durationToPickup) ||
                other.durationToPickup == durationToPickup) &&
            (identical(other.distanceToPickup, distanceToPickup) ||
                other.distanceToPickup == distanceToPickup) &&
            (identical(other.orderActiveAt, orderActiveAt) ||
                other.orderActiveAt == orderActiveAt) &&
            (identical(other.riderAcceptedAt, riderAcceptedAt) ||
                other.riderAcceptedAt == riderAcceptedAt) &&
            (identical(other.riderReceivedAt, riderReceivedAt) ||
                other.riderReceivedAt == riderReceivedAt) &&
            (identical(other.riderDeliveredAt, riderDeliveredAt) ||
                other.riderDeliveredAt == riderDeliveredAt) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        pickup,
        destination,
        packageSize,
        isFragile,
        amount,
        receiverFullName,
        receiverPhone,
        receiverEmailAddress,
        receiverPhoneAlt,
        notes,
        status,
        paymentMethod,
        riderId,
        riderLocation,
        durationToPickup,
        distanceToPickup,
        orderActiveAt,
        riderAcceptedAt,
        riderReceivedAt,
        riderDeliveredAt,
        sender,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  _$SendPackageCopyWith<_SendPackage> get copyWith =>
      __$SendPackageCopyWithImpl<_SendPackage>(this, _$identity);
}

abstract class _SendPackage extends SendPackage {
  const factory _SendPackage(
      {required UniqueId<String?> id,
      required RiderLocation pickup,
      required RiderLocation destination,
      PackageSize packageSize,
      bool isFragile,
      required AmountField<double> amount,
      required DisplayName receiverFullName,
      required Phone receiverPhone,
      required EmailAddress receiverEmailAddress,
      required BasicTextField<String?> receiverPhoneAlt,
      required BasicTextField<String?> notes,
      SendPackageStatus status,
      PaymentMethod? paymentMethod,
      required UniqueId<String?> riderId,
      required RiderLocation riderLocation,
      Duration durationToPickup,
      required BasicTextField<double?> distanceToPickup,
      DateTime? orderActiveAt,
      DateTime? riderAcceptedAt,
      DateTime? riderReceivedAt,
      DateTime? riderDeliveredAt,
      required Sender sender,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_SendPackage;
  const _SendPackage._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  RiderLocation get pickup;
  @override
  RiderLocation get destination;
  @override
  PackageSize get packageSize;
  @override
  bool get isFragile;
  @override
  AmountField<double> get amount;
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
  SendPackageStatus get status;
  @override
  PaymentMethod? get paymentMethod;
  @override //
  UniqueId<String?> get riderId;
  @override
  RiderLocation get riderLocation;
  @override
  Duration get durationToPickup;
  @override
  BasicTextField<double?> get distanceToPickup;
  @override
  DateTime? get orderActiveAt;
  @override
  DateTime? get riderAcceptedAt;
  @override
  DateTime? get riderReceivedAt;
  @override
  DateTime? get riderDeliveredAt;
  @override
  Sender get sender;
  @override //
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$SendPackageCopyWith<_SendPackage> get copyWith =>
      throw _privateConstructorUsedError;
}
