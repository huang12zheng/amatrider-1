mixin EndPoints {
  static const String APP_DEV_DOMAIN = 'api.staging.amatnow.com';
  static const String APP_PROD_DOMAIN = 'api.amatnow.com';
  static const String DEV_WEB_URL = 'https://$APP_DEV_DOMAIN';
  static const String PROD_WEB_URL = 'https://$APP_PROD_DOMAIN';
  static const String API_ENDPOINT = '/api/v1';
  static const String PUSHER_AUTH_URL = '/broadcasting/auth';
  static const String SLEEP = '/rider/sleep';

  //.....///.....// AUTHENTICATION ENDPOINTS ....////././//...//
  static const String LOGIN = '/rider/auth/login';
  static const String REGISTER = '/rider/auth/register';
  static const String LOGOUT = '/rider/auth/logout';
  static const String RESEND_PHONE_VERIFICATION = '/rider/auth/verify/phone/resend';
  static const String CONFIRM_PHONE_VERIFICATION = '/rider/auth/verify/phone';
  static const String SEND_PASSWORD_RESET_MESSAGE = '/rider/auth/forgot-password';
  static const String CONFIRM_PASSWORD_RESET = '/rider/auth/reset-password';
  static const String GOOGLE_SIGNIN = '/rider/auth/social/google';
  static const String APPLE_SIGNIN = '/rider/auth/social/apple';
  static const String DELETE_ACCOUNT = '/rider/delete-account';

  /// .......///////...// USER ENDPOINTS .......///////./....//
  static const String GET_RIDER = '/rider';
  static const String UPDATE_PASSWORD = '/rider/password'; // (PATCH)
  static const String UPDATE_PHONE = '/rider/profile/phone'; // (POST)
  static const String CONFIRM_UPDATE_PHONE = '/rider/profile/phone'; // (PATCH)
  static const String UPDATE_RIDER_PROFILE = '/rider/profile'; // (POST)
  static const String UPDATE_RIDER_PROFILE_SOCIALS = '/rider/social/profile'; // (POST)

  /// .......///////...// SEND PACKAGE ENDPOINTS .......///////./....//
  static const String GET_ACTIVE_PACKAGES = '/rider/package'; // (GET)
  static const String GET_SINGLE_PACKAGE = '/rider/package/{id}'; // (GET)
  static const String ACCEPT_PACKAGE_DELIVERY = '/rider/package/{id}/accept'; // (POST)
  static const String DECLINE_PACKAGE_DELIVERY = '/rider/package/{id}/decline'; // (POST)
  static const String UPDATE_PACKAGE_LOCATION = '/rider/package/{id}/location'; // (POST)
  static const String CONFIRM_RECEIVED_PACKAGE = '/rider/package/{id}/confirm-pickup'; // (POST)
  static const String CONFIRM_PACKAGE_DELIVERED = '/rider/package/{id}/delivered'; // (POST)
  static const String ALERT_PACKAGE_ARRIVAL = '/rider/package/{id}/rider-arrived'; // (GET)

  /// .......///////...// ORDERS ENDPOINTS .......///////./....//
  static const String GET_ACTIVE_ORDERS = '/rider/orders'; // (GET)
  static const String GET_SINGLE_ORDER = '/rider/orders/{id}'; // (GET)
  static const String ACCEPT_ORDER_DELIVERY = '/rider/orders/{id}/accept'; // (POST)
  static const String DECLINE_ORDER_DELIVERY = '/rider/orders/{id}/decline'; // (POST)
  static const String UPDATE_ORDER_LOCATION = '/rider/orders/{id}/location'; // (POST)
  static const String CONFIRM_RECEIVED_ORDER = '/rider/orders/{id}/confirm-pickup'; // (POST)
  static const String CONFIRM_ORDER_DELIVERED = '/rider/orders/{id}/delivered'; // (POST)
  static const String ALERT_ORDER_ARRIVAL = '/rider/orders/{id}/rider-arrived'; // (GET)

  static const String GET_ALL_ACTIVE = '/rider/deliverable'; // (GET)
  static const String GET_ALL_IN_TRANSIT = '/rider/deliverable/transit'; // (GET)

  /// .......///////...// HISTORY ENDPOINTS .......///////./....//
  //static const String GET_ALL_HISTORY = '/rider/history'; // (GET)
  static const String GET_ALL_HISTORY = '/rider/deliverable/history'; // (GET)

  /// .......///////...// NOTIFICATION ENDPOINTS .......///////./....//
  static const String ALL_NOTIFICATIONS = '/rider/notifications'; // (GET)

  /// .......///////...// INSIGHTS ENDPOINTS .......///////./....//
  static const String GET_INSIGHT = '/rider/insight'; // (GET)
  static const String INITIATE_CASH_DEPOSIT = '/rider/deposit/initiate'; // (POST)

  //.....///.....// UTILITIES ENDPOINTS ....////././//...//
  static const String COUNTRIES = '/utilities/countries'; // (GET)
  static const String GET_BANK_ACCOUNT = '/rider/account-information'; // (GET)
  static const String STORE_BANK_ACCOUNT = '/rider/account-information'; // (POST)
  static const String DOCUMENT_VERIFICATION = '/rider/verification-document'; // (POST)
  static const String BANKS = '/banks'; // (GET)
  static const String TOGGLE_RIDER_AVAILABILITY = '/rider/availability'; // (PATCH)
  static const String DEPOSIT_CASH = '/rider/deposit'; // (POST)
  static const String CLAIM_BONUS = '/rider/claim-bonus'; // (GET)
  static const String GET_REVIEWS = '/rider/reviews'; // (GET)
  static const String CONTACT_SUPPORT = '/rider/contact-support'; // (GET)
  static const String GET_PROMOTIONS = '/utilities/promotions';
  static const String REGISTER_USER_DEVICE = '/rider/register-device';
}
