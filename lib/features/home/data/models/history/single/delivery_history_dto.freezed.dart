// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of delivery_history_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryHistoryDTO _$DeliveryHistoryDTOFromJson(Map<String, dynamic> json) {
  return _DeliveryHistoryDTO.fromJson(json);
}

/// @nodoc
class _$DeliveryHistoryDTOTearOff {
  const _$DeliveryHistoryDTOTearOff();

  _DeliveryHistoryDTO call(
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
      @DoubleSerializer()
          double? amount,
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
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'rider_current_lat')
      @DoubleSerializer()
          double? riderLat,
      @JsonKey(name: 'rider_current_long')
      @DoubleSerializer()
          double? riderLng,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @JsonKey(name: 'rider')
          RiderDTO? rider,
      @JsonKey(name: 'user')
          UserDTO? sender,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
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
          DateTime? depositedAt,
      @JsonKey(name: 'payment_deposited_confirmed_at')
      @TimestampConverter()
          DateTime? depositConfirmedAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(name: 'history')
          DeliveryHistoryDTO? historyData}) {
    return _DeliveryHistoryDTO(
      id: id,
      pickupLat: pickupLat,
      pickupLng: pickupLng,
      destinationLat: destinationLat,
      destinationLng: destinationLng,
      pickupAddress: pickupAddress,
      destinationAddress: destinationAddress,
      amount: amount,
      receiverFullName: receiverFullName,
      receiverPhone: receiverPhone,
      receiverEmailAddress: receiverEmailAddress,
      receiverPhoneAlt: receiverPhoneAlt,
      notes: notes,
      paymentMethod: paymentMethod,
      riderId: riderId,
      riderLat: riderLat,
      riderLng: riderLng,
      time: time,
      distance: distance,
      rider: rider,
      sender: sender,
      store: store,
      orderActiveAt: orderActiveAt,
      orderCancelledAt: orderCancelledAt,
      riderAcceptedAt: riderAcceptedAt,
      riderReceivedAt: riderReceivedAt,
      riderDeliveredAt: riderDeliveredAt,
      depositedAt: depositedAt,
      depositConfirmedAt: depositConfirmedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      historyData: historyData,
    );
  }

  DeliveryHistoryDTO fromJson(Map<String, Object?> json) {
    return DeliveryHistoryDTO.fromJson(json);
  }
}

/// @nodoc
const $DeliveryHistoryDTO = _$DeliveryHistoryDTOTearOff();

/// @nodoc
mixin _$DeliveryHistoryDTO {
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
  @DoubleSerializer()
  double? get amount => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'payment_method')
  @PaymentMethodSerializer()
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError; //
  @JsonKey(name: 'rider_id')
  String? get riderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_current_lat')
  @DoubleSerializer()
  double? get riderLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_current_long')
  @DoubleSerializer()
  double? get riderLng => throw _privateConstructorUsedError;
  @SecondsToDurationConverter()
  Duration? get time => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get distance => throw _privateConstructorUsedError; //
  @JsonKey(name: 'rider')
  RiderDTO? get rider => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDTO? get sender => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant')
  StoreDTO? get store => throw _privateConstructorUsedError; //
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
  DateTime? get depositedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_deposited_confirmed_at')
  @TimestampConverter()
  DateTime? get depositConfirmedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError; //
  @JsonKey(name: 'history')
  DeliveryHistoryDTO? get historyData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryHistoryDTOCopyWith<DeliveryHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryHistoryDTOCopyWith<$Res> {
  factory $DeliveryHistoryDTOCopyWith(
          DeliveryHistoryDTO value, $Res Function(DeliveryHistoryDTO) then) =
      _$DeliveryHistoryDTOCopyWithImpl<$Res>;
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
      @DoubleSerializer()
          double? amount,
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
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'rider_current_lat')
      @DoubleSerializer()
          double? riderLat,
      @JsonKey(name: 'rider_current_long')
      @DoubleSerializer()
          double? riderLng,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @JsonKey(name: 'rider')
          RiderDTO? rider,
      @JsonKey(name: 'user')
          UserDTO? sender,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
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
          DateTime? depositedAt,
      @JsonKey(name: 'payment_deposited_confirmed_at')
      @TimestampConverter()
          DateTime? depositConfirmedAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(name: 'history')
          DeliveryHistoryDTO? historyData});

  $RiderDTOCopyWith<$Res>? get rider;
  $UserDTOCopyWith<$Res>? get sender;
  $StoreDTOCopyWith<$Res>? get store;
  $DeliveryHistoryDTOCopyWith<$Res>? get historyData;
}

