library parcel_status.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'parcel_status.g.dart';

class ParcelStatus extends EnumClass {
  /// [ORDER] Order was accepted by the restaurant
  static const ParcelStatus ACCEPTED = _$ACCEPTED;

  /// [PACKAGE] it is now visible for riders and a rider can opt in for the delivery
  /// [ORDER] Order paid for or payment method defined. Awaiting response from seller/restaurant
  static const ParcelStatus ACTIVE = _$ACTIVE;

  /// [PACKAGE] Package was cancelled by the user
  /// [ORDER] Order was cancelled by User
  static const ParcelStatus CANCELLED = _$CANCELLED;

  /// [ORDER] it is now visible for riders and a rider can opt in for the delivery
  static const ParcelStatus DELIVERABLE = _$DELIVERABLE;

  /// [PACKAGE] Package has been delivered
  /// [ORDER] Rider has delivered the deliverable to the customer. This also means it has been paid for
  static const ParcelStatus DELIVERED = _$DELIVERED;

  /// [PACKAGE] Rider is on his way to the receiver
  static const ParcelStatus ENROUTE_TO_RECEIVER = _$ENROUTE_TO_RECEIVER;

  /// [PACKAGE] Rider is on his way to the sender
  static const ParcelStatus ENROUTE_TO_SENDER = _$ENROUTE_TO_SENDER;

  /// [PACKAGE] Payment failed
  /// [ORDER] Order failed to be paid for
  static const ParcelStatus FAILED = _$FAILED;

  /// [PACKAGE] For Payment on delivery
  /// [ORDER] Order is paid for
  static const ParcelStatus PAID = _$PAID;

  /// [PACKAGE] order placed but not yet paid for or no payment method stipulated
  /// [ORDER] Order create but not yet paid for nor payment method yet set
  @BuiltValueEnumConst(fallback: true)
  static const ParcelStatus PENDING = _$PENDING;

  /// [PACKAGE] Payment is in process or awaiting confirmation
  static const ParcelStatus PROCESSING = _$PROCESSING;

  /// [ORDER] Order was rejected by the seller/store
  static const ParcelStatus REJECTED = _$REJECTED;

  /// [PACKAGE] Rider has seen the package on his own app and clicked on accept order
  /// [ORDER] Rider has confirmed to come pick up an order
  static const ParcelStatus RIDER_ACCEPTED = _$RIDER_ACCEPTED;

  /// [ORDER] Rider is going to deliver the deliverable to the customer
  static const ParcelStatus RIDER_ENROUTE = _$RIDER_ENROUTE;

  /// [ORDER] Rider is on his way to the restaurant / store
  static const ParcelStatus RIDER_ENROUTE_TO_RESTAURANT = _$RIDER_ENROUTE_TO_RESTAURANT;

  /// [ORDER] Rider received / pickup deliverable from store
  static const ParcelStatus RIDER_RECEIVED_DELIVERABLE = _$RIDER_RECEIVED_DELIVERABLE;

  /// [PACKAGE] Rider has physically been handed over the package
  static const ParcelStatus RIDER_RECEIVED_PACKAGE = _$RIDER_RECEIVED_PACKAGE;

  const ParcelStatus._(String name) : super(name);

  static BuiltSet<ParcelStatus> get values => _$values;

  static ParcelStatus valueOf(String name) => _$valueOf(name);

  static List<ParcelStatus> inTransitToSender = [
    ParcelStatus.RIDER_ACCEPTED,
    ParcelStatus.RIDER_ENROUTE_TO_RESTAURANT,
    ParcelStatus.ENROUTE_TO_SENDER,
  ];

  static List<ParcelStatus> inTransitToReceiver = [
    ParcelStatus.RIDER_RECEIVED_PACKAGE,
    ParcelStatus.RIDER_RECEIVED_DELIVERABLE,
    ParcelStatus.ENROUTE_TO_RECEIVER,
    ParcelStatus.RIDER_ENROUTE,
  ];

