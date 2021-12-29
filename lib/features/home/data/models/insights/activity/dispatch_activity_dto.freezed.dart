// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of dispatch_activity_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DispatchActivityDTO _$DispatchActivityDTOFromJson(Map<String, dynamic> json) {
  return _DispatchActivityDTO.fromJson(json);
}

/// @nodoc
class _$DispatchActivityDTOTearOff {
  const _$DispatchActivityDTOTearOff();

  _DispatchActivityDTO call(
      {@JsonKey(name: 'CARD')
      @DoubleSerializer()
          double? card,
      @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CARD')
      @DoubleSerializer()
          double? deliveryWithCard,
      @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CASH')
      @DoubleSerializer()
          double? deliveryWithCash,
      @JsonKey(name: 'PAY_WITH_BANK_TRANSFER')
      @DoubleSerializer()
          double? transfer,
      @JsonKey(name: 'FLUTTERWAVE')
      @DoubleSerializer()
          double? flutterwave,
      @JsonKey(name: 'STRIPE')
      @DoubleSerializer()
          double? stripe,
      @JsonKey(name: 'PAYSTACK')
      @DoubleSerializer()
          double? paystack}) {
    return _DispatchActivityDTO(
      card: card,
      deliveryWithCard: deliveryWithCard,
      deliveryWithCash: deliveryWithCash,
      transfer: transfer,
      flutterwave: flutterwave,
      stripe: stripe,
      paystack: paystack,
    );
  }

  DispatchActivityDTO fromJson(Map<String, Object?> json) {
    return DispatchActivityDTO.fromJson(json);
  }
}

/// @nodoc
const $DispatchActivityDTO = _$DispatchActivityDTOTearOff();

/// @nodoc
mixin _$DispatchActivityDTO {
  @JsonKey(name: 'CARD')
  @DoubleSerializer()
  double? get card => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CARD')
  @DoubleSerializer()
  double? get deliveryWithCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CASH')
  @DoubleSerializer()
  double? get deliveryWithCash => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAY_WITH_BANK_TRANSFER')
  @DoubleSerializer()
  double? get transfer => throw _privateConstructorUsedError;
  @JsonKey(name: 'FLUTTERWAVE')
  @DoubleSerializer()
  double? get flutterwave => throw _privateConstructorUsedError;
  @JsonKey(name: 'STRIPE')
  @DoubleSerializer()
  double? get stripe => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAYSTACK')
  @DoubleSerializer()
  double? get paystack => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DispatchActivityDTOCopyWith<DispatchActivityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DispatchActivityDTOCopyWith<$Res> {
  factory $DispatchActivityDTOCopyWith(
          DispatchActivityDTO value, $Res Function(DispatchActivityDTO) then) =
      _$DispatchActivityDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CARD')
      @DoubleSerializer()
          double? card,
      @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CARD')
      @DoubleSerializer()
          double? deliveryWithCard,
      @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CASH')
      @DoubleSerializer()
          double? deliveryWithCash,
      @JsonKey(name: 'PAY_WITH_BANK_TRANSFER')
      @DoubleSerializer()
          double? transfer,
      @JsonKey(name: 'FLUTTERWAVE')
      @DoubleSerializer()
          double? flutterwave,
      @JsonKey(name: 'STRIPE')
      @DoubleSerializer()
          double? stripe,
      @JsonKey(name: 'PAYSTACK')
      @DoubleSerializer()
          double? paystack});
}

