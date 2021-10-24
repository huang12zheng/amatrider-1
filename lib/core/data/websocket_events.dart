mixin WebSocketEvent {
  // Send Package Payment Confirmed Event & Channel
  static String get packagePaymentEvent => '.package.confirmed';
  static String packagePaymentChannel(String id) => 'package.confirmed.$id';

  // Rider Accepted package Event & Channel
  static String get riderAcceptedDeliveryEvent => '.package.rider_accepted';
  static String riderAcceptedDeliveryChannel(String id) =>
      'package.rider_accepted.$id';

  // Location update Event & Channel
  static String get riderLocationUpdateEvent =>
      '.package.rider_location_updated';
  static String riderLocationUpdateChannel(String id) =>
      'package.rider_location_updated.$id';

  // Rider Received package from sender Event & Channel
  static String get riderReceivedPackageEvent => '.package.rider.received';
  static String riderReceivedPackageChannel(String id) =>
      'package.rider.received.$id';

  // Rider has delivered package to receiver Event & Channel
  static String get riderDeliveredPackageEvent => '.package.rider.delivered';
  static String riderDeliveredPackageChannel(String id) =>
      'package.rider.delivered.$id';
}
