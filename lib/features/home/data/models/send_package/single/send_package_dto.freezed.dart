// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of send_package_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendPackageDTO _$SendPackageDTOFromJson(Map<String, dynamic> json) {
  return _SendPackageDTO.fromJson(json);
}

/// @nodoc
class _$SendPackageDTOTearOff {
  const _$SendPackageDTOTearOff();

  _SendPackageDTO call(
      {String? id,
      @JsonKey(name: 'pickup_lat')
      @DoubleSerializer()
          double? pickupLat,
      @JsonKey(name: 'pickup_long')
      @DoubleSerializer()
          double? pickupLng,
      @JsonKey(name: 'destination_lat')
      @DoubleSerializer()
          double? destinationLat,
      @JsonKey(name: 'destination_long')
      @DoubleSerializer()
          double? destinationLng,
      @JsonKey(name: 'pickup_address')
          String? pickupAddress,
      @JsonKey(name: 'destination_address')
          String? destinationAddress,
      @JsonKey(name: 'package_size')
      @PackageSizeSerializer()
          PackageSize? packageSize,
      @JsonKey(name: 'package_is_fragile')
      @BooleanSerializer()
          bool? isFragile,
      @DoubleSerializer()
          double? amount,
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @JsonKey(name: 'receiver_full_name')
          String? receiverFullName,
      @JsonKey(name: 'receiver_phone_number')
          String? receiverPhone,
      @JsonKey(name: 'receiver_email_address')
          String? receiverEmailAddress,
      @JsonKey(name: 'receiver_alternative_phone_number')
          String? receiverPhoneAlt,
      @JsonKey(name: 'note')
          String? notes,
      @SendPackageStatusSerializer()
          SendPackageStatus status = SendPackageStatus.PENDING,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'rider_current_lat')
      @DoubleSerializer()
          double? riderLat,
      @JsonKey(name: 'rider_current_long')
      @DoubleSerializer()
          double? riderLng,
      @JsonKey(name: 'order_active_at')
      @TimestampConverter()
          DateTime? orderActiveAt,
      @JsonKey(name: 'order_cancelled_at')
      @TimestampConverter()
          DateTime? orderCancelledAt,
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
          DateTime? paymentDepositedAt,
      @JsonKey(name: 'payment_deposited_confirmed_at')
      @TimestampConverter()
          DateTime? paymentDepositConfirmedAt,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @JsonKey(name: 'journeyDetails')
          JourneyDetailDTO? journey,
      @JsonKey(name: 'package')
          SendPackageDTO? packageData,
      @JsonKey(name: 'user')
          SenderDTO? sender,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt}) {
    return _SendPackageDTO(
      id: id,
      pickupLat: pickupLat,
      pickupLng: pickupLng,
      destinationLat: destinationLat,
      destinationLng: destinationLng,
      pickupAddress: pickupAddress,
      destinationAddress: destinationAddress,
      packageSize: packageSize,
      isFragile: isFragile,
      amount: amount,
      paymentMethod: paymentMethod,
      receiverFullName: receiverFullName,
      receiverPhone: receiverPhone,
      receiverEmailAddress: receiverEmailAddress,
      receiverPhoneAlt: receiverPhoneAlt,
      notes: notes,
      status: status,
      riderId: riderId,
      riderLat: riderLat,
      riderLng: riderLng,
      orderActiveAt: orderActiveAt,
      orderCancelledAt: orderCancelledAt,
      riderAcceptedAt: riderAcceptedAt,
      riderReceivedAt: riderReceivedAt,
      riderDeliveredAt: riderDeliveredAt,
      paymentDepositedAt: paymentDepositedAt,
      paymentDepositConfirmedAt: paymentDepositConfirmedAt,
      time: time,
      distance: distance,
      journey: journey,
      packageData: packageData,
      sender: sender,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  SendPackageDTO fromJson(Map<String, Object?> json) {
    return SendPackageDTO.fromJson(json);
  }
}

/// @nodoc
const $SendPackageDTO = _$SendPackageDTOTearOff();

/// @nodoc
mixin _$SendPackageDTO {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_lat')
  @DoubleSerializer()
  double? get pickupLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_long')
  @DoubleSerializer()
  double? get pickupLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_lat')
  @DoubleSerializer()
  double? get destinationLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_long')
  @DoubleSerializer()
  double? get destinationLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_address')
  String? get pickupAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_address')
  String? get destinationAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_size')
  @PackageSizeSerializer()
  PackageSize? get packageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_is_fragile')
  @BooleanSerializer()
  bool? get isFragile => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  @PaymentMethodSerializer()
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver_full_name')
  String? get receiverFullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver_phone_number')
  String? get receiverPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver_email_address')
  String? get receiverEmailAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver_alternative_phone_number')
  String? get receiverPhoneAlt => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get notes => throw _privateConstructorUsedError;
  @SendPackageStatusSerializer()
  SendPackageStatus get status => throw _privateConstructorUsedError; //
  @JsonKey(name: 'rider_id')
  String? get riderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_current_lat')
  @DoubleSerializer()
  double? get riderLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_current_long')
  @DoubleSerializer()
  double? get riderLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_active_at')
  @TimestampConverter()
  DateTime? get orderActiveAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_cancelled_at')
  @TimestampConverter()
  DateTime? get orderCancelledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_accepted_at')
  @TimestampConverter()
  DateTime? get riderAcceptedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_received_package_at')
  @TimestampConverter()
  DateTime? get riderReceivedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_delivered_package_at')
  @TimestampConverter()
  DateTime? get riderDeliveredAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_deposited_at')
  @TimestampConverter()
  DateTime? get paymentDepositedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_deposited_confirmed_at')
  @TimestampConverter()
  DateTime? get paymentDepositConfirmedAt =>
      throw _privateConstructorUsedError; //
  @SecondsToDurationConverter()
  Duration? get time => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get distance => throw _privateConstructorUsedError; //
  @JsonKey(name: 'journeyDetails')
  JourneyDetailDTO? get journey => throw _privateConstructorUsedError;
  @JsonKey(name: 'package')
  SendPackageDTO? get packageData => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  SenderDTO? get sender => throw _privateConstructorUsedError; //
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendPackageDTOCopyWith<SendPackageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPackageDTOCopyWith<$Res> {
  factory $SendPackageDTOCopyWith(
          SendPackageDTO value, $Res Function(SendPackageDTO) then) =
      _$SendPackageDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'pickup_lat')
      @DoubleSerializer()
          double? pickupLat,
      @JsonKey(name: 'pickup_long')
      @DoubleSerializer()
          double? pickupLng,
      @JsonKey(name: 'destination_lat')
      @DoubleSerializer()
          double? destinationLat,
      @JsonKey(name: 'destination_long')
      @DoubleSerializer()
          double? destinationLng,
      @JsonKey(name: 'pickup_address')
          String? pickupAddress,
      @JsonKey(name: 'destination_address')
          String? destinationAddress,
      @JsonKey(name: 'package_size')
      @PackageSizeSerializer()
          PackageSize? packageSize,
      @JsonKey(name: 'package_is_fragile')
      @BooleanSerializer()
          bool? isFragile,
      @DoubleSerializer()
          double? amount,
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @JsonKey(name: 'receiver_full_name')
          String? receiverFullName,
      @JsonKey(name: 'receiver_phone_number')
          String? receiverPhone,
      @JsonKey(name: 'receiver_email_address')
          String? receiverEmailAddress,
      @JsonKey(name: 'receiver_alternative_phone_number')
          String? receiverPhoneAlt,
      @JsonKey(name: 'note')
          String? notes,
      @SendPackageStatusSerializer()
          SendPackageStatus status,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'rider_current_lat')
      @DoubleSerializer()
          double? riderLat,
      @JsonKey(name: 'rider_current_long')
      @DoubleSerializer()
          double? riderLng,
      @JsonKey(name: 'order_active_at')
      @TimestampConverter()
          DateTime? orderActiveAt,
      @JsonKey(name: 'order_cancelled_at')
      @TimestampConverter()
          DateTime? orderCancelledAt,
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
          DateTime? paymentDepositedAt,
      @JsonKey(name: 'payment_deposited_confirmed_at')
      @TimestampConverter()
          DateTime? paymentDepositConfirmedAt,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @JsonKey(name: 'journeyDetails')
          JourneyDetailDTO? journey,
      @JsonKey(name: 'package')
          SendPackageDTO? packageData,
      @JsonKey(name: 'user')
          SenderDTO? sender,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt});

  $JourneyDetailDTOCopyWith<$Res>? get journey;
  $SendPackageDTOCopyWith<$Res>? get packageData;
  $SenderDTOCopyWith<$Res>? get sender;
}

