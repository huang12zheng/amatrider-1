// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of user_order_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserOrderDTO _$UserOrderDTOFromJson(Map<String, dynamic> json) {
  return _UserOrderDTO.fromJson(json);
}

/// @nodoc
class _$UserOrderDTOTearOff {
  const _$UserOrderDTOTearOff();

  _UserOrderDTO call(
      {String? id,
      String? reference,
      String? note,
      @DoubleSerializer()
          double? price,
      @DoubleSerializer()
          double? riderTip,
      @JsonKey(name: 'address')
          UserAddressDTO? deliveryAddress,
      @ParcelStatusSerializer()
          ParcelStatus status = ParcelStatus.PENDING,
      @LogisticsTypeSerializer()
          LogisticsType type = LogisticsType.order,
      @JsonKey(name: 'delivery_fee')
      @DoubleSerializer()
          double? deliveryCost,
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @DeliveryModeSerializer()
          DeliveryMode deliveryMode = DeliveryMode.delivery,
      @JsonKey(name: 'time_to_cancel_threshold')
      @IntegerSerializer()
          int? timeToCancelThreshold,
      @JsonKey(name: 'is_contactless')
      @BooleanSerializer()
          bool? contactlessDelivery,
      @DoubleSerializer()
          double? conversionRate,
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
      @JsonKey(name: 'restaurant_accepted_at')
      @TimestampConverter()
          DateTime? storeAcceptedAt,
      @JsonKey(name: 'rider_accepted_at')
      @TimestampConverter()
          DateTime? riderAcceptedAt,
      @JsonKey(name: 'rider_received_package_at')
      @TimestampConverter()
          DateTime? riderReceivedAt,
      @JsonKey(name: 'rider_delivered_package_at')
      @TimestampConverter()
          DateTime? riderDeliveredAt,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
      @JsonKey(name: 'user')
          UserDTO? receiver,
      @JsonKey(name: 'journeyDetails')
          JourneyDetailDTO? journey,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt,
      @JsonKey(name: 'order')
          UserOrderDTO? orderData}) {
    return _UserOrderDTO(
      id: id,
      reference: reference,
      note: note,
      price: price,
      riderTip: riderTip,
      deliveryAddress: deliveryAddress,
      status: status,
      type: type,
      deliveryCost: deliveryCost,
      paymentMethod: paymentMethod,
      deliveryMode: deliveryMode,
      timeToCancelThreshold: timeToCancelThreshold,
      contactlessDelivery: contactlessDelivery,
      conversionRate: conversionRate,
      riderId: riderId,
      riderLat: riderLat,
      riderLng: riderLng,
      orderActiveAt: orderActiveAt,
      storeAcceptedAt: storeAcceptedAt,
      riderAcceptedAt: riderAcceptedAt,
      riderReceivedAt: riderReceivedAt,
      riderDeliveredAt: riderDeliveredAt,
      store: store,
      receiver: receiver,
      journey: journey,
      time: time,
      distance: distance,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
      orderData: orderData,
    );
  }

  UserOrderDTO fromJson(Map<String, Object?> json) {
    return UserOrderDTO.fromJson(json);
  }
}

/// @nodoc
const $UserOrderDTO = _$UserOrderDTOTearOff();

