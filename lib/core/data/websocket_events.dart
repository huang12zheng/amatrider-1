mixin SendPackageSocket {
  static String channel(String id) => 'package.activity.$id';

  // Rider location update
  static String get location => '.package.rider_location_updated';

  // Rider picked-up package from sender
  static String get received => '.package.rider.received';

  // Rider has delivered package to receiver
  static String get delivered => '.package.rider.delivered';
}

mixin RiderNotification {
  static String channel(String riderId) => 'rider.notifications.$riderId';
}