/// @nodoc
class _$DeliveryHistoryDTOCopyWithImpl<$Res>
    implements $DeliveryHistoryDTOCopyWith<$Res> {
  _$DeliveryHistoryDTOCopyWithImpl(this._value, this._then);

  final DeliveryHistoryDTO _value;
  // ignore: unused_field
  final $Res Function(DeliveryHistoryDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? destinationLat = freezed,
    Object? destinationLng = freezed,
    Object? pickupAddress = freezed,
    Object? destinationAddress = freezed,
    Object? amount = freezed,
    Object? receiverFullName = freezed,
    Object? receiverPhone = freezed,
    Object? receiverEmailAddress = freezed,
    Object? receiverPhoneAlt = freezed,
    Object? notes = freezed,
    Object? paymentMethod = freezed,
    Object? riderId = freezed,
    Object? riderLat = freezed,
    Object? riderLng = freezed,
    Object? time = freezed,
    Object? distance = freezed,
    Object? rider = freezed,
    Object? sender = freezed,
    Object? store = freezed,
    Object? orderActiveAt = freezed,
    Object? orderCancelledAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? depositedAt = freezed,
    Object? depositConfirmedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? historyData = freezed,
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
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
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
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
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
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as RiderDTO?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreDTO?,
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
      depositedAt: depositedAt == freezed
          ? _value.depositedAt
          : depositedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositConfirmedAt: depositConfirmedAt == freezed
          ? _value.depositConfirmedAt
          : depositConfirmedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      historyData: historyData == freezed
          ? _value.historyData
          : historyData // ignore: cast_nullable_to_non_nullable
              as DeliveryHistoryDTO?,
    ));
  }

  @override
  $RiderDTOCopyWith<$Res>? get rider {
    if (_value.rider == null) {
      return null;
    }

    return $RiderDTOCopyWith<$Res>(_value.rider!, (value) {
      return _then(_value.copyWith(rider: value));
    });
  }

  @override
  $UserDTOCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $StoreDTOCopyWith<$Res>? get store {
    if (_value.store == null) {
      return null;
    }

    return $StoreDTOCopyWith<$Res>(_value.store!, (value) {
      return _then(_value.copyWith(store: value));
    });
  }

  @override
  $DeliveryHistoryDTOCopyWith<$Res>? get historyData {
    if (_value.historyData == null) {
      return null;
    }

    return $DeliveryHistoryDTOCopyWith<$Res>(_value.historyData!, (value) {
      return _then(_value.copyWith(historyData: value));
    });
  }
}

/// @nodoc
abstract class _$DeliveryHistoryDTOCopyWith<$Res>
    implements $DeliveryHistoryDTOCopyWith<$Res> {
  factory _$DeliveryHistoryDTOCopyWith(
          _DeliveryHistoryDTO value, $Res Function(_DeliveryHistoryDTO) then) =
      __$DeliveryHistoryDTOCopyWithImpl<$Res>;
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
      @DoubleSerializer()
          double? amount,
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
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'rider_current_lat')
      @DoubleSerializer()
          double? riderLat,
      @JsonKey(name: 'rider_current_long')
      @DoubleSerializer()
          double? riderLng,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @JsonKey(name: 'rider')
          RiderDTO? rider,
      @JsonKey(name: 'user')
          UserDTO? sender,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
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
          DateTime? depositedAt,
      @JsonKey(name: 'payment_deposited_confirmed_at')
      @TimestampConverter()
          DateTime? depositConfirmedAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(name: 'history')
          DeliveryHistoryDTO? historyData});

  @override
  $RiderDTOCopyWith<$Res>? get rider;
  @override
  $UserDTOCopyWith<$Res>? get sender;
  @override
  $StoreDTOCopyWith<$Res>? get store;
  @override
  $DeliveryHistoryDTOCopyWith<$Res>? get historyData;
}