/// @nodoc
mixin _$UserOrderDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get price => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get riderTip => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  UserAddressDTO? get deliveryAddress => throw _privateConstructorUsedError;
  @ParcelStatusSerializer()
  ParcelStatus get status => throw _privateConstructorUsedError;
  @LogisticsTypeSerializer()
  LogisticsType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_fee')
  @DoubleSerializer()
  double? get deliveryCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  @PaymentMethodSerializer()
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError;
  @DeliveryModeSerializer()
  DeliveryMode get deliveryMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_to_cancel_threshold')
  @IntegerSerializer()
  int? get timeToCancelThreshold => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_contactless')
  @BooleanSerializer()
  bool? get contactlessDelivery => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get conversionRate => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'restaurant_accepted_at')
  @TimestampConverter()
  DateTime? get storeAcceptedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_accepted_at')
  @TimestampConverter()
  DateTime? get riderAcceptedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_received_package_at')
  @TimestampConverter()
  DateTime? get riderReceivedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_delivered_package_at')
  @TimestampConverter()
  DateTime? get riderDeliveredAt => throw _privateConstructorUsedError; //
  @JsonKey(name: 'restaurant')
  StoreDTO? get store => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDTO? get receiver => throw _privateConstructorUsedError;
  @JsonKey(name: 'journeyDetails')
  JourneyDetailDTO? get journey => throw _privateConstructorUsedError; //
  @SecondsToDurationConverter()
  Duration? get time => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get distance => throw _privateConstructorUsedError; //
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError; //
  @JsonKey(name: 'order')
  UserOrderDTO? get orderData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserOrderDTOCopyWith<UserOrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrderDTOCopyWith<$Res> {
  factory $UserOrderDTOCopyWith(
          UserOrderDTO value, $Res Function(UserOrderDTO) then) =
      _$UserOrderDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? reference,
      String? note,
      @DoubleSerializer()
          double? price,
      @DoubleSerializer()
          double? riderTip,
      @JsonKey(name: 'address')
          UserAddressDTO? deliveryAddress,
      @ParcelStatusSerializer()
          ParcelStatus status,
      @LogisticsTypeSerializer()
          LogisticsType type,
      @JsonKey(name: 'delivery_fee')
      @DoubleSerializer()
          double? deliveryCost,
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @DeliveryModeSerializer()
          DeliveryMode deliveryMode,
      @JsonKey(name: 'time_to_cancel_threshold')
      @IntegerSerializer()
          int? timeToCancelThreshold,
      @JsonKey(name: 'is_contactless')
      @BooleanSerializer()
          bool? contactlessDelivery,
      @DoubleSerializer()
          double? conversionRate,
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
      @JsonKey(name: 'restaurant_accepted_at')
      @TimestampConverter()
          DateTime? storeAcceptedAt,
      @JsonKey(name: 'rider_accepted_at')
      @TimestampConverter()
          DateTime? riderAcceptedAt,
      @JsonKey(name: 'rider_received_package_at')
      @TimestampConverter()
          DateTime? riderReceivedAt,
      @JsonKey(name: 'rider_delivered_package_at')
      @TimestampConverter()
          DateTime? riderDeliveredAt,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
      @JsonKey(name: 'user')
          UserDTO? receiver,
      @JsonKey(name: 'journeyDetails')
          JourneyDetailDTO? journey,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt,
      @JsonKey(name: 'order')
          UserOrderDTO? orderData});

  $UserAddressDTOCopyWith<$Res>? get deliveryAddress;
  $StoreDTOCopyWith<$Res>? get store;
  $UserDTOCopyWith<$Res>? get receiver;
  $JourneyDetailDTOCopyWith<$Res>? get journey;
  $UserOrderDTOCopyWith<$Res>? get orderData;
}

/// @nodoc
class _$UserOrderDTOCopyWithImpl<$Res> implements $UserOrderDTOCopyWith<$Res> {
  _$UserOrderDTOCopyWithImpl(this._value, this._then);

  final UserOrderDTO _value;
  // ignore: unused_field
  final $Res Function(UserOrderDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? reference = freezed,
    Object? note = freezed,
    Object? price = freezed,
    Object? riderTip = freezed,
    Object? deliveryAddress = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? deliveryCost = freezed,
    Object? paymentMethod = freezed,
    Object? deliveryMode = freezed,
    Object? timeToCancelThreshold = freezed,
    Object? contactlessDelivery = freezed,
    Object? conversionRate = freezed,
    Object? riderId = freezed,
    Object? riderLat = freezed,
    Object? riderLng = freezed,
    Object? orderActiveAt = freezed,
    Object? storeAcceptedAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? store = freezed,
    Object? receiver = freezed,
    Object? journey = freezed,
    Object? time = freezed,
    Object? distance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? orderData = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      riderTip: riderTip == freezed
          ? _value.riderTip
          : riderTip // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as UserAddressDTO?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ParcelStatus,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LogisticsType,
      deliveryCost: deliveryCost == freezed
          ? _value.deliveryCost
          : deliveryCost // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      deliveryMode: deliveryMode == freezed
          ? _value.deliveryMode
          : deliveryMode // ignore: cast_nullable_to_non_nullable
              as DeliveryMode,
      timeToCancelThreshold: timeToCancelThreshold == freezed
          ? _value.timeToCancelThreshold
          : timeToCancelThreshold // ignore: cast_nullable_to_non_nullable
              as int?,
      contactlessDelivery: contactlessDelivery == freezed
          ? _value.contactlessDelivery
          : contactlessDelivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      conversionRate: conversionRate == freezed
          ? _value.conversionRate
          : conversionRate // ignore: cast_nullable_to_non_nullable
              as double?,
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
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreDTO?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      journey: journey == freezed
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDetailDTO?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
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
      orderData: orderData == freezed
          ? _value.orderData
          : orderData // ignore: cast_nullable_to_non_nullable
              as UserOrderDTO?,
    ));
  }

  @override
  $UserAddressDTOCopyWith<$Res>? get deliveryAddress {
    if (_value.deliveryAddress == null) {
      return null;
    }

    return $UserAddressDTOCopyWith<$Res>(_value.deliveryAddress!, (value) {
      return _then(_value.copyWith(deliveryAddress: value));
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
  $UserDTOCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value));
    });
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
  $UserOrderDTOCopyWith<$Res>? get orderData {
    if (_value.orderData == null) {
      return null;
    }

    return $UserOrderDTOCopyWith<$Res>(_value.orderData!, (value) {
      return _then(_value.copyWith(orderData: value));
    });
  }
}

