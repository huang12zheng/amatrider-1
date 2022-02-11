mixin DeliverableEvents {
  static String packageChannel(String id) => 'package.activity.$id'; // Private channel
  static String get packageEvent => '.package.status';

  static String orderChannel(String id) => 'order.status-update.$id'; // Public channel
  static String get orderEvent => '.order.status.update';
}

mixin DispatchRider {
  static String notifications(String riderId) => 'rider.notifications.$riderId';
  static String profile(String riderId) => 'rider.profile.$riderId';
  static String get profileEvent => '.rider.profile.updated';
}

mixin HistoryEvents {
  static String channel(String riderId) => 'delivery.history.$riderId';

  static String get event => '.delivery.history.updated';
}

mixin InsightEvents {
  static String channel(String riderId) => 'insight.$riderId';

  static String get event => '.insight.updated';

  static String depositChannel(String id) => 'rider.deposit.$id';

  static String get depositEvent => '.depost.confirmed';
}

mixin RequestEvents {
  static String newPackageChannel(String riderId) => 'rider.packages.$riderId'; // Private channel
  static String get newPackageEvent => '.rider.packages.new';

  static String newOrderChannel(String riderId) => 'rider.orders.$riderId'; // Private channel
  static String get newOrderEvent => '.rider.orders.new';

  // static String get acceptedChannel => 'deliverable.info'; // Public channel
  // static String get acceptedEvent => '.deliverable.accepted';

  // static String packageDeliveredChannel(String riderId) => 'rider.package.$riderId'; // Private channel
  // static String get packageDeliveredEvent => '.rider.package.status.delivered';

  // static String orderDeliveredChannel(String riderId) => 'order.activity.$riderId'; // Public channel
  // static String get orderDeliveredEvent => '.order.delivered';
}
