mixin SendPackageEvents {
  static String channel(String id) => 'package.activity.$id';

  // Rider location update
  static String get location => '.package.rider_location_updated';

  // Rider picked-up package from sender
  static String get received => '.package.rider.received';

  // Rider has delivered package to receiver
  static String get delivered => '.package.rider.delivered';
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
  static String newRequestChannel(String riderId) => 'rider.packages.$riderId';
  static String get newRequestEvent => '.rider.packages.new';

  static String get packageAcceptedChannel => 'package.info';
  static String get packageAcceptedEvent => '.package.accepted';

  static String packageDeliveredChannel(String riderId) =>
      'rider.package.$riderId';
  static String get packageDeliveredEvent => '.rider.package.status.delivered';
}
