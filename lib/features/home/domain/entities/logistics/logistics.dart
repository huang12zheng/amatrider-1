library logistics.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';

abstract class Logistics extends BaseEntity {
  const Logistics();

  @override
  UniqueId<String?> get id;
  UniqueId<String?> get riderId;

  UserAddress get pickup;
  UserAddress get destination;
  AmountField<double> get price;
  PaymentMethod? get paymentMethod;
  LogisticsType get type;
  User get sender;
  Store get store;
  User get receiver;
  JourneyDetail? get journey;
  BasicTextField<String?> get notes;
  ParcelStatus get status;
  RiderLocation get riderLocation;
  Duration get durationToPickup;
  BasicTextField<double?> get distanceToPickup;
  bool get contactlessDelivery;
  DateTime? get orderActiveAt;
  DateTime? get orderCancelledAt;
  DateTime? get riderAcceptedAt;
  DateTime? get riderReceivedAt;
  DateTime? get riderDeliveredAt;

  @override
  DateTime? get createdAt;

  @override
  DateTime? get updatedAt;

  @override
  DateTime? get deletedAt;
}