/// @nodoc
abstract class _$UserOrderDTOCopyWith<$Res>
    implements $UserOrderDTOCopyWith<$Res> {
  factory _$UserOrderDTOCopyWith(
          _UserOrderDTO value, $Res Function(_UserOrderDTO) then) =
      __$UserOrderDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? reference,
      String? note,
      @DoubleSerializer()
          double? price,
      @DoubleSerializer()
          double? riderTip,
      @JsonKey(name: 'address')
          UserAddressDTO? deliveryAddress,
      @ParcelStatusSerializer()
          ParcelStatus status,
      @LogisticsTypeSerializer()
          LogisticsType type,
      @JsonKey(name: 'delivery_fee')
      @DoubleSerializer()
          double? deliveryCost,
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @DeliveryModeSerializer()
          DeliveryMode deliveryMode,
      @JsonKey(name: 'time_to_cancel_threshold')
      @IntegerSerializer()
          int? timeToCancelThreshold,
      @JsonKey(name: 'is_contactless')
      @BooleanSerializer()
          bool? contactlessDelivery,
      @DoubleSerializer()
          double? conversionRate,
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
      @JsonKey(name: 'restaurant_accepted_at')
      @TimestampConverter()
          DateTime? storeAcceptedAt,
      @JsonKey(name: 'rider_accepted_at')
      @TimestampConverter()
          DateTime? riderAcceptedAt,
      @JsonKey(name: 'rider_received_package_at')
      @TimestampConverter()
          DateTime? riderReceivedAt,
      @JsonKey(name: 'rider_delivered_package_at')
      @TimestampConverter()
          DateTime? riderDeliveredAt,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
      @JsonKey(name: 'user')
          UserDTO? receiver,
      @JsonKey(name: 'journeyDetails')
          JourneyDetailDTO? journey,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt,
      @JsonKey(name: 'order')
          UserOrderDTO? orderData});

  @override
  $UserAddressDTOCopyWith<$Res>? get deliveryAddress;
  @override
  $StoreDTOCopyWith<$Res>? get store;
  @override
  $UserDTOCopyWith<$Res>? get receiver;
  @override
  $JourneyDetailDTOCopyWith<$Res>? get journey;
  @override
  $UserOrderDTOCopyWith<$Res>? get orderData;
}

