mixin EndPoints {
  static const String APP_DOMAIN = 'api.manuelsnr.design';
  static const String API_ENDPOINT = '/api/v1';
  static const String BASE_URL = 'https://$APP_DOMAIN$API_ENDPOINT';
  static const String PUSHER_AUTH_URL =
      'https://api.manuelsnr.design/broadcasting/auth';
  static const String SLEEP = '/sleep';

  //.....///.....// AUTHENTICATION ENDPOINTS ....////././//...//
  static const String LOGIN = '/auth/login';
  static const String REGISTER = '/auth/register';
  static const String LOGOUT = '/auth/logout';
  static const String RESEND_PHONE_VERIFICATION = '/auth/verify/phone/resend';
  static const String CONFIRM_PHONE_VERIFICATION = '/auth/verify/phone';
  static const String SEND_PASSWORD_RESET_MESSAGE = '/auth/forgot-password';
  static const String CONFIRM_PASSWORD_RESET = '/auth/reset-password';
  static const String GOOGLE_SIGNIN = '/auth/google/authenticate';
  static const String FACEBOOK_SIGNIN = '/auth/facebook/authenticate';
  static const String APPLE_SIGNIN = '/auth/apple/authenticate';

  /// .......///////...// USER ENDPOINTS .......///////./....//
  static const String GET_USER = '/user';
  static const String UPDATE_PASSWORD = '/user/password'; // (PATCH)
  static const String UPDATE_PHONE = '/user/profile/phone'; // (POST)
  static const String CONFIRM_UPDATE_PHONE = '/user/profile/phone'; // (PATCH)
  static const String UPDATE_USER_PROFILE = '/user/profile'; // (POST)

  /// .......///////...// ADDRESS ENDPOINTS .......///////./....//
  static const String GET_ALL_ADDRESSES = '/user/address';
  static const String GET_SINGLE_ADDRESS = '/user/address/{id}';
  static const String STORE_AN_ADDRESS = '/user/address';
  static const String UPDATE_AN_ADDRESS = '/user/address/{id}';
  static const String DELETE_AN_ADDRESS = '/user/address/{id}';
  static const String SET_PRIMARY_ADDRESS = '/user/address/{id}/primary';

  /// .......///////...// CARD ENDPOINTS .......///////./....//
  static const String GET_ALL_DEBIT_CARDS = '/cards';
  static const String STORE_A_DEBIT_CARD = '/cards';
  static const String GET_SINGLE_CARD = '/cards/{id}';
  static const String VERIFY_A_DEBIT_CARD = '/cards/verify';
  static const String INITIATE_CARD_CHARGE = '/cards/verify/initiate';
  static const String DELETE_USER_CARD = '/cards/{id}';

  /// .......///////...// CARD ENDPOINTS .......///////./....//
  static const String GET_RESTAURANTS = '/restaurant';
  static const String GET_SINGLE_RESTAURANTS = '/restaurant/{id}';
  static const String GET_RESTAURANT_REVIEWS = '/restaurant/{id}/reviews';
  static const String GET_RESTAURANT_MENU = '/restaurant/{id}/menus';
  static const String ADD_FAVORITE_RESTAURANT = '/restaurant/{id}/favourite';
  static const String REMOVE_FAVORITE_RESTAURANT =
      '/restaurant/{id}/unfavourite';
  static const String GET_SINGLE_RESTAURANT_MENU =
      '/restaurant/{restaurantId}/menus/{menuId}';

  //.....///.....// UTILITIES ENDPOINTS ....////././//...//
  static const String COUNTRIES = '/utilities/countries';
  static const String CATEGORIES = '/utilities/menu-categories';
  static const String SPECIALITIES = '/utilities/specialities';
  static const String BANKS = '/banks';
}
