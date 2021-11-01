library send_package_status.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'send_package_status.g.dart';

class SendPackageStatus extends EnumClass {
  /// it is now visible for riders and a rider can opt in for the delivery
  static const SendPackageStatus ACTIVE = _$ACTIVE;

  /// Package has been delivered
  static const SendPackageStatus DELIVERED = _$DELIVERED;

  /// Rider is on his way to the receiver
  static const SendPackageStatus ENROUTE_TO_RECEIVER = _$ENROUTE_TO_RECEIVER;

  /// Rider is on his way to the sender
  static const SendPackageStatus ENROUTE_TO_SENDER = _$ENROUTE_TO_SENDER;

  /// Payment failed
  static const SendPackageStatus FAILED = _$FAILED;

  /// For Payment on delivery
  static const SendPackageStatus PAID = _$PAID;

  /// order placed but not yet paid for or no payment method stipulated
  @BuiltValueEnumConst(fallback: true)
  static const SendPackageStatus PENDING = _$PENDING;

  /// Payment is in process or awaiting confirmation
  static const SendPackageStatus PROCESSING = _$PROCESSING;

  /// Rider has seen the package on his own app and clicked on accept order
  static const SendPackageStatus RIDER_ACCEPTED = _$RIDER_ACCEPTED;

  /// Rider has physically been handed over the package
  static const SendPackageStatus RIDER_RECEIVED_PACKAGE =
      _$RIDER_RECEIVED_PACKAGE;

  const SendPackageStatus._(String name) : super(name);

  static BuiltSet<SendPackageStatus> get values => _$values;

  static SendPackageStatus valueOf(String name) => _$valueOf(name);

  String toJson() => '$name';
}

extension SendPackageStatusX on SendPackageStatus {
  T maybeWhen<T>({
    T Function()? pending,
    T Function()? processing,
    T Function()? paid,
    T Function()? failed,
    T Function()? active,
    T Function()? enroute,
    T Function()? enrouteToSender,
    T Function()? enrouteToReceiver,
    T Function()? riderAccepted,
    T Function()? riderReceived,
    T Function()? delivered,
    required T Function() orElse,
  }) {
    switch (this) {
      case SendPackageStatus.PENDING:
        return pending?.call() ?? orElse.call();
      case SendPackageStatus.PROCESSING:
        return processing?.call() ?? orElse.call();
      case SendPackageStatus.PAID:
        return paid?.call() ?? orElse.call();
      case SendPackageStatus.FAILED:
        return failed?.call() ?? orElse.call();
      case SendPackageStatus.ACTIVE:
        return active?.call() ?? orElse.call();
      case SendPackageStatus.RIDER_ACCEPTED:
        return riderAccepted?.call() ?? orElse.call();
      case SendPackageStatus.ENROUTE_TO_SENDER:
        return enroute?.call() ?? enrouteToSender?.call() ?? orElse.call();
      case SendPackageStatus.RIDER_RECEIVED_PACKAGE:
        return riderReceived?.call() ?? orElse.call();
      case SendPackageStatus.ENROUTE_TO_RECEIVER:
        return enroute?.call() ?? enrouteToReceiver?.call() ?? orElse.call();
      case SendPackageStatus.DELIVERED:
        return delivered?.call() ?? orElse.call();
    }

    return orElse.call();
  }

  T between<T>({
    required T Function() start,
    required T Function() end,
  }) {
    switch (this) {
      case SendPackageStatus.PENDING:
      case SendPackageStatus.PROCESSING:
      case SendPackageStatus.PAID:
      case SendPackageStatus.FAILED:
      case SendPackageStatus.ACTIVE:
      case SendPackageStatus.RIDER_ACCEPTED:
      case SendPackageStatus.ENROUTE_TO_SENDER:
        return start.call();
      case SendPackageStatus.RIDER_RECEIVED_PACKAGE:
      case SendPackageStatus.ENROUTE_TO_RECEIVER:
      case SendPackageStatus.DELIVERED:
        return end.call();
    }
    return end.call();
  }

  T when<T>({
    required T Function() pending,
    required T Function() processing,
    required T Function() paid,
    required T Function() failed,
    required T Function() active,
    required T Function() enrouteToSender,
    required T Function() enrouteToReceiver,
    required T Function() riderAccepted,
    required T Function() riderReceived,
    required T Function() delivered,
  }) {
    switch (this) {
      case SendPackageStatus.PENDING:
        return pending.call();
      case SendPackageStatus.PROCESSING:
        return processing.call();
      case SendPackageStatus.PAID:
        return paid.call();
      case SendPackageStatus.FAILED:
        return failed.call();
      case SendPackageStatus.ACTIVE:
        return active.call();
      case SendPackageStatus.ENROUTE_TO_SENDER:
        return enrouteToSender.call();
      case SendPackageStatus.ENROUTE_TO_RECEIVER:
        return enrouteToReceiver.call();
      case SendPackageStatus.RIDER_ACCEPTED:
        return riderAccepted.call();
      case SendPackageStatus.RIDER_RECEIVED_PACKAGE:
        return riderReceived.call() ?? enrouteToReceiver.call();
      case SendPackageStatus.DELIVERED:
        return delivered.call();
    }

    return pending.call();
  }
}