/// @nodoc
class __$UserOrderDTOCopyWithImpl<$Res> extends _$UserOrderDTOCopyWithImpl<$Res>
    implements _$UserOrderDTOCopyWith<$Res> {
  __$UserOrderDTOCopyWithImpl(
      _UserOrderDTO _value, $Res Function(_UserOrderDTO) _then)
      : super(_value, (v) => _then(v as _UserOrderDTO));

  @override
  _UserOrderDTO get _value => super._value as _UserOrderDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? reference = freezed,
    Object? note = freezed,
    Object? price = freezed,
    Object? riderTip = freezed,
    Object? deliveryAddress = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? deliveryCost = freezed,
    Object? paymentMethod = freezed,
    Object? deliveryMode = freezed,
    Object? timeToCancelThreshold = freezed,
    Object? contactlessDelivery = freezed,
    Object? conversionRate = freezed,
    Object? riderId = freezed,
    Object? riderLat = freezed,
    Object? riderLng = freezed,
    Object? orderActiveAt = freezed,
    Object? storeAcceptedAt = freezed,
    Object? riderAcceptedAt = freezed,
    Object? riderReceivedAt = freezed,
    Object? riderDeliveredAt = freezed,
    Object? store = freezed,
    Object? receiver = freezed,
    Object? journey = freezed,
    Object? time = freezed,
    Object? distance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? orderData = freezed,
  }) {
    return _then(_UserOrderDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      riderTip: riderTip == freezed
          ? _value.riderTip
          : riderTip // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as UserAddressDTO?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ParcelStatus,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LogisticsType,
      deliveryCost: deliveryCost == freezed
          ? _value.deliveryCost
          : deliveryCost // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      deliveryMode: deliveryMode == freezed
          ? _value.deliveryMode
          : deliveryMode // ignore: cast_nullable_to_non_nullable
              as DeliveryMode,
      timeToCancelThreshold: timeToCancelThreshold == freezed
          ? _value.timeToCancelThreshold
          : timeToCancelThreshold // ignore: cast_nullable_to_non_nullable
              as int?,
      contactlessDelivery: contactlessDelivery == freezed
          ? _value.contactlessDelivery
          : contactlessDelivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      conversionRate: conversionRate == freezed
          ? _value.conversionRate
          : conversionRate // ignore: cast_nullable_to_non_nullable
              as double?,
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
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreDTO?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      journey: journey == freezed
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDetailDTO?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
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
      orderData: orderData == freezed
          ? _value.orderData
          : orderData // ignore: cast_nullable_to_non_nullable
              as UserOrderDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserOrderDTO extends _UserOrderDTO {
  const _$_UserOrderDTO(
      {this.id,
      this.reference,
      this.note,
      @DoubleSerializer()
          this.price,
      @DoubleSerializer()
          this.riderTip,
      @JsonKey(name: 'address')
          this.deliveryAddress,
      @ParcelStatusSerializer()
          this.status = ParcelStatus.PENDING,
      @LogisticsTypeSerializer()
          this.type = LogisticsType.order,
      @JsonKey(name: 'delivery_fee')
      @DoubleSerializer()
          this.deliveryCost,
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          this.paymentMethod,
      @DeliveryModeSerializer()
          this.deliveryMode = DeliveryMode.delivery,
      @JsonKey(name: 'time_to_cancel_threshold')
      @IntegerSerializer()
          this.timeToCancelThreshold,
      @JsonKey(name: 'is_contactless')
      @BooleanSerializer()
          this.contactlessDelivery,
      @DoubleSerializer()
          this.conversionRate,
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
      @JsonKey(name: 'restaurant_accepted_at')
      @TimestampConverter()
          this.storeAcceptedAt,
      @JsonKey(name: 'rider_accepted_at')
      @TimestampConverter()
          this.riderAcceptedAt,
      @JsonKey(name: 'rider_received_package_at')
      @TimestampConverter()
          this.riderReceivedAt,
      @JsonKey(name: 'rider_delivered_package_at')
      @TimestampConverter()
          this.riderDeliveredAt,
      @JsonKey(name: 'restaurant')
          this.store,
      @JsonKey(name: 'user')
          this.receiver,
      @JsonKey(name: 'journeyDetails')
          this.journey,
      @SecondsToDurationConverter()
          this.time,
      @DoubleSerializer()
          this.distance,
      @TimestampConverter()
          this.createdAt,
      @TimestampConverter()
          this.updatedAt,
      @TimestampConverter()
          this.deletedAt,
      @JsonKey(name: 'order')
          this.orderData})
      : super._();

  factory _$_UserOrderDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserOrderDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? reference;
  @override
  final String? note;
  @override
  @DoubleSerializer()
  final double? price;
  @override
  @DoubleSerializer()
  final double? riderTip;
  @override
  @JsonKey(name: 'address')
  final UserAddressDTO? deliveryAddress;
  @JsonKey()
  @override
  @ParcelStatusSerializer()
  final ParcelStatus status;
  @JsonKey()
  @override
  @LogisticsTypeSerializer()
  final LogisticsType type;
  @override
  @JsonKey(name: 'delivery_fee')
  @DoubleSerializer()
  final double? deliveryCost;
  @override
  @JsonKey(name: 'payment_method')
  @PaymentMethodSerializer()
  final PaymentMethod? paymentMethod;
  @JsonKey()
  @override
  @DeliveryModeSerializer()
  final DeliveryMode deliveryMode;
  @override
  @JsonKey(name: 'time_to_cancel_threshold')
  @IntegerSerializer()
  final int? timeToCancelThreshold;
  @override
  @JsonKey(name: 'is_contactless')
  @BooleanSerializer()
  final bool? contactlessDelivery;
  @override
  @DoubleSerializer()
  final double? conversionRate;
  @override
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
  @JsonKey(name: 'restaurant_accepted_at')
  @TimestampConverter()
  final DateTime? storeAcceptedAt;
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
  @override //
  @JsonKey(name: 'restaurant')
  final StoreDTO? store;
  @override
  @JsonKey(name: 'user')
  final UserDTO? receiver;
  @override
  @JsonKey(name: 'journeyDetails')
  final JourneyDetailDTO? journey;
  @override //
  @SecondsToDurationConverter()
  final Duration? time;
  @override
  @DoubleSerializer()
  final double? distance;
  @override //
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @TimestampConverter()
  final DateTime? deletedAt;
  @override //
  @JsonKey(name: 'order')
  final UserOrderDTO? orderData;

  @override
  String toString() {
    return 'UserOrderDTO(id: $id, reference: $reference, note: $note, price: $price, riderTip: $riderTip, deliveryAddress: $deliveryAddress, status: $status, type: $type, deliveryCost: $deliveryCost, paymentMethod: $paymentMethod, deliveryMode: $deliveryMode, timeToCancelThreshold: $timeToCancelThreshold, contactlessDelivery: $contactlessDelivery, conversionRate: $conversionRate, riderId: $riderId, riderLat: $riderLat, riderLng: $riderLng, orderActiveAt: $orderActiveAt, storeAcceptedAt: $storeAcceptedAt, riderAcceptedAt: $riderAcceptedAt, riderReceivedAt: $riderReceivedAt, riderDeliveredAt: $riderDeliveredAt, store: $store, receiver: $receiver, journey: $journey, time: $time, distance: $distance, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, orderData: $orderData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserOrderDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.riderTip, riderTip) &&
            const DeepCollectionEquality()
                .equals(other.deliveryAddress, deliveryAddress) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.deliveryCost, deliveryCost) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.deliveryMode, deliveryMode) &&
            const DeepCollectionEquality()
                .equals(other.timeToCancelThreshold, timeToCancelThreshold) &&
            const DeepCollectionEquality()
                .equals(other.contactlessDelivery, contactlessDelivery) &&
            const DeepCollectionEquality()
                .equals(other.conversionRate, conversionRate) &&
            const DeepCollectionEquality().equals(other.riderId, riderId) &&
            const DeepCollectionEquality().equals(other.riderLat, riderLat) &&
            const DeepCollectionEquality().equals(other.riderLng, riderLng) &&
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
            const DeepCollectionEquality().equals(other.store, store) &&
            const DeepCollectionEquality().equals(other.receiver, receiver) &&
            const DeepCollectionEquality().equals(other.journey, journey) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.orderData, orderData));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(reference),
        const DeepCollectionEquality().hash(note),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(riderTip),
        const DeepCollectionEquality().hash(deliveryAddress),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(deliveryCost),
        const DeepCollectionEquality().hash(paymentMethod),
        const DeepCollectionEquality().hash(deliveryMode),
        const DeepCollectionEquality().hash(timeToCancelThreshold),
        const DeepCollectionEquality().hash(contactlessDelivery),
        const DeepCollectionEquality().hash(conversionRate),
        const DeepCollectionEquality().hash(riderId),
        const DeepCollectionEquality().hash(riderLat),
        const DeepCollectionEquality().hash(riderLng),
        const DeepCollectionEquality().hash(orderActiveAt),
        const DeepCollectionEquality().hash(storeAcceptedAt),
        const DeepCollectionEquality().hash(riderAcceptedAt),
        const DeepCollectionEquality().hash(riderReceivedAt),
        const DeepCollectionEquality().hash(riderDeliveredAt),
        const DeepCollectionEquality().hash(store),
        const DeepCollectionEquality().hash(receiver),
        const DeepCollectionEquality().hash(journey),
        const DeepCollectionEquality().hash(time),
        const DeepCollectionEquality().hash(distance),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(deletedAt),
        const DeepCollectionEquality().hash(orderData)
      ]);

  @JsonKey(ignore: true)
  @override
  _$UserOrderDTOCopyWith<_UserOrderDTO> get copyWith =>
      __$UserOrderDTOCopyWithImpl<_UserOrderDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserOrderDTOToJson(this);
  }
}