/// @nodoc
class _$SendPackageDTOCopyWithImpl<$Res>
    implements $SendPackageDTOCopyWith<$Res> {
  _$SendPackageDTOCopyWithImpl(this._value, this._then);

  final SendPackageDTO _value;
  // ignore: unused_field
  final $Res Function(SendPackageDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? destinationLat = freezed,
    Object? destinationLng = freezed,
    Object? pickupAddress = freezed,
    Object? destinationAddress = freezed,
    Object? packageSize = freezed,
    Object? isFragile = freezed,
    Object? amount = freezed,
    Object? paymentMethod = freezed,
    Object? receiverFullName = freezed,
    Object? receiverPhone = freezed,
    Object? receiverEmailAddress = freezed,
    Object? receiverPhoneAlt = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? riderId = freezed,
    Object? riderLat = freezed,
    Object? riderLng = freezed,
    Object? orderActiveAt = freezed,
    Object? orderCancelledAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? paymentDepositedAt = freezed,
    Object? paymentDepositConfirmedAt = freezed,
    Object? time = freezed,
    Object? distance = freezed,
    Object? journey = freezed,
    Object? packageData = freezed,
    Object? sender = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLat: pickupLat == freezed
          ? _value.pickupLat
          : pickupLat // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLng: pickupLng == freezed
          ? _value.pickupLng
          : pickupLng // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLat: destinationLat == freezed
          ? _value.destinationLat
          : destinationLat // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLng: destinationLng == freezed
          ? _value.destinationLng
          : destinationLng // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupAddress: pickupAddress == freezed
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAddress: destinationAddress == freezed
          ? _value.destinationAddress
          : destinationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      packageSize: packageSize == freezed
          ? _value.packageSize
          : packageSize // ignore: cast_nullable_to_non_nullable
              as PackageSize?,
      isFragile: isFragile == freezed
          ? _value.isFragile
          : isFragile // ignore: cast_nullable_to_non_nullable
              as bool?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      receiverFullName: receiverFullName == freezed
          ? _value.receiverFullName
          : receiverFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverPhone: receiverPhone == freezed
          ? _value.receiverPhone
          : receiverPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverEmailAddress: receiverEmailAddress == freezed
          ? _value.receiverEmailAddress
          : receiverEmailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverPhoneAlt: receiverPhoneAlt == freezed
          ? _value.receiverPhoneAlt
          : receiverPhoneAlt // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendPackageStatus,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as String?,
      riderLat: riderLat == freezed
          ? _value.riderLat
          : riderLat // ignore: cast_nullable_to_non_nullable
              as double?,
      riderLng: riderLng == freezed
          ? _value.riderLng
          : riderLng // ignore: cast_nullable_to_non_nullable
              as double?,
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
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      journey: journey == freezed
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDetailDTO?,
      packageData: packageData == freezed
          ? _value.packageData
          : packageData // ignore: cast_nullable_to_non_nullable
              as SendPackageDTO?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderDTO?,
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
  $JourneyDetailDTOCopyWith<$Res>? get journey {
    if (_value.journey == null) {
      return null;
    }

    return $JourneyDetailDTOCopyWith<$Res>(_value.journey!, (value) {
      return _then(_value.copyWith(journey: value));
    });
  }

  @override
  $SendPackageDTOCopyWith<$Res>? get packageData {
    if (_value.packageData == null) {
      return null;
    }

    return $SendPackageDTOCopyWith<$Res>(_value.packageData!, (value) {
      return _then(_value.copyWith(packageData: value));
    });
  }

  @override
  $SenderDTOCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $SenderDTOCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$SendPackageDTOCopyWith<$Res>
    implements $SendPackageDTOCopyWith<$Res> {
  factory _$SendPackageDTOCopyWith(
          _SendPackageDTO value, $Res Function(_SendPackageDTO) then) =
      __$SendPackageDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'pickup_lat')
      @DoubleSerializer()
          double? pickupLat,
      @JsonKey(name: 'pickup_long')
      @DoubleSerializer()
          double? pickupLng,
      @JsonKey(name: 'destination_lat')
      @DoubleSerializer()
          double? destinationLat,
      @JsonKey(name: 'destination_long')
      @DoubleSerializer()
          double? destinationLng,
      @JsonKey(name: 'pickup_address')
          String? pickupAddress,
      @JsonKey(name: 'destination_address')
          String? destinationAddress,
      @JsonKey(name: 'package_size')
      @PackageSizeSerializer()
          PackageSize? packageSize,
      @JsonKey(name: 'package_is_fragile')
      @BooleanSerializer()
          bool? isFragile,
      @DoubleSerializer()
          double? amount,
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @JsonKey(name: 'receiver_full_name')
          String? receiverFullName,
      @JsonKey(name: 'receiver_phone_number')
          String? receiverPhone,
      @JsonKey(name: 'receiver_email_address')
          String? receiverEmailAddress,
      @JsonKey(name: 'receiver_alternative_phone_number')
          String? receiverPhoneAlt,
      @JsonKey(name: 'note')
          String? notes,
      @SendPackageStatusSerializer()
          SendPackageStatus status,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'rider_current_lat')
      @DoubleSerializer()
          double? riderLat,
      @JsonKey(name: 'rider_current_long')
      @DoubleSerializer()
          double? riderLng,
      @JsonKey(name: 'order_active_at')
      @TimestampConverter()
          DateTime? orderActiveAt,
      @JsonKey(name: 'order_cancelled_at')
      @TimestampConverter()
          DateTime? orderCancelledAt,
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
          DateTime? paymentDepositedAt,
      @JsonKey(name: 'payment_deposited_confirmed_at')
      @TimestampConverter()
          DateTime? paymentDepositConfirmedAt,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @JsonKey(name: 'journeyDetails')
          JourneyDetailDTO? journey,
      @JsonKey(name: 'package')
          SendPackageDTO? packageData,
      @JsonKey(name: 'user')
          SenderDTO? sender,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt});

  @override
  $JourneyDetailDTOCopyWith<$Res>? get journey;
  @override
  $SendPackageDTOCopyWith<$Res>? get packageData;
  @override
  $SenderDTOCopyWith<$Res>? get sender;
}