/// @nodoc
class _$DispatchActivityDTOCopyWithImpl<$Res>
    implements $DispatchActivityDTOCopyWith<$Res> {
  _$DispatchActivityDTOCopyWithImpl(this._value, this._then);

  final DispatchActivityDTO _value;
  // ignore: unused_field
  final $Res Function(DispatchActivityDTO) _then;

  @override
  $Res call({
    Object? card = freezed,
    Object? deliveryWithCard = freezed,
    Object? deliveryWithCash = freezed,
    Object? transfer = freezed,
    Object? flutterwave = freezed,
    Object? stripe = freezed,
    Object? paystack = freezed,
  }) {
    return _then(_value.copyWith(
      card: card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryWithCard: deliveryWithCard == freezed
          ? _value.deliveryWithCard
          : deliveryWithCard // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryWithCash: deliveryWithCash == freezed
          ? _value.deliveryWithCash
          : deliveryWithCash // ignore: cast_nullable_to_non_nullable
              as double?,
      transfer: transfer == freezed
          ? _value.transfer
          : transfer // ignore: cast_nullable_to_non_nullable
              as double?,
      flutterwave: flutterwave == freezed
          ? _value.flutterwave
          : flutterwave // ignore: cast_nullable_to_non_nullable
              as double?,
      stripe: stripe == freezed
          ? _value.stripe
          : stripe // ignore: cast_nullable_to_non_nullable
              as double?,
      paystack: paystack == freezed
          ? _value.paystack
          : paystack // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$DispatchActivityDTOCopyWith<$Res>
    implements $DispatchActivityDTOCopyWith<$Res> {
  factory _$DispatchActivityDTOCopyWith(_DispatchActivityDTO value,
          $Res Function(_DispatchActivityDTO) then) =
      __$DispatchActivityDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CARD')
      @DoubleSerializer()
          double? card,
      @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CARD')
      @DoubleSerializer()
          double? deliveryWithCard,
      @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CASH')
      @DoubleSerializer()
          double? deliveryWithCash,
      @JsonKey(name: 'PAY_WITH_BANK_TRANSFER')
      @DoubleSerializer()
          double? transfer,
      @JsonKey(name: 'FLUTTERWAVE')
      @DoubleSerializer()
          double? flutterwave,
      @JsonKey(name: 'STRIPE')
      @DoubleSerializer()
          double? stripe,
      @JsonKey(name: 'PAYSTACK')
      @DoubleSerializer()
          double? paystack});
}

/// @nodoc
class __$DispatchActivityDTOCopyWithImpl<$Res>
    extends _$DispatchActivityDTOCopyWithImpl<$Res>
    implements _$DispatchActivityDTOCopyWith<$Res> {
  __$DispatchActivityDTOCopyWithImpl(
      _DispatchActivityDTO _value, $Res Function(_DispatchActivityDTO) _then)
      : super(_value, (v) => _then(v as _DispatchActivityDTO));

  @override
  _DispatchActivityDTO get _value => super._value as _DispatchActivityDTO;

  @override
  $Res call({
    Object? card = freezed,
    Object? deliveryWithCard = freezed,
    Object? deliveryWithCash = freezed,
    Object? transfer = freezed,
    Object? flutterwave = freezed,
    Object? stripe = freezed,
    Object? paystack = freezed,
  }) {
    return _then(_DispatchActivityDTO(
      card: card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryWithCard: deliveryWithCard == freezed
          ? _value.deliveryWithCard
          : deliveryWithCard // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryWithCash: deliveryWithCash == freezed
          ? _value.deliveryWithCash
          : deliveryWithCash // ignore: cast_nullable_to_non_nullable
              as double?,
      transfer: transfer == freezed
          ? _value.transfer
          : transfer // ignore: cast_nullable_to_non_nullable
              as double?,
      flutterwave: flutterwave == freezed
          ? _value.flutterwave
          : flutterwave // ignore: cast_nullable_to_non_nullable
              as double?,
      stripe: stripe == freezed
          ? _value.stripe
          : stripe // ignore: cast_nullable_to_non_nullable
              as double?,
      paystack: paystack == freezed
          ? _value.paystack
          : paystack // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DispatchActivityDTO extends _DispatchActivityDTO {
  const _$_DispatchActivityDTO(
      {@JsonKey(name: 'CARD')
      @DoubleSerializer()
          this.card,
      @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CARD')
      @DoubleSerializer()
          this.deliveryWithCard,
      @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CASH')
      @DoubleSerializer()
          this.deliveryWithCash,
      @JsonKey(name: 'PAY_WITH_BANK_TRANSFER')
      @DoubleSerializer()
          this.transfer,
      @JsonKey(name: 'FLUTTERWAVE')
      @DoubleSerializer()
          this.flutterwave,
      @JsonKey(name: 'STRIPE')
      @DoubleSerializer()
          this.stripe,
      @JsonKey(name: 'PAYSTACK')
      @DoubleSerializer()
          this.paystack})
      : super._();

  factory _$_DispatchActivityDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DispatchActivityDTOFromJson(json);

  @override
  @JsonKey(name: 'CARD')
  @DoubleSerializer()
  final double? card;
  @override
  @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CARD')
  @DoubleSerializer()
  final double? deliveryWithCard;
  @override
  @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CASH')
  @DoubleSerializer()
  final double? deliveryWithCash;
  @override
  @JsonKey(name: 'PAY_WITH_BANK_TRANSFER')
  @DoubleSerializer()
  final double? transfer;
  @override
  @JsonKey(name: 'FLUTTERWAVE')
  @DoubleSerializer()
  final double? flutterwave;
  @override
  @JsonKey(name: 'STRIPE')
  @DoubleSerializer()
  final double? stripe;
  @override
  @JsonKey(name: 'PAYSTACK')
  @DoubleSerializer()
  final double? paystack;

  @override
  String toString() {
    return 'DispatchActivityDTO(card: $card, deliveryWithCard: $deliveryWithCard, deliveryWithCash: $deliveryWithCash, transfer: $transfer, flutterwave: $flutterwave, stripe: $stripe, paystack: $paystack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DispatchActivityDTO &&
            const DeepCollectionEquality().equals(other.card, card) &&
            const DeepCollectionEquality()
                .equals(other.deliveryWithCard, deliveryWithCard) &&
            const DeepCollectionEquality()
                .equals(other.deliveryWithCash, deliveryWithCash) &&
            const DeepCollectionEquality().equals(other.transfer, transfer) &&
            const DeepCollectionEquality()
                .equals(other.flutterwave, flutterwave) &&
            const DeepCollectionEquality().equals(other.stripe, stripe) &&
            const DeepCollectionEquality().equals(other.paystack, paystack));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(card),
      const DeepCollectionEquality().hash(deliveryWithCard),
      const DeepCollectionEquality().hash(deliveryWithCash),
      const DeepCollectionEquality().hash(transfer),
      const DeepCollectionEquality().hash(flutterwave),
      const DeepCollectionEquality().hash(stripe),
      const DeepCollectionEquality().hash(paystack));

  @JsonKey(ignore: true)
  @override
  _$DispatchActivityDTOCopyWith<_DispatchActivityDTO> get copyWith =>
      __$DispatchActivityDTOCopyWithImpl<_DispatchActivityDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DispatchActivityDTOToJson(this);
  }
}

abstract class _DispatchActivityDTO extends DispatchActivityDTO {
  const factory _DispatchActivityDTO(
      {@JsonKey(name: 'CARD')
      @DoubleSerializer()
          double? card,
      @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CARD')
      @DoubleSerializer()
          double? deliveryWithCard,
      @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CASH')
      @DoubleSerializer()
          double? deliveryWithCash,
      @JsonKey(name: 'PAY_WITH_BANK_TRANSFER')
      @DoubleSerializer()
          double? transfer,
      @JsonKey(name: 'FLUTTERWAVE')
      @DoubleSerializer()
          double? flutterwave,
      @JsonKey(name: 'STRIPE')
      @DoubleSerializer()
          double? stripe,
      @JsonKey(name: 'PAYSTACK')
      @DoubleSerializer()
          double? paystack}) = _$_DispatchActivityDTO;
  const _DispatchActivityDTO._() : super._();

  factory _DispatchActivityDTO.fromJson(Map<String, dynamic> json) =
      _$_DispatchActivityDTO.fromJson;

  @override
  @JsonKey(name: 'CARD')
  @DoubleSerializer()
  double? get card;
  @override
  @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CARD')
  @DoubleSerializer()
  double? get deliveryWithCard;
  @override
  @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CASH')
  @DoubleSerializer()
  double? get deliveryWithCash;
  @override
  @JsonKey(name: 'PAY_WITH_BANK_TRANSFER')
  @DoubleSerializer()
  double? get transfer;
  @override
  @JsonKey(name: 'FLUTTERWAVE')
  @DoubleSerializer()
  double? get flutterwave;
  @override
  @JsonKey(name: 'STRIPE')
  @DoubleSerializer()
  double? get stripe;
  @override
  @JsonKey(name: 'PAYSTACK')
  @DoubleSerializer()
  double? get paystack;
  @override
  @JsonKey(ignore: true)
  _$DispatchActivityDTOCopyWith<_DispatchActivityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
