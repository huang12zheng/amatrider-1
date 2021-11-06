library dispatch_activity_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispatch_activity_dto.g.dart';
part 'dispatch_activity_dto.freezed.dart';

@freezed
@immutable
class DispatchActivityDTO with _$DispatchActivityDTO {
  const DispatchActivityDTO._();

  const factory DispatchActivityDTO({
    @JsonKey(name: 'CARD') @DoubleSerializer() double? card,
    @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CARD')
    @DoubleSerializer()
        double? deliveryWithCard,
    @JsonKey(name: 'PAY_ON_DELIVERY_WITH_CASH')
    @DoubleSerializer()
        double? deliveryWithCash,
    @JsonKey(name: 'PAY_WITH_BANK_TRANSFER')
    @DoubleSerializer()
        double? transfer,
    @JsonKey(name: 'FLUTTERWAVE') @DoubleSerializer() double? flutterwave,
    @JsonKey(name: 'STRIPE') @DoubleSerializer() double? stripe,
    @JsonKey(name: 'PAYSTACK') @DoubleSerializer() double? paystack,
  }) = _DispatchActivityDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DispatchActivityDTO.fromJson(Map<String, dynamic> json) =>
      _$DispatchActivityDTOFromJson(json);

  /// Maps the Data Transfer Object to a PaymentMethodActivity Object.
  DispatchActivity get domain => DispatchActivity(
        card: DispatchActivityDecorator(
          method: PaymentMethod.CARD,
          amount: BasicTextField(card),
        ),
        deliveryWithCard: DispatchActivityDecorator(
          method: PaymentMethod.PAY_ON_DELIVERY_WITH_CARD,
          amount: BasicTextField(deliveryWithCard),
        ),
        deliveryWithCash: DispatchActivityDecorator(
          method: PaymentMethod.PAY_ON_DELIVERY_WITH_CASH,
          amount: BasicTextField(deliveryWithCash),
        ),
        transfer: DispatchActivityDecorator(
          method: PaymentMethod.PAY_WITH_BANK_TRANSFER,
          amount: BasicTextField(transfer),
        ),
        flutterwave: DispatchActivityDecorator(
          method: PaymentMethod.FLUTTERWAVE,
          amount: BasicTextField(flutterwave),
        ),
        stripe: DispatchActivityDecorator(
          method: PaymentMethod.STRIPE,
          amount: BasicTextField(stripe),
        ),
        paystack: DispatchActivityDecorator(
          method: PaymentMethod.PAYSTACK,
          amount: BasicTextField(paystack),
        ),
      );
}