/// @nodoc
class __$DeliveryHistoryDTOCopyWithImpl<$Res>
    extends _$DeliveryHistoryDTOCopyWithImpl<$Res>
    implements _$DeliveryHistoryDTOCopyWith<$Res> {
  __$DeliveryHistoryDTOCopyWithImpl(
      _DeliveryHistoryDTO _value, $Res Function(_DeliveryHistoryDTO) _then)
      : super(_value, (v) => _then(v as _DeliveryHistoryDTO));

  @override
  _DeliveryHistoryDTO get _value => super._value as _DeliveryHistoryDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? destinationLat = freezed,
    Object? destinationLng = freezed,
    Object? pickupAddress = freezed,
    Object? destinationAddress = freezed,
    Object? amount = freezed,
    Object? receiverFullName = freezed,
    Object? receiverPhone = freezed,
    Object? receiverEmailAddress = freezed,
    Object? receiverPhoneAlt = freezed,
    Object? notes = freezed,
    Object? paymentMethod = freezed,
    Object? riderId = freezed,
    Object? riderLat = freezed,
    Object? riderLng = freezed,
    Object? time = freezed,
    Object? distance = freezed,
    Object? rider = freezed,
    Object? sender = freezed,
    Object? store = freezed,
    Object? orderActiveAt = freezed,
    Object? orderCancelledAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? depositedAt = freezed,
    Object? depositConfirmedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? historyData = freezed,
  }) {
    return _then(_DeliveryHistoryDTO(
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
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
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
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
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
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as RiderDTO?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreDTO?,
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
      depositedAt: depositedAt == freezed
          ? _value.depositedAt
          : depositedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositConfirmedAt: depositConfirmedAt == freezed
          ? _value.depositConfirmedAt
          : depositConfirmedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      historyData: historyData == freezed
          ? _value.historyData
          : historyData // ignore: cast_nullable_to_non_nullable
              as DeliveryHistoryDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryHistoryDTO extends _DeliveryHistoryDTO {
  const _$_DeliveryHistoryDTO(
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
      @DoubleSerializer()
          this.amount,
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
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          this.paymentMethod,
      @JsonKey(name: 'rider_id')
          this.riderId,
      @JsonKey(name: 'rider_current_lat')
      @DoubleSerializer()
          this.riderLat,
      @JsonKey(name: 'rider_current_long')
      @DoubleSerializer()
          this.riderLng,
      @SecondsToDurationConverter()
          this.time,
      @DoubleSerializer()
          this.distance,
      @JsonKey(name: 'rider')
          this.rider,
      @JsonKey(name: 'user')
          this.sender,
      @JsonKey(name: 'restaurant')
          this.store,
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
          this.depositedAt,
      @JsonKey(name: 'payment_deposited_confirmed_at')
      @TimestampConverter()
          this.depositConfirmedAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @JsonKey(name: 'history')
          this.historyData})
      : super._();

  factory _$_DeliveryHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryHistoryDTOFromJson(json);

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
  @DoubleSerializer()
  final double? amount;
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
  @override
  @JsonKey(name: 'payment_method')
  @PaymentMethodSerializer()
  final PaymentMethod? paymentMethod;
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
  @SecondsToDurationConverter()
  final Duration? time;
  @override
  @DoubleSerializer()
  final double? distance;
  @override //
  @JsonKey(name: 'rider')
  final RiderDTO? rider;
  @override
  @JsonKey(name: 'user')
  final UserDTO? sender;
  @override
  @JsonKey(name: 'restaurant')
  final StoreDTO? store;
  @override //
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
  final DateTime? depositedAt;
  @override
  @JsonKey(name: 'payment_deposited_confirmed_at')
  @TimestampConverter()
  final DateTime? depositConfirmedAt;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  final DateTime? updatedAt;
  @override //
  @JsonKey(name: 'history')
  final DeliveryHistoryDTO? historyData;

  @override
  String toString() {
    return 'DeliveryHistoryDTO(id: $id, pickupLat: $pickupLat, pickupLng: $pickupLng, destinationLat: $destinationLat, destinationLng: $destinationLng, pickupAddress: $pickupAddress, destinationAddress: $destinationAddress, amount: $amount, receiverFullName: $receiverFullName, receiverPhone: $receiverPhone, receiverEmailAddress: $receiverEmailAddress, receiverPhoneAlt: $receiverPhoneAlt, notes: $notes, paymentMethod: $paymentMethod, riderId: $riderId, riderLat: $riderLat, riderLng: $riderLng, time: $time, distance: $distance, rider: $rider, sender: $sender, store: $store, orderActiveAt: $orderActiveAt, orderCancelledAt: $orderCancelledAt, riderAcceptedAt: $riderAcceptedAt, riderReceivedAt: $riderReceivedAt, riderDeliveredAt: $riderDeliveredAt, depositedAt: $depositedAt, depositConfirmedAt: $depositConfirmedAt, createdAt: $createdAt, updatedAt: $updatedAt, historyData: $historyData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryHistoryDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.pickupLat, pickupLat) &&
            const DeepCollectionEquality().equals(other.pickupLng, pickupLng) &&
            const DeepCollectionEquality()
                .equals(other.destinationLat, destinationLat) &&
            const DeepCollectionEquality()
                .equals(other.destinationLng, destinationLng) &&
            const DeepCollectionEquality()
                .equals(other.pickupAddress, pickupAddress) &&
            const DeepCollectionEquality()
                .equals(other.destinationAddress, destinationAddress) &&
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
            const DeepCollectionEquality().equals(other.riderLat, riderLat) &&
            const DeepCollectionEquality().equals(other.riderLng, riderLng) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.rider, rider) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.store, store) &&
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
                .equals(other.depositedAt, depositedAt) &&
            const DeepCollectionEquality()
                .equals(other.depositConfirmedAt, depositConfirmedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.historyData, historyData));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(pickupLat),
        const DeepCollectionEquality().hash(pickupLng),
        const DeepCollectionEquality().hash(destinationLat),
        const DeepCollectionEquality().hash(destinationLng),
        const DeepCollectionEquality().hash(pickupAddress),
        const DeepCollectionEquality().hash(destinationAddress),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(receiverFullName),
        const DeepCollectionEquality().hash(receiverPhone),
        const DeepCollectionEquality().hash(receiverEmailAddress),
        const DeepCollectionEquality().hash(receiverPhoneAlt),
        const DeepCollectionEquality().hash(notes),
        const DeepCollectionEquality().hash(paymentMethod),
        const DeepCollectionEquality().hash(riderId),
        const DeepCollectionEquality().hash(riderLat),
        const DeepCollectionEquality().hash(riderLng),
        const DeepCollectionEquality().hash(time),
        const DeepCollectionEquality().hash(distance),
        const DeepCollectionEquality().hash(rider),
        const DeepCollectionEquality().hash(sender),
        const DeepCollectionEquality().hash(store),
        const DeepCollectionEquality().hash(orderActiveAt),
        const DeepCollectionEquality().hash(orderCancelledAt),
        const DeepCollectionEquality().hash(riderAcceptedAt),
        const DeepCollectionEquality().hash(riderReceivedAt),
        const DeepCollectionEquality().hash(riderDeliveredAt),
        const DeepCollectionEquality().hash(depositedAt),
        const DeepCollectionEquality().hash(depositConfirmedAt),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(historyData)
      ]);

  @JsonKey(ignore: true)
  @override
  _$DeliveryHistoryDTOCopyWith<_DeliveryHistoryDTO> get copyWith =>
      __$DeliveryHistoryDTOCopyWithImpl<_DeliveryHistoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryHistoryDTOToJson(this);
  }
}

