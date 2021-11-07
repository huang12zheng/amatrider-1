mixin EndPoints {
  static const String APP_DOMAIN = 'api.manuelsnr.design';
  static const String API_ENDPOINT = '/api/v1';
  static const String BASE_URL = 'https://$APP_DOMAIN$API_ENDPOINT';
  static const String PUSHER_AUTH_URL =
      'https://api.manuelsnr.design/broadcasting/auth';
  static const String SLEEP = '/rider/sleep';

  //.....///.....// AUTHENTICATION ENDPOINTS ....////././//...//
  static const String LOGIN = '/rider/auth/login';
  static const String REGISTER = '/rider/auth/register';
  static const String LOGOUT = '/rider/auth/logout';
  static const String RESEND_PHONE_VERIFICATION =
      '/rider/auth/verify/phone/resend';
  static const String CONFIRM_PHONE_VERIFICATION = '/rider/auth/verify/phone';
  static const String SEND_PASSWORD_RESET_MESSAGE =
      '/rider/auth/forgot-password';
  static const String CONFIRM_PASSWORD_RESET = '/rider/auth/reset-password';
  static const String GOOGLE_SIGNIN = '/rider/auth/social/google';
  static const String APPLE_SIGNIN = '/rider/auth/social/apple';
  static const String DELETE_ACCOUNT = '/rider/delete-account';

  /// .......///////...// USER ENDPOINTS .......///////./....//
  static const String GET_RIDER = '/rider/rider';
  static const String UPDATE_PASSWORD = '/rider/rider/password'; // (PATCH)
  static const String UPDATE_PHONE = '/rider/rider/profile/phone'; // (POST)
  static const String CONFIRM_UPDATE_PHONE =
      '/rider/rider/profile/phone'; // (PATCH)
  static const String UPDATE_RIDER_PROFILE = '/rider/rider/profile'; // (POST)

  /// .......///////...// SEND PACKAGE ENDPOINTS .......///////./....//
  static const String GET_ACTIVE_PACKAGES = '/rider/package'; // (GET)
  static const String ACCEPT_PACKAGE_DELIVERY =
      '/rider/package/{id}/accept'; // (POST)
  static const String DeCLINE_PACKAGE_DELIVERY =
      '/rider/package/{id}/decline'; // (POST)
  static const String UPDATE_PACKAGE_LOCATION =
      '/rider/package/{id}/location'; // (POST)
  static const String CONFIRM_RECEIVED_PACKAGE =
      '/rider/package/{id}/confirm-pickup'; // (POST)
  static const String CONFIRM_PACKAGE_DELIVERED =
      '/rider/package/{id}/delivered'; // (POST)

  /// .......///////...// HISTORY ENDPOINTS .......///////./....//
  static const String GET_ALL_HISTORY = '/rider/history'; // (GET)

  /// .......///////...// NOTIFICATION ENDPOINTS .......///////./....//

  /// .......///////...// INSIGHTS ENDPOINTS .......///////./....//
  static const String GET_INSIGHT = '/rider/insight'; // (GET)

  //.....///.....// UTILITIES ENDPOINTS ....////././//...//
  static const String COUNTRIES = '/utilities/countries'; // (GET)
  static const String GET_BANK_ACCOUNT =
      '/rider/rider/account-information'; // (GET)
  static const String STORE_BANK_ACCOUNT =
      '/rider/rider/account-information'; // (POST)
  static const String DOCUMENT_VERIFICATION =
      '/rider/rider/verification-document'; // (POST)
  static const String BANKS = '/banks'; // (GET)
  static const String TOGGLE_RIDER_AVAILABILITY =
      '/rider/rider/availability'; // (PATCH)
  static const String DEPOSIT_CASH = '/rider/deposit'; // (POST)
  static const String CLAIM_BONUS = '/rider/claim-bonus'; // (GET)
  static const String GET_REVIEWS = '/rider/reviews'; // (GET)
  static const String CONTACT_SUPPORT = '/rider/contact-support'; // (GET)
}