/// @nodoc
class __$SendPackageDTOCopyWithImpl<$Res>
    extends _$SendPackageDTOCopyWithImpl<$Res>
    implements _$SendPackageDTOCopyWith<$Res> {
  __$SendPackageDTOCopyWithImpl(
      _SendPackageDTO _value, $Res Function(_SendPackageDTO) _then)
      : super(_value, (v) => _then(v as _SendPackageDTO));

  @override
  _SendPackageDTO get _value => super._value as _SendPackageDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? destinationLat = freezed,
    Object? destinationLng = freezed,
    Object? pickupAddress = freezed,
    Object? destinationAddress = freezed,
    Object? packageSize = freezed,
    Object? isFragile = freezed,
    Object? amount = freezed,
    Object? paymentMethod = freezed,
    Object? receiverFullName = freezed,
    Object? receiverPhone = freezed,
    Object? receiverEmailAddress = freezed,
    Object? receiverPhoneAlt = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? riderId = freezed,
    Object? riderLat = freezed,
    Object? riderLng = freezed,
    Object? orderActiveAt = freezed,
    Object? orderCancelledAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? paymentDepositedAt = freezed,
    Object? paymentDepositConfirmedAt = freezed,
    Object? time = freezed,
    Object? distance = freezed,
    Object? journey = freezed,
    Object? packageData = freezed,
    Object? sender = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_SendPackageDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLat: pickupLat == freezed
          ? _value.pickupLat
          : pickupLat // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLng: pickupLng == freezed
          ? _value.pickupLng
          : pickupLng // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLat: destinationLat == freezed
          ? _value.destinationLat
          : destinationLat // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLng: destinationLng == freezed
          ? _value.destinationLng
          : destinationLng // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupAddress: pickupAddress == freezed
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAddress: destinationAddress == freezed
          ? _value.destinationAddress
          : destinationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      packageSize: packageSize == freezed
          ? _value.packageSize
          : packageSize // ignore: cast_nullable_to_non_nullable
              as PackageSize?,
      isFragile: isFragile == freezed
          ? _value.isFragile
          : isFragile // ignore: cast_nullable_to_non_nullable
              as bool?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      receiverFullName: receiverFullName == freezed
          ? _value.receiverFullName
          : receiverFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverPhone: receiverPhone == freezed
          ? _value.receiverPhone
          : receiverPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverEmailAddress: receiverEmailAddress == freezed
          ? _value.receiverEmailAddress
          : receiverEmailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverPhoneAlt: receiverPhoneAlt == freezed
          ? _value.receiverPhoneAlt
          : receiverPhoneAlt // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendPackageStatus,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as String?,
      riderLat: riderLat == freezed
          ? _value.riderLat
          : riderLat // ignore: cast_nullable_to_non_nullable
              as double?,
      riderLng: riderLng == freezed
          ? _value.riderLng
          : riderLng // ignore: cast_nullable_to_non_nullable
              as double?,
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
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      journey: journey == freezed
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDetailDTO?,
      packageData: packageData == freezed
          ? _value.packageData
          : packageData // ignore: cast_nullable_to_non_nullable
              as SendPackageDTO?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderDTO?,
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
@JsonSerializable()
class _$_SendPackageDTO extends _SendPackageDTO {
  const _$_SendPackageDTO(
      {this.id,
      @JsonKey(name: 'pickup_lat')
      @DoubleSerializer()
          this.pickupLat,
      @JsonKey(name: 'pickup_long')
      @DoubleSerializer()
          this.pickupLng,
      @JsonKey(name: 'destination_lat')
      @DoubleSerializer()
          this.destinationLat,
      @JsonKey(name: 'destination_long')
      @DoubleSerializer()
          this.destinationLng,
      @JsonKey(name: 'pickup_address')
          this.pickupAddress,
      @JsonKey(name: 'destination_address')
          this.destinationAddress,
      @JsonKey(name: 'package_size')
      @PackageSizeSerializer()
          this.packageSize,
      @JsonKey(name: 'package_is_fragile')
      @BooleanSerializer()
          this.isFragile,
      @DoubleSerializer()
          this.amount,
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          this.paymentMethod,
      @JsonKey(name: 'receiver_full_name')
          this.receiverFullName,
      @JsonKey(name: 'receiver_phone_number')
          this.receiverPhone,
      @JsonKey(name: 'receiver_email_address')
          this.receiverEmailAddress,
      @JsonKey(name: 'receiver_alternative_phone_number')
          this.receiverPhoneAlt,
      @JsonKey(name: 'note')
          this.notes,
      @SendPackageStatusSerializer()
          this.status = SendPackageStatus.PENDING,
      @JsonKey(name: 'rider_id')
          this.riderId,
      @JsonKey(name: 'rider_current_lat')
      @DoubleSerializer()
          this.riderLat,
      @JsonKey(name: 'rider_current_long')
      @DoubleSerializer()
          this.riderLng,
      @JsonKey(name: 'order_active_at')
      @TimestampConverter()
          this.orderActiveAt,
      @JsonKey(name: 'order_cancelled_at')
      @TimestampConverter()
          this.orderCancelledAt,
      @JsonKey(name: 'rider_accepted_at')
      @TimestampConverter()
          this.riderAcceptedAt,
      @JsonKey(name: 'rider_received_package_at')
      @TimestampConverter()
          this.riderReceivedAt,
      @JsonKey(name: 'rider_delivered_package_at')
      @TimestampConverter()
          this.riderDeliveredAt,
      @JsonKey(name: 'payment_deposited_at')
      @TimestampConverter()
          this.paymentDepositedAt,
      @JsonKey(name: 'payment_deposited_confirmed_at')
      @TimestampConverter()
          this.paymentDepositConfirmedAt,
      @SecondsToDurationConverter()
          this.time,
      @DoubleSerializer()
          this.distance,
      @JsonKey(name: 'journeyDetails')
          this.journey,
      @JsonKey(name: 'package')
          this.packageData,
      @JsonKey(name: 'user')
          this.sender,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          this.updatedAt})
      : super._();

  factory _$_SendPackageDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SendPackageDTOFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'pickup_lat')
  @DoubleSerializer()
  final double? pickupLat;
  @override
  @JsonKey(name: 'pickup_long')
  @DoubleSerializer()
  final double? pickupLng;
  @override
  @JsonKey(name: 'destination_lat')
  @DoubleSerializer()
  final double? destinationLat;
  @override
  @JsonKey(name: 'destination_long')
  @DoubleSerializer()
  final double? destinationLng;
  @override
  @JsonKey(name: 'pickup_address')
  final String? pickupAddress;
  @override
  @JsonKey(name: 'destination_address')
  final String? destinationAddress;
  @override
  @JsonKey(name: 'package_size')
  @PackageSizeSerializer()
  final PackageSize? packageSize;
  @override
  @JsonKey(name: 'package_is_fragile')
  @BooleanSerializer()
  final bool? isFragile;
  @override
  @DoubleSerializer()
  final double? amount;
  @override
  @JsonKey(name: 'payment_method')
  @PaymentMethodSerializer()
  final PaymentMethod? paymentMethod;
  @override
  @JsonKey(name: 'receiver_full_name')
  final String? receiverFullName;
  @override
  @JsonKey(name: 'receiver_phone_number')
  final String? receiverPhone;
  @override
  @JsonKey(name: 'receiver_email_address')
  final String? receiverEmailAddress;
  @override
  @JsonKey(name: 'receiver_alternative_phone_number')
  final String? receiverPhoneAlt;
  @override
  @JsonKey(name: 'note')
  final String? notes;
  @JsonKey(defaultValue: SendPackageStatus.PENDING)
  @override
  @SendPackageStatusSerializer()
  final SendPackageStatus status;
  @override //
  @JsonKey(name: 'rider_id')
  final String? riderId;
  @override
  @JsonKey(name: 'rider_current_lat')
  @DoubleSerializer()
  final double? riderLat;
  @override
  @JsonKey(name: 'rider_current_long')
  @DoubleSerializer()
  final double? riderLng;
  @override
  @JsonKey(name: 'order_active_at')
  @TimestampConverter()
  final DateTime? orderActiveAt;
  @override
  @JsonKey(name: 'order_cancelled_at')
  @TimestampConverter()
  final DateTime? orderCancelledAt;
  @override
  @JsonKey(name: 'rider_accepted_at')
  @TimestampConverter()
  final DateTime? riderAcceptedAt;
  @override
  @JsonKey(name: 'rider_received_package_at')
  @TimestampConverter()
  final DateTime? riderReceivedAt;
  @override
  @JsonKey(name: 'rider_delivered_package_at')
  @TimestampConverter()
  final DateTime? riderDeliveredAt;
  @override
  @JsonKey(name: 'payment_deposited_at')
  @TimestampConverter()
  final DateTime? paymentDepositedAt;
  @override
  @JsonKey(name: 'payment_deposited_confirmed_at')
  @TimestampConverter()
  final DateTime? paymentDepositConfirmedAt;
  @override //
  @SecondsToDurationConverter()
  final Duration? time;
  @override
  @DoubleSerializer()
  final double? distance;
  @override //
  @JsonKey(name: 'journeyDetails')
  final JourneyDetailDTO? journey;
  @override
  @JsonKey(name: 'package')
  final SendPackageDTO? packageData;
  @override
  @JsonKey(name: 'user')
  final SenderDTO? sender;
  @override //
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'SendPackageDTO(id: $id, pickupLat: $pickupLat, pickupLng: $pickupLng, destinationLat: $destinationLat, destinationLng: $destinationLng, pickupAddress: $pickupAddress, destinationAddress: $destinationAddress, packageSize: $packageSize, isFragile: $isFragile, amount: $amount, paymentMethod: $paymentMethod, receiverFullName: $receiverFullName, receiverPhone: $receiverPhone, receiverEmailAddress: $receiverEmailAddress, receiverPhoneAlt: $receiverPhoneAlt, notes: $notes, status: $status, riderId: $riderId, riderLat: $riderLat, riderLng: $riderLng, orderActiveAt: $orderActiveAt, orderCancelledAt: $orderCancelledAt, riderAcceptedAt: $riderAcceptedAt, riderReceivedAt: $riderReceivedAt, riderDeliveredAt: $riderDeliveredAt, paymentDepositedAt: $paymentDepositedAt, paymentDepositConfirmedAt: $paymentDepositConfirmedAt, time: $time, distance: $distance, journey: $journey, packageData: $packageData, sender: $sender, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendPackageDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pickupLat, pickupLat) ||
                other.pickupLat == pickupLat) &&
            (identical(other.pickupLng, pickupLng) ||
                other.pickupLng == pickupLng) &&
            (identical(other.destinationLat, destinationLat) ||
                other.destinationLat == destinationLat) &&
            (identical(other.destinationLng, destinationLng) ||
                other.destinationLng == destinationLng) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.destinationAddress, destinationAddress) ||
                other.destinationAddress == destinationAddress) &&
            (identical(other.packageSize, packageSize) ||
                other.packageSize == packageSize) &&
            (identical(other.isFragile, isFragile) ||
                other.isFragile == isFragile) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
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
            (identical(other.riderId, riderId) || other.riderId == riderId) &&
            (identical(other.riderLat, riderLat) ||
                other.riderLat == riderLat) &&
            (identical(other.riderLng, riderLng) ||
                other.riderLng == riderLng) &&
            (identical(other.orderActiveAt, orderActiveAt) ||
                other.orderActiveAt == orderActiveAt) &&
            (identical(other.orderCancelledAt, orderCancelledAt) ||
                other.orderCancelledAt == orderCancelledAt) &&
            (identical(other.riderAcceptedAt, riderAcceptedAt) ||
                other.riderAcceptedAt == riderAcceptedAt) &&
            (identical(other.riderReceivedAt, riderReceivedAt) ||
                other.riderReceivedAt == riderReceivedAt) &&
            (identical(other.riderDeliveredAt, riderDeliveredAt) ||
                other.riderDeliveredAt == riderDeliveredAt) &&
            (identical(other.paymentDepositedAt, paymentDepositedAt) ||
                other.paymentDepositedAt == paymentDepositedAt) &&
            (identical(other.paymentDepositConfirmedAt,
                    paymentDepositConfirmedAt) ||
                other.paymentDepositConfirmedAt == paymentDepositConfirmedAt) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.journey, journey) || other.journey == journey) &&
            (identical(other.packageData, packageData) ||
                other.packageData == packageData) &&
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
        pickupLat,
        pickupLng,
        destinationLat,
        destinationLng,
        pickupAddress,
        destinationAddress,
        packageSize,
        isFragile,
        amount,
        paymentMethod,
        receiverFullName,
        receiverPhone,
        receiverEmailAddress,
        receiverPhoneAlt,
        notes,
        status,
        riderId,
        riderLat,
        riderLng,
        orderActiveAt,
        orderCancelledAt,
        riderAcceptedAt,
        riderReceivedAt,
        riderDeliveredAt,
        paymentDepositedAt,
        paymentDepositConfirmedAt,
        time,
        distance,
        journey,
        packageData,
        sender,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  _$SendPackageDTOCopyWith<_SendPackageDTO> get copyWith =>
      __$SendPackageDTOCopyWithImpl<_SendPackageDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendPackageDTOToJson(this);
  }
}

