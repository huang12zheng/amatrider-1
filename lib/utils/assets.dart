import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:amatrider/utils/utils.dart';

mixin AppAssets {
  static const ASSETS_DIR = 'assets';
  static const SVG_DIR = '$ASSETS_DIR/svgs';
  static const IMAGES_DIR = '$ASSETS_DIR/images';
  static const VIDEOS_DIR = '$ASSETS_DIR/videos';
  // Sub-folders
  //////////////  IMAGES  ////////////
  static const String ONBOARDING_IMAGES_DIR = '$IMAGES_DIR/onboarding';
  static const String DASHBOARD_IMAGES_DIR = '$IMAGES_DIR/dashboard';

  /////////////  SVGS /////////////
  static const String AUTH_SVG_DIR = '$SVG_DIR/auth';
  static const String ONBOARDING_SVG_DIR = '$SVG_DIR/onboarding';
  static const String DASHBOARD_SVG_DIR = '$SVG_DIR/dashboard';
  static const String INSIGHTS_SVG_DIR = '$DASHBOARD_SVG_DIR/insights';
  static const String AVATAR_IMAGES_DIR = '$DASHBOARD_IMAGES_DIR/avatars';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////
  /// LOGO
  static const String logo = '$IMAGES_DIR/logo/logo.png';

  // ONBOARDING
  static const String splashVideo = '$VIDEOS_DIR/splash_video.mp4';
  static const String onboarding0 = '$ONBOARDING_SVG_DIR/health_options.gif';
  static const String onboarding1 = '$ONBOARDING_SVG_DIR/location_search.svg';
  static const String onboarding2 = '$ONBOARDING_SVG_DIR/delivery_address.gif';

  /// AUTHENTICATION (Login/Signup)
  static const String loginRelaxed = '$AUTH_SVG_DIR/login_relaxed.svg';
  static const String verifyAccount = '$AUTH_SVG_DIR/verify_account.svg';
  static const String forgotPassword = '$AUTH_SVG_DIR/forgot_password_boss.svg';

  /// USER
  static const String user = '$IMAGES_DIR/user.png';
  static const String female = '$IMAGES_DIR/female.png';
  static const String unnamed = '$IMAGES_DIR/unnamed.png';
  static const String avatarImg = '$IMAGES_DIR/avatar_png.png';
  static const String businessManAvatar =
      '$AVATAR_IMAGES_DIR/business_man_avatar.png';
  static const String businessLadyAvatar =
      '$AVATAR_IMAGES_DIR/business_woman_avatar.png';
  static const String femaleAvatar = '$AVATAR_IMAGES_DIR/female_avatar.png';
  static const String dudeAvatar = '$AVATAR_IMAGES_DIR/dude_avatar.png';
  static const String blackAvatar = '$AVATAR_IMAGES_DIR/black-dude.png';
  static const String guestAvatarSvg = '$DASHBOARD_SVG_DIR/guest_user.svg';
  static const String guestAvatarPng = '$DASHBOARD_IMAGES_DIR/guest_user.png';

  /// DASHBOARD
  static const String bottomNavHome = '$DASHBOARD_SVG_DIR/dashboard_home.svg';
  static const String bottomNavDocument =
      '$DASHBOARD_SVG_DIR/dashboard_document.svg';
  static const String bottomNavActivity =
      '$DASHBOARD_SVG_DIR/dashboard_activity.svg';

  static const String slider0 = '$DASHBOARD_IMAGES_DIR/first_home_slider.png';
  static const String slider1 = '$DASHBOARD_IMAGES_DIR/second_home_slider.png';
  static const String slider2 = '$DASHBOARD_IMAGES_DIR/third_home_slider.png';
  static const String request1 = '$DASHBOARD_IMAGES_DIR/request_1.png';
  static const String request2 = '$DASHBOARD_IMAGES_DIR/request_2.png';
  static const String request3 = '$DASHBOARD_IMAGES_DIR/request_3.png';

  static const String timelinePinAsset = '$DASHBOARD_SVG_DIR/timeline_pin.svg';
  static const String _inviteFriends = '$DASHBOARD_SVG_DIR/friendship.svg';

  // EMPTY STATES
  static const String _featherSearch = '$DASHBOARD_SVG_DIR/feather_search.svg';
  static const String _noConnectivity =
      '$DASHBOARD_SVG_DIR/no_connectivity.svg';
  static const String _noHistory = '$DASHBOARD_SVG_DIR/no_history.svg';
  static const String _bigHeart = '$DASHBOARD_SVG_DIR/big_heart.svg';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////
  ///
  static const List<String> images = [
    logo,
    female,
    unnamed,
    user,
    onboarding0,
    onboarding2,
    slider0,
    slider1,
    slider2,
    businessManAvatar,
    businessLadyAvatar,
    femaleAvatar,
    dudeAvatar,
    guestAvatarPng,
  ];

  static const List<String> svgs = [
    loginRelaxed,
    verifyAccount,
    forgotPassword,
    onboarding1,
    guestAvatarSvg,
    _featherSearch,
    _noConnectivity,
    _noHistory,
    timelinePinAsset,
    _inviteFriends,
  ];

  static SvgPicture google = SvgPicture.asset(
    '$AUTH_SVG_DIR/google.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture facebook([Color? color]) => SvgPicture.asset(
        '$AUTH_SVG_DIR/facebook.svg',
        height: 23,
        width: 23,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture apple([Color? color]) => SvgPicture.asset(
        '$AUTH_SVG_DIR/apple.svg',
        height: 22,
        width: 22,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture pdf = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/pdf.svg',
    height: 40,
    width: 40,
    fit: BoxFit.contain,
  );

  static SvgPicture docx = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/docs.svg',
    height: 40,
    width: 40,
    fit: BoxFit.contain,
  );

  static SvgPicture cameraOutlined = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/camera_outlined.svg',
    height: 25,
    width: 25,
    color: Colors.white,
    fit: BoxFit.contain,
  );

  static SvgPicture cameraColored = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/camera_colored.svg',
    height: 25,
    width: 25,
    fit: BoxFit.contain,
  );

  static SvgPicture galleryOutlined = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/gallery_outlined.svg',
    height: 25,
    width: 25,
    color: Colors.white,
    fit: BoxFit.contain,
  );

  static SvgPicture galleryColored = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/gallery_colored.svg',
    height: 25,
    width: 25,
    fit: BoxFit.contain,
  );

  static SvgPicture bell = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/bell.svg',
    height: 20,
    width: 20,
    color: Colors.grey,
    fit: BoxFit.contain,
  );

  static SvgPicture bankBuilding = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/bank-building.svg',
    height: 23,
    width: 23,
    color: App.resolveColor(
      Palette.accentColor,
      dark: Colors.white70,
    ),
    fit: BoxFit.contain,
  );

  static SvgPicture cardFunding = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/fund-with-card.svg',
    height: 23,
    width: 23,
    color: App.resolveColor(
      Palette.accentColor,
      dark: Colors.white70,
    ),
    fit: BoxFit.contain,
  );

  static SvgPicture atm = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/atm.svg',
    height: 23,
    width: 23,
    color: App.resolveColor(
      Palette.accentColor,
      dark: Colors.white70,
    ),
    fit: BoxFit.contain,
  );

  static SvgPicture featherSearch([Size size = const Size(40, 40)]) =>
      SvgPicture.asset(
        _featherSearch,
        height: size.height,
        width: size.width,
        color: App.resolveColor(
          Palette.neutralC7,
          dark: Colors.white70,
        ),
        fit: BoxFit.contain,
      );

  static SvgPicture noConnectivity([Size size = const Size(23, 23)]) =>
      SvgPicture.asset(
        _noConnectivity,
        height: size.height,
        width: size.width,
        color: App.resolveColor(
          Palette.neutralC7,
          dark: Colors.white70,
        ),
        fit: BoxFit.contain,
      );

  static SvgPicture noHistory([Size size = const Size(23, 23)]) =>
      SvgPicture.asset(
        _noHistory,
        height: size.height,
        width: size.width,
        color: App.resolveColor(
          Palette.neutralC7,
          dark: Colors.white70,
        ),
        fit: BoxFit.contain,
      );

  static SvgPicture bigHeart = SvgPicture.asset(
    _bigHeart,
    height: 23,
    width: 23,
    color: App.resolveColor(
      Palette.neutralC7,
      dark: Colors.white70,
    ),
    fit: BoxFit.contain,
  );

  static SvgPicture timelinePin([Color? color]) => SvgPicture.asset(
        timelinePinAsset,
        height: 23,
        width: 23,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture inviteFriends = SvgPicture.asset(
    _inviteFriends,
    fit: BoxFit.contain,
  );
}