  static List<ParcelStatus> packageInTransit = [
    ParcelStatus.RIDER_ACCEPTED,
    ParcelStatus.RIDER_RECEIVED_PACKAGE,
    ParcelStatus.ENROUTE_TO_SENDER,
    ParcelStatus.ENROUTE_TO_RECEIVER,
  ];

  static List<ParcelStatus> delivered = [ParcelStatus.DELIVERED];

  static List<ParcelStatus> processing = [ParcelStatus.ACTIVE];

  static List<ParcelStatus> preparingOrder = [
    ParcelStatus.ACCEPTED,
    ParcelStatus.DELIVERABLE,
    ParcelStatus.RIDER_ACCEPTED,
    ParcelStatus.RIDER_ENROUTE_TO_RESTAURANT,
  ];

  static List<ParcelStatus> orderWithRider = [
    ParcelStatus.RIDER_RECEIVED_DELIVERABLE,
    ParcelStatus.RIDER_ENROUTE,
  ];

  static List<ParcelStatus> cancelled = [
    ParcelStatus.CANCELLED,
    ParcelStatus.REJECTED,
    ParcelStatus.FAILED,
  ];

  static List<ParcelStatus> ORDER_STATUSES = [
    ParcelStatus.ACTIVE,
    ParcelStatus.ACCEPTED,
    ParcelStatus.PROCESSING,
    ParcelStatus.DELIVERABLE,
    ParcelStatus.RIDER_ACCEPTED,
    ParcelStatus.RIDER_ENROUTE_TO_RESTAURANT,
    ParcelStatus.RIDER_ENROUTE,
    ParcelStatus.RIDER_RECEIVED_DELIVERABLE,
    ParcelStatus.CANCELLED,
    ParcelStatus.REJECTED,
    ParcelStatus.FAILED,
  ];

  String toJson() => '$name';
}

extension ParcelStatusX on ParcelStatus {
  T maybeWhen<T>({
    T Function()? pending,
    T Function()? processing,
    T Function()? paid,
    T Function()? failed,
    T Function()? active,
    T Function()? enroute,
    T Function()? enrouteToStoreOrSender,
    T Function()? enrouteToStore,
    T Function()? enrouteToReceiver,
    T Function()? accepted,
    T Function()? received,
    T Function()? delivered,
    T Function()? rejected,
    T Function()? cancelled,
    required T Function() orElse,
  }) {
    switch (this) {
      case ParcelStatus.PENDING:
        return pending?.call() ?? orElse.call();
      case ParcelStatus.PROCESSING:
        return processing?.call() ?? orElse.call();
      case ParcelStatus.PAID:
        return paid?.call() ?? orElse.call();
      case ParcelStatus.FAILED:
        return failed?.call() ?? orElse.call();
      case ParcelStatus.ACTIVE:
      case ParcelStatus.DELIVERABLE:
        return active?.call() ?? orElse.call();
      case ParcelStatus.ACCEPTED:
      case ParcelStatus.RIDER_ACCEPTED:
        return accepted?.call() ?? orElse.call();
      case ParcelStatus.ENROUTE_TO_SENDER:
      case ParcelStatus.RIDER_ENROUTE_TO_RESTAURANT:
        return enroute?.call() ?? enrouteToStoreOrSender?.call() ?? enrouteToStore?.call() ?? orElse.call();
      case ParcelStatus.RIDER_RECEIVED_PACKAGE:
      case ParcelStatus.RIDER_RECEIVED_DELIVERABLE:
        return received?.call() ?? orElse.call();
      case ParcelStatus.ENROUTE_TO_RECEIVER:
      case ParcelStatus.RIDER_ENROUTE:
        return enroute?.call() ?? enrouteToReceiver?.call() ?? orElse.call();
      case ParcelStatus.DELIVERED:
        return delivered?.call() ?? orElse.call();
      case ParcelStatus.REJECTED:
        return rejected?.call() ?? orElse.call();
      case ParcelStatus.CANCELLED:
        return cancelled?.call() ?? orElse.call();
    }

    return orElse.call();
  }

