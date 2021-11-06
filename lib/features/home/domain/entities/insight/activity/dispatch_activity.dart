library dispatch_activity.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispatch_activity.freezed.dart';

@freezed
@immutable
class DispatchActivity with _$DispatchActivity {
  static DateTime firstDate = DateTime(2020, 1, 1);
  static DateTime lastDate = DateTime.now();

  const DispatchActivity._();

  const factory DispatchActivity({
    required DispatchActivityDecorator card,
    required DispatchActivityDecorator deliveryWithCard,
    required DispatchActivityDecorator deliveryWithCash,
    required DispatchActivityDecorator transfer,
    required DispatchActivityDecorator flutterwave,
    required DispatchActivityDecorator stripe,
    required DispatchActivityDecorator paystack,
  }) = _DispatchActivity;

  bool get isValid =>
      deliveryWithCard.amount.isValid || deliveryWithCash.amount.isValid;

  static DispatchActivity blank() => DispatchActivity(
        card: DispatchActivityDecorator(
          method: PaymentMethod.CARD,
          amount: BasicTextField(null),
        ),
        deliveryWithCard: DispatchActivityDecorator(
          method: PaymentMethod.PAY_ON_DELIVERY_WITH_CARD,
          amount: BasicTextField(null),
        ),
        deliveryWithCash: DispatchActivityDecorator(
          method: PaymentMethod.PAY_ON_DELIVERY_WITH_CASH,
          amount: BasicTextField(null),
        ),
        transfer: DispatchActivityDecorator(
          method: PaymentMethod.PAY_WITH_BANK_TRANSFER,
          amount: BasicTextField(null),
        ),
        flutterwave: DispatchActivityDecorator(
          method: PaymentMethod.FLUTTERWAVE,
          amount: BasicTextField(null),
        ),
        stripe: DispatchActivityDecorator(
          method: PaymentMethod.STRIPE,
          amount: BasicTextField(null),
        ),
        paystack: DispatchActivityDecorator(
          method: PaymentMethod.PAYSTACK,
          amount: BasicTextField(null),
        ),
      );
}

@freezed
@immutable
class DispatchActivityDecorator with _$DispatchActivityDecorator {
  const DispatchActivityDecorator._();

  const factory DispatchActivityDecorator({
    required PaymentMethod method,
    required BasicTextField<double?> amount,
  }) = _DispatchActivityDecorator;
}