abstract class _UserOrderDTO extends UserOrderDTO {
  const factory _UserOrderDTO(
      {String? id,
      String? reference,
      String? note,
      @DoubleSerializer()
          double? price,
      @DoubleSerializer()
          double? riderTip,
      @JsonKey(name: 'address')
          UserAddressDTO? deliveryAddress,
      @ParcelStatusSerializer()
          ParcelStatus status,
      @LogisticsTypeSerializer()
          LogisticsType type,
      @JsonKey(name: 'delivery_fee')
      @DoubleSerializer()
          double? deliveryCost,
      @JsonKey(name: 'payment_method')
      @PaymentMethodSerializer()
          PaymentMethod? paymentMethod,
      @DeliveryModeSerializer()
          DeliveryMode deliveryMode,
      @JsonKey(name: 'time_to_cancel_threshold')
      @IntegerSerializer()
          int? timeToCancelThreshold,
      @JsonKey(name: 'is_contactless')
      @BooleanSerializer()
          bool? contactlessDelivery,
      @DoubleSerializer()
          double? conversionRate,
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
      @JsonKey(name: 'restaurant_accepted_at')
      @TimestampConverter()
          DateTime? storeAcceptedAt,
      @JsonKey(name: 'rider_accepted_at')
      @TimestampConverter()
          DateTime? riderAcceptedAt,
      @JsonKey(name: 'rider_received_package_at')
      @TimestampConverter()
          DateTime? riderReceivedAt,
      @JsonKey(name: 'rider_delivered_package_at')
      @TimestampConverter()
          DateTime? riderDeliveredAt,
      @JsonKey(name: 'restaurant')
          StoreDTO? store,
      @JsonKey(name: 'user')
          UserDTO? receiver,
      @JsonKey(name: 'journeyDetails')
          JourneyDetailDTO? journey,
      @SecondsToDurationConverter()
          Duration? time,
      @DoubleSerializer()
          double? distance,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt,
      @JsonKey(name: 'order')
          UserOrderDTO? orderData}) = _$_UserOrderDTO;
  const _UserOrderDTO._() : super._();