abstract class _DeliveryHistoryDTO extends DeliveryHistoryDTO {
  const factory _DeliveryHistoryDTO(
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
      @DoubleSerializer()
          double? amount,
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
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'rider_current_lat')
      @DoubleSerializer()
          double? riderLat,
      @JsonKey(name: 'rider_current_long')
      @DoubleSerializer()
          double? riderLng,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @JsonKey(name: 'rider')
          RiderDTO? rider,
      @JsonKey(name: 'user')
          UserDTO? sender,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
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
          DateTime? depositedAt,
      @JsonKey(name: 'payment_deposited_confirmed_at')
      @TimestampConverter()
          DateTime? depositConfirmedAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(name: 'history')
          DeliveryHistoryDTO? historyData}) = _$_DeliveryHistoryDTO;
  const _DeliveryHistoryDTO._() : super._();

  factory _DeliveryHistoryDTO.fromJson(Map<String, dynamic> json) =
      _$_DeliveryHistoryDTO.fromJson;

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
  @DoubleSerializer()
  double? get amount;
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
  @JsonKey(name: 'payment_method')
  @PaymentMethodSerializer()
  PaymentMethod? get paymentMethod;
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
  @SecondsToDurationConverter()
  Duration? get time;
  @override
  @DoubleSerializer()
  double? get distance;
  @override //
  @JsonKey(name: 'rider')
  RiderDTO? get rider;
  @override
  @JsonKey(name: 'user')
  UserDTO? get sender;
  @override
  @JsonKey(name: 'restaurant')
  StoreDTO? get store;
  @override //
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
  DateTime? get depositedAt;
  @override
  @JsonKey(name: 'payment_deposited_confirmed_at')
  @TimestampConverter()
  DateTime? get depositConfirmedAt;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt;
  @override //
  @JsonKey(name: 'history')
  DeliveryHistoryDTO? get historyData;
  @override
  @JsonKey(ignore: true)
  _$DeliveryHistoryDTOCopyWith<_DeliveryHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