  T between<T>({
    required T Function() start,
    required T Function() end,
  }) {
    switch (this) {
      case ParcelStatus.PENDING:
      case ParcelStatus.PROCESSING:
      case ParcelStatus.PAID:
      case ParcelStatus.FAILED:
      case ParcelStatus.ACTIVE:
      case ParcelStatus.DELIVERABLE:
      case ParcelStatus.ACCEPTED:
      case ParcelStatus.RIDER_ACCEPTED:
      case ParcelStatus.ENROUTE_TO_SENDER:
      case ParcelStatus.RIDER_ENROUTE_TO_RESTAURANT:
        return start.call();
      case ParcelStatus.RIDER_RECEIVED_PACKAGE:
      case ParcelStatus.RIDER_RECEIVED_DELIVERABLE:
      case ParcelStatus.ENROUTE_TO_RECEIVER:
      case ParcelStatus.RIDER_ENROUTE:
      case ParcelStatus.DELIVERED:
      case ParcelStatus.CANCELLED:
      case ParcelStatus.REJECTED:
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
    required T Function() enrouteToStoreOrSender,
    required T Function() enrouteToReceiver,
    required T Function() accepted,
    required T Function() received,
    required T Function() delivered,
    required T Function() rejected,
    required T Function() cancelled,
  }) {
    switch (this) {
      case ParcelStatus.PENDING:
        return pending.call();
      case ParcelStatus.PROCESSING:
        return processing.call();
      case ParcelStatus.PAID:
        return paid.call();
      case ParcelStatus.FAILED:
        return failed.call();
      case ParcelStatus.ACTIVE:
      case ParcelStatus.DELIVERABLE:
        return active.call();
      case ParcelStatus.ENROUTE_TO_SENDER:
      case ParcelStatus.RIDER_ENROUTE_TO_RESTAURANT:
        return enrouteToStoreOrSender.call();
      case ParcelStatus.ENROUTE_TO_RECEIVER:
      case ParcelStatus.RIDER_ENROUTE:
        return enrouteToReceiver.call();
      case ParcelStatus.ACCEPTED:
      case ParcelStatus.RIDER_ACCEPTED:
        return accepted.call();
      case ParcelStatus.RIDER_RECEIVED_PACKAGE:
      case ParcelStatus.RIDER_RECEIVED_DELIVERABLE:
        return received.call() ?? enrouteToReceiver.call();
      case ParcelStatus.DELIVERED:
        return delivered.call();
      case ParcelStatus.REJECTED:
        return rejected.call();
      case ParcelStatus.CANCELLED:
        return cancelled.call();
    }

    return pending.call();
  }

  T whenOrder<T>({
    T Function()? received,
    T Function()? preparation,
    T Function()? withRider,
    T Function()? delivered,
    T Function()? cancelled,
    required T Function() orElse,
  }) {
    switch (this) {
      case ParcelStatus.ACTIVE:
        return received != null ? received.call() : orElse();
      case ParcelStatus.ACCEPTED:
      case ParcelStatus.DELIVERABLE:
      case ParcelStatus.RIDER_ACCEPTED:
      case ParcelStatus.RIDER_ENROUTE_TO_RESTAURANT:
        return preparation != null ? preparation.call() : orElse();
      case ParcelStatus.RIDER_RECEIVED_DELIVERABLE:
      case ParcelStatus.RIDER_ENROUTE:
        return withRider != null ? withRider.call() : orElse();
      case ParcelStatus.DELIVERED:
        return delivered != null ? delivered.call() : orElse();
      case ParcelStatus.CANCELLED:
      case ParcelStatus.REJECTED:
      case ParcelStatus.FAILED:
        return cancelled != null ? cancelled.call() : orElse();
      default:
        return orElse();
    }
  }
}
