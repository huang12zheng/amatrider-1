library payment_method.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'payment_method.g.dart';

class PaymentMethod extends EnumClass {
  static const PaymentMethod CARD = _$CARD;
  static const PaymentMethod PAY_ON_DELIVERY_WITH_CARD = _$PAY_ON_DELIVERY_WITH_CARD;
  static const PaymentMethod PAY_ON_DELIVERY_WITH_CASH = _$PAY_ON_DELIVERY_WITH_CASH;
  static const PaymentMethod PAY_WITH_BANK_TRANSFER = _$PAY_WITH_BANK_TRANSFER;
  static const PaymentMethod FLUTTERWAVE = _$FLUTTERWAVE;
  static const PaymentMethod STRIPE = _$STRIPE;
  static const PaymentMethod PAYSTACK = _$PAYSTACK;
  @BuiltValueEnumConst(fallback: true)
  static const PaymentMethod NONE = _$NONE;

  const PaymentMethod._(String name) : super(name);

  static BuiltSet<PaymentMethod> get values => _$values;

  static PaymentMethod valueOf(String name) => _$valueOf(name);

  String get formatted {
    return when(
      card: () => '${S.current.bankTransfer}',
      deliveryWithCard: () => '${S.current.cardPOS}',
      deliveryWithCash: () => '${S.current.cash}',
      transfer: () => '${S.current.bankTransfer}',
      flutterwave: () => '${S.current.bankTransfer}',
      stripe: () => '${S.current.bankTransfer}',
      paystack: () => '${S.current.bankTransfer}',
    );
  }
}

extension PaymentMethodX on PaymentMethod {
  T maybeWhen<T>({
    T Function()? card,
    T Function()? deliveryWithCard,
    T Function()? deliveryWithCash,
    T Function()? transfer,
    T Function()? flutterwave,
    T Function()? stripe,
    T Function()? paystack,
    required T Function() orElse,
  }) {
    if (this == PaymentMethod.CARD)
      return card?.call() ?? orElse.call();
    else if (this == PaymentMethod.PAY_ON_DELIVERY_WITH_CARD)
      return deliveryWithCard?.call() ?? orElse.call();
    else if (this == PaymentMethod.PAY_ON_DELIVERY_WITH_CASH)
      return deliveryWithCash?.call() ?? orElse.call();
    else if (this == PaymentMethod.PAY_WITH_BANK_TRANSFER)
      return transfer?.call() ?? orElse.call();
    else if (this == PaymentMethod.FLUTTERWAVE)
      return flutterwave?.call() ?? orElse.call();
    else if (this == PaymentMethod.STRIPE)
      return stripe?.call() ?? orElse.call();
    else if (this == PaymentMethod.PAYSTACK)
      return paystack?.call() ?? orElse.call();
    else
      return orElse.call();
  }

  T when<T>({
    required T Function() card,
    required T Function() deliveryWithCard,
    required T Function() deliveryWithCash,
    required T Function() transfer,
    required T Function() flutterwave,
    required T Function() stripe,
    required T Function() paystack,
  }) {
    switch (this) {
      case PaymentMethod.CARD:
        return card.call();
      case PaymentMethod.PAY_ON_DELIVERY_WITH_CARD:
        return deliveryWithCard.call();
      case PaymentMethod.PAY_ON_DELIVERY_WITH_CASH:
        return deliveryWithCash.call();
      case PaymentMethod.PAY_WITH_BANK_TRANSFER:
        return transfer.call();
      case PaymentMethod.FLUTTERWAVE:
        return flutterwave.call();
      case PaymentMethod.STRIPE:
        return stripe.call();
      case PaymentMethod.PAYSTACK:
        return paystack.call();
      default:
        return deliveryWithCard.call();
    }
  }
}