  factory _UserOrderDTO.fromJson(Map<String, dynamic> json) =
      _$_UserOrderDTO.fromJson;

  @override
  String? get id;
  @override
  String? get reference;
  @override
  String? get note;
  @override
  @DoubleSerializer()
  double? get price;
  @override
  @DoubleSerializer()
  double? get riderTip;
  @override
  @JsonKey(name: 'address')
  UserAddressDTO? get deliveryAddress;
  @override
  @ParcelStatusSerializer()
  ParcelStatus get status;
  @override
  @LogisticsTypeSerializer()
  LogisticsType get type;
  @override
  @JsonKey(name: 'delivery_fee')
  @DoubleSerializer()
  double? get deliveryCost;
  @override
  @JsonKey(name: 'payment_method')
  @PaymentMethodSerializer()
  PaymentMethod? get paymentMethod;
  @override
  @DeliveryModeSerializer()
  DeliveryMode get deliveryMode;
  @override
  @JsonKey(name: 'time_to_cancel_threshold')
  @IntegerSerializer()
  int? get timeToCancelThreshold;
  @override
  @JsonKey(name: 'is_contactless')
  @BooleanSerializer()
  bool? get contactlessDelivery;
  @override
  @DoubleSerializer()
  double? get conversionRate;
  @override
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
  @JsonKey(name: 'restaurant_accepted_at')
  @TimestampConverter()
  DateTime? get storeAcceptedAt;
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
  @override //
  @JsonKey(name: 'restaurant')
  StoreDTO? get store;
  @override
  @JsonKey(name: 'user')
  UserDTO? get receiver;
  @override
  @JsonKey(name: 'journeyDetails')
  JourneyDetailDTO? get journey;
  @override //
  @SecondsToDurationConverter()
  Duration? get time;
  @override
  @DoubleSerializer()
  double? get distance;
  @override //
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @TimestampConverter()
  DateTime? get deletedAt;
  @override //
  @JsonKey(name: 'order')
  UserOrderDTO? get orderData;
  @override
  @JsonKey(ignore: true)
  _$UserOrderDTOCopyWith<_UserOrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

UserOrderListDTO _$UserOrderListDTOFromJson(Map<String, dynamic> json) {
  return _UserOrderListDTO.fromJson(json);
}

/// @nodoc
class _$UserOrderListDTOTearOff {
  const _$UserOrderListDTOTearOff();