abstract class _SendPackageDTO extends SendPackageDTO {
  const factory _SendPackageDTO(
      {String? id,
      @JsonKey(name: 'pickup_lat')
      @DoubleSerializer()
          double? pickupLat,
      @JsonKey(name: 'pickup_long')
      @DoubleSerializer()
          double? pickupLng,
      @JsonKey(name: 'destination_lat')
      @DoubleSerializer()
          double? destinationLat,
      @JsonKey(name: 'destination_long')
      @DoubleSerializer()
          double? destinationLng,
      @JsonKey(name: 'pickup_address')
          String? pickupAddress,
      @JsonKey(name: 'destination_address')
          String? destinationAddress,
      @JsonKey(name: 'package_size')
      @PackageSizeSerializer()
          PackageSize? packageSize,
      @JsonKey(name: 'package_is_fragile')
      @BooleanSerializer()
          bool? isFragile,
      @DoubleSerializer()
          double? amount,
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @JsonKey(name: 'receiver_full_name')
          String? receiverFullName,
      @JsonKey(name: 'receiver_phone_number')
          String? receiverPhone,
      @JsonKey(name: 'receiver_email_address')
          String? receiverEmailAddress,
      @JsonKey(name: 'receiver_alternative_phone_number')
          String? receiverPhoneAlt,
      @JsonKey(name: 'note')
          String? notes,
      @SendPackageStatusSerializer()
          SendPackageStatus status,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'rider_current_lat')
      @DoubleSerializer()
          double? riderLat,
      @JsonKey(name: 'rider_current_long')
      @DoubleSerializer()
          double? riderLng,
      @JsonKey(name: 'order_active_at')
      @TimestampConverter()
          DateTime? orderActiveAt,
      @JsonKey(name: 'order_cancelled_at')
      @TimestampConverter()
          DateTime? orderCancelledAt,
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
          DateTime? paymentDepositedAt,
      @JsonKey(name: 'payment_deposited_confirmed_at')
      @TimestampConverter()
          DateTime? paymentDepositConfirmedAt,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @JsonKey(name: 'journeyDetails')
          JourneyDetailDTO? journey,
      @JsonKey(name: 'package')
          SendPackageDTO? packageData,
      @JsonKey(name: 'user')
          SenderDTO? sender,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt}) = _$_SendPackageDTO;
  const _SendPackageDTO._() : super._();

  factory _SendPackageDTO.fromJson(Map<String, dynamic> json) =
      _$_SendPackageDTO.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'pickup_lat')
  @DoubleSerializer()
  double? get pickupLat;
  @override
  @JsonKey(name: 'pickup_long')
  @DoubleSerializer()
  double? get pickupLng;
  @override
  @JsonKey(name: 'destination_lat')
  @DoubleSerializer()
  double? get destinationLat;
  @override
  @JsonKey(name: 'destination_long')
  @DoubleSerializer()
  double? get destinationLng;
  @override
  @JsonKey(name: 'pickup_address')
  String? get pickupAddress;
  @override
  @JsonKey(name: 'destination_address')
  String? get destinationAddress;
  @override
  @JsonKey(name: 'package_size')
  @PackageSizeSerializer()
  PackageSize? get packageSize;
  @override
  @JsonKey(name: 'package_is_fragile')
  @BooleanSerializer()
  bool? get isFragile;
  @override
  @DoubleSerializer()
  double? get amount;
  @override
  @JsonKey(name: 'payment_method')
  @PaymentMethodSerializer()
  PaymentMethod? get paymentMethod;
  @override
  @JsonKey(name: 'receiver_full_name')
  String? get receiverFullName;
  @override
  @JsonKey(name: 'receiver_phone_number')
  String? get receiverPhone;
  @override
  @JsonKey(name: 'receiver_email_address')
  String? get receiverEmailAddress;
  @override
  @JsonKey(name: 'receiver_alternative_phone_number')
  String? get receiverPhoneAlt;
  @override
  @JsonKey(name: 'note')
  String? get notes;
  @override
  @SendPackageStatusSerializer()
  SendPackageStatus get status;
  @override //
  @JsonKey(name: 'rider_id')
  String? get riderId;
  @override
  @JsonKey(name: 'rider_current_lat')
  @DoubleSerializer()
  double? get riderLat;
  @override
  @JsonKey(name: 'rider_current_long')
  @DoubleSerializer()
  double? get riderLng;
  @override
  @JsonKey(name: 'order_active_at')
  @TimestampConverter()
  DateTime? get orderActiveAt;
  @override
  @JsonKey(name: 'order_cancelled_at')
  @TimestampConverter()
  DateTime? get orderCancelledAt;
  @override
  @JsonKey(name: 'rider_accepted_at')
  @TimestampConverter()
  DateTime? get riderAcceptedAt;
  @override
  @JsonKey(name: 'rider_received_package_at')
  @TimestampConverter()
  DateTime? get riderReceivedAt;
  @override
  @JsonKey(name: 'rider_delivered_package_at')
  @TimestampConverter()
  DateTime? get riderDeliveredAt;
  @override
  @JsonKey(name: 'payment_deposited_at')
  @TimestampConverter()
  DateTime? get paymentDepositedAt;
  @override
  @JsonKey(name: 'payment_deposited_confirmed_at')
  @TimestampConverter()
  DateTime? get paymentDepositConfirmedAt;
  @override //
  @SecondsToDurationConverter()
  Duration? get time;
  @override
  @DoubleSerializer()
  double? get distance;
  @override //
  @JsonKey(name: 'journeyDetails')
  JourneyDetailDTO? get journey;
  @override
  @JsonKey(name: 'package')
  SendPackageDTO? get packageData;
  @override
  @JsonKey(name: 'user')
  SenderDTO? get sender;
  @override //
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$SendPackageDTOCopyWith<_SendPackageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
