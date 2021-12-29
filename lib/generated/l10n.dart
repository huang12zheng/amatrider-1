// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `About AmatRider`
  String get aboutAmatRider {
    return Intl.message(
      'About AmatRider',
      name: 'aboutAmatRider',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Accept Request`
  String get acceptRequestTitle {
    return Intl.message(
      'Accept Request',
      name: 'acceptRequestTitle',
      desc: '',
      args: [],
    );
  }

  /// `Account Name`
  String get accountName {
    return Intl.message(
      'Account Name',
      name: 'accountName',
      desc: '',
      args: [],
    );
  }

  /// `Account Number`
  String get accountNumber {
    return Intl.message(
      'Account Number',
      name: 'accountNumber',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Active Orders`
  String get activeOrders {
    return Intl.message(
      'Active Orders',
      name: 'activeOrders',
      desc: '',
      args: [],
    );
  }

  /// `Active Requests`
  String get activeRequests {
    return Intl.message(
      'Active Requests',
      name: 'activeRequests',
      desc: '',
      args: [],
    );
  }

  /// `Activity`
  String get activity {
    return Intl.message(
      'Activity',
      name: 'activity',
      desc: '',
      args: [],
    );
  }

  /// `All Time`
  String get allTime {
    return Intl.message(
      'All Time',
      name: 'allTime',
      desc: '',
      args: [],
    );
  }

  /// `Bank Account Information`
  String get bankAccountInformation {
    return Intl.message(
      'Bank Account Information',
      name: 'bankAccountInformation',
      desc: '',
      args: [],
    );
  }

  /// `Bank Name`
  String get bankName {
    return Intl.message(
      'Bank Name',
      name: 'bankName',
      desc: '',
      args: [],
    );
  }

  /// `Bank Transfer`
  String get bankTransfer {
    return Intl.message(
      'Bank Transfer',
      name: 'bankTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Card (POS)`
  String get cardPOS {
    return Intl.message(
      'Card (POS)',
      name: 'cardPOS',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Contact Support`
  String get contactSupport {
    return Intl.message(
      'Contact Support',
      name: 'contactSupport',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueTxt {
    return Intl.message(
      'Continue',
      name: 'continueTxt',
      desc: '',
      args: [],
    );
  }

  /// `Decline`
  String get decline {
    return Intl.message(
      'Decline',
      name: 'decline',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Location`
  String get deliveryLocationText {
    return Intl.message(
      'Delivery Location',
      name: 'deliveryLocationText',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Download AmatNow`
  String get downloadAmatNow {
    return Intl.message(
      'Download AmatNow',
      name: 'downloadAmatNow',
      desc: '',
      args: [],
    );
  }

  /// `Your one stop shop for African meals.`
  String get downloadAmatNowDesc {
    return Intl.message(
      'Your one stop shop for African meals.',
      name: 'downloadAmatNowDesc',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Failed`
  String get failed {
    return Intl.message(
      'Failed',
      name: 'failed',
      desc: '',
      args: [],
    );
  }

  /// `French`
  String get french {
    return Intl.message(
      'French',
      name: 'french',
      desc: '',
      args: [],
    );
  }

  /// `Go Back`
  String get goBack {
    return Intl.message(
      'Go Back',
      name: 'goBack',
      desc: '',
      args: [],
    );
  }

  /// `Hello {name}!`
  String greeting(String name) {
    return Intl.message(
      'Hello $name!',
      name: 'greeting',
      desc: '',
      args: [name],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `A Good Day To Make Deliveries.`
  String get homePageTxt2 {
    return Intl.message(
      'A Good Day To Make Deliveries.',
      name: 'homePageTxt2',
      desc: '',
      args: [],
    );
  }

  /// `Inactive`
  String get inActive {
    return Intl.message(
      'Inactive',
      name: 'inActive',
      desc: '',
      args: [],
    );
  }

  /// `In Review`
  String get inReview {
    return Intl.message(
      'In Review',
      name: 'inReview',
      desc: '',
      args: [],
    );
  }

  /// `Claim Bonus`
  String get insightBonusAlertConfirmBtn {
    return Intl.message(
      'Claim Bonus',
      name: 'insightBonusAlertConfirmBtn',
      desc: '',
      args: [],
    );
  }

  /// `Bonus of {amount} would be deposited into your account.`
  String insightBonusAlertContent(String amount) {
    return Intl.message(
      'Bonus of $amount would be deposited into your account.',
      name: 'insightBonusAlertContent',
      desc: '',
      args: [amount],
    );
  }

  /// `Total Cash at Hand`
  String get insightCashAtHand {
    return Intl.message(
      'Total Cash at Hand',
      name: 'insightCashAtHand',
      desc: '',
      args: [],
    );
  }

  /// `Claim Bonus`
  String get insightClaimBonus {
    return Intl.message(
      'Claim Bonus',
      name: 'insightClaimBonus',
      desc: '',
      args: [],
    );
  }

  /// `Current Plan`
  String get insightCurrentPlan {
    return Intl.message(
      'Current Plan',
      name: 'insightCurrentPlan',
      desc: '',
      args: [],
    );
  }

  /// `{days} Days Left`
  String insightDaysLeft(Object days) {
    return Intl.message(
      '$days Days Left',
      name: 'insightDaysLeft',
      desc: '',
      args: [days],
    );
  }

  /// `I have made the deposit`
  String get insightDepositAlertConfirmBtn {
    return Intl.message(
      'I have made the deposit',
      name: 'insightDepositAlertConfirmBtn',
      desc: '',
      args: [],
    );
  }

  /// `Kindly deposit {amount} into the account below.`
  String insightDepositAlertContent(Object amount) {
    return Intl.message(
      'Kindly deposit $amount into the account below.',
      name: 'insightDepositAlertContent',
      desc: '',
      args: [amount],
    );
  }

  /// `Deposit Cash`
  String get insightDepositCash {
    return Intl.message(
      'Deposit Cash',
      name: 'insightDepositCash',
      desc: '',
      args: [],
    );
  }

  /// `Extra Deliveries`
  String get insightExtraDeliveries {
    return Intl.message(
      'Extra Deliveries',
      name: 'insightExtraDeliveries',
      desc: '',
      args: [],
    );
  }

  /// `Insight`
  String get insightTitleText {
    return Intl.message(
      'Insight',
      name: 'insightTitleText',
      desc: '',
      args: [],
    );
  }

  /// `In Transit`
  String get inTransit {
    return Intl.message(
      'In Transit',
      name: 'inTransit',
      desc: '',
      args: [],
    );
  }

  /// `Invite Friends`
  String get inviteFriends {
    return Intl.message(
      'Invite Friends',
      name: 'inviteFriends',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `menu`
  String get menu {
    return Intl.message(
      'menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `Monthly`
  String get monthly {
    return Intl.message(
      'Monthly',
      name: 'monthly',
      desc: '',
      args: [],
    );
  }

  /// `No, Go Back`
  String get noGoBack {
    return Intl.message(
      'No, Go Back',
      name: 'noGoBack',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Package`
  String get package {
    return Intl.message(
      'Package',
      name: 'package',
      desc: '',
      args: [],
    );
  }

  /// `Paid`
  String get paid {
    return Intl.message(
      'Paid',
      name: 'paid',
      desc: '',
      args: [],
    );
  }

  /// `Pay on delivery with Card`
  String get payOnDeliveryWithCard {
    return Intl.message(
      'Pay on delivery with Card',
      name: 'payOnDeliveryWithCard',
      desc: '',
      args: [],
    );
  }

  /// `Pay on delivery with Cash`
  String get payOnDeliveryWithCash {
    return Intl.message(
      'Pay on delivery with Cash',
      name: 'payOnDeliveryWithCash',
      desc: '',
      args: [],
    );
  }

  /// `Pick Up Location`
  String get pickupLocationText {
    return Intl.message(
      'Pick Up Location',
      name: 'pickupLocationText',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Progress`
  String get progress {
    return Intl.message(
      'Progress',
      name: 'progress',
      desc: '',
      args: [],
    );
  }

  /// `Promotions`
  String get promotions {
    return Intl.message(
      'Promotions',
      name: 'promotions',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating {
    return Intl.message(
      'Rating',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to accept this request?`
  String get requestConfirmTxt {
    return Intl.message(
      'Are you sure you want to accept this request?',
      name: 'requestConfirmTxt',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure? We'll try not show this request again.`
  String get requestDeclineTxt {
    return Intl.message(
      'Are you sure? We\'ll try not show this request again.',
      name: 'requestDeclineTxt',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Submitted`
  String get submitted {
    return Intl.message(
      'Submitted',
      name: 'submitted',
      desc: '',
      args: [],
    );
  }

  /// `Target`
  String get target {
    return Intl.message(
      'Target',
      name: 'target',
      desc: '',
      args: [],
    );
  }

  /// `Total Time`
  String get totalTime {
    return Intl.message(
      'Total Time',
      name: 'totalTime',
      desc: '',
      args: [],
    );
  }

  /// `Turkish`
  String get turkish {
    return Intl.message(
      'Turkish',
      name: 'turkish',
      desc: '',
      args: [],
    );
  }

  /// `Unverified`
  String get unverified {
    return Intl.message(
      'Unverified',
      name: 'unverified',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Verified`
  String get verified {
    return Intl.message(
      'Verified',
      name: 'verified',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message(
      'Warning',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `Yearly`
  String get yearly {
    return Intl.message(
      'Yearly',
      name: 'yearly',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Yes, Accept`
  String get yesAccept {
    return Intl.message(
      'Yes, Accept',
      name: 'yesAccept',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr', countryCode: 'FR'),
      Locale.fromSubtags(languageCode: 'tr', countryCode: 'TR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