  _UserOrderListDTO call(
      {List<UserOrderDTO> data = const [],
      PaginationLinks? links,
      MetaField? meta}) {
    return _UserOrderListDTO(
      data: data,
      links: links,
      meta: meta,
    );
  }

  UserOrderListDTO fromJson(Map<String, Object?> json) {
    return UserOrderListDTO.fromJson(json);
  }
}

/// @nodoc
const $UserOrderListDTO = _$UserOrderListDTOTearOff();

/// @nodoc
mixin _$UserOrderListDTO {
  List<UserOrderDTO> get data => throw _privateConstructorUsedError;
  PaginationLinks? get links => throw _privateConstructorUsedError;
  MetaField? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserOrderListDTOCopyWith<UserOrderListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrderListDTOCopyWith<$Res> {
  factory $UserOrderListDTOCopyWith(
          UserOrderListDTO value, $Res Function(UserOrderListDTO) then) =
      _$UserOrderListDTOCopyWithImpl<$Res>;
  $Res call({List<UserOrderDTO> data, PaginationLinks? links, MetaField? meta});

  $PaginationLinksCopyWith<$Res>? get links;
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class _$UserOrderListDTOCopyWithImpl<$Res>
    implements $UserOrderListDTOCopyWith<$Res> {
  _$UserOrderListDTOCopyWithImpl(this._value, this._then);

  final UserOrderListDTO _value;
  // ignore: unused_field
  final $Res Function(UserOrderListDTO) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserOrderDTO>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinks?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaField?,
    ));
  }

  @override
  $PaginationLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $PaginationLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $MetaFieldCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaFieldCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$UserOrderListDTOCopyWith<$Res>
    implements $UserOrderListDTOCopyWith<$Res> {
  factory _$UserOrderListDTOCopyWith(
          _UserOrderListDTO value, $Res Function(_UserOrderListDTO) then) =
      __$UserOrderListDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<UserOrderDTO> data, PaginationLinks? links, MetaField? meta});

  @override
  $PaginationLinksCopyWith<$Res>? get links;
  @override
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class __$UserOrderListDTOCopyWithImpl<$Res>
    extends _$UserOrderListDTOCopyWithImpl<$Res>
    implements _$UserOrderListDTOCopyWith<$Res> {
  __$UserOrderListDTOCopyWithImpl(
      _UserOrderListDTO _value, $Res Function(_UserOrderListDTO) _then)
      : super(_value, (v) => _then(v as _UserOrderListDTO));

  @override
  _UserOrderListDTO get _value => super._value as _UserOrderListDTO;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_UserOrderListDTO(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserOrderDTO>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinks?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaField?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserOrderListDTO extends _UserOrderListDTO {
  const _$_UserOrderListDTO({this.data = const [], this.links, this.meta})
      : super._();

  factory _$_UserOrderListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserOrderListDTOFromJson(json);

  @JsonKey()
  @override
  final List<UserOrderDTO> data;
  @override
  final PaginationLinks? links;
  @override
  final MetaField? meta;

  @override
  String toString() {
    return 'UserOrderListDTO(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserOrderListDTO &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.links, links) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(links),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$UserOrderListDTOCopyWith<_UserOrderListDTO> get copyWith =>
      __$UserOrderListDTOCopyWithImpl<_UserOrderListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserOrderListDTOToJson(this);
  }
}

abstract class _UserOrderListDTO extends UserOrderListDTO {
  const factory _UserOrderListDTO(
      {List<UserOrderDTO> data,
      PaginationLinks? links,
      MetaField? meta}) = _$_UserOrderListDTO;
  const _UserOrderListDTO._() : super._();

  factory _UserOrderListDTO.fromJson(Map<String, dynamic> json) =
      _$_UserOrderListDTO.fromJson;

  @override
  List<UserOrderDTO> get data;
  @override
  PaginationLinks? get links;
  @override
  MetaField? get meta;
  @override
  @JsonKey(ignore: true)
  _$UserOrderListDTOCopyWith<_UserOrderListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
