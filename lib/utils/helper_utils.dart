import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/theme/theme.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:path_provider/path_provider.dart';

typedef _PlatformDynamicColor = Tuple2<Color?, Color?>? Function();

// ignore: non_constant_identifier_names
final App = Utils.instance;

final log = Utils.logger;

StackRouter get navigator => App.router;

StackRouter innerNavigator(BuildContext context) => context.router;

/// Returns true if T1 and T2 are identical types.
///
/// This will be false if one type is a derived type of the other.
bool typesEqual<T1, T2>() => T1 == T2;

bool isNullable<U>() => null is U;

// ignore: avoid_positional_boolean_parameters
void throwIf(bool condition, Object error) {
  if (condition) throw error;
}

// ignore: avoid_positional_boolean_parameters
void throwIfNot(bool condition, Object error) {
  if (!condition) throw error;
}

class Utils {
  /// Create Singleton start ///
  static final Utils _singleton = Utils._();

  double get sidePadding => shortest * 0.05;
  double get topPadding => shortest * 0.03;
  static const double distanceKMConverter = 0.001;
  static const Widget nothing = SizedBox.shrink();
  static const Duration autoRetrievalTimeout = Duration(seconds: 40);
  static const double buttonRadius = 8.0;
  static const double cardRadius = 12.0;
  static const BorderRadius cardBorderRadius =
      BorderRadius.all(Radius.circular(cardRadius));
  static const String currency = '₺';
  // static const String NGN = 'NGN';
  static const double inputBorderRadius = 8.0;
  static late Utils instance;
  static const double labelLetterSpacing = 0.60;
  static const double letterSpacing = 0.8;
  static const EdgeInsets inputPadding = EdgeInsets.symmetric(
    vertical: 14.0,
    horizontal: 12.0,
  );
  static Logger logger = Logger(
    filter: env.flavor == BuildFlavor.dev
        ? DevelopmentFilter()
        : ProductionFilter(),
    printer: HybridPrinter(PrettyPrinter(
      methodCount: 3, // number of method calls to be displayed
      errorMethodCount: 10, // number of method calls if stacktrace is provided
      lineLength: 100, // width of the output
      colors: true, // Colorful log messages
      printEmojis: true,
      printTime: false,
    )),
  );

  static ScrollPhysics physics =
      Theme.of(navigator.navigatorKey.currentContext!).platform.fold(
            material: () => const ClampingScrollPhysics(),
            cupertino: () => const BouncingScrollPhysics(),
          );
  static const Duration willPopTimeout = Duration(seconds: 3);

  late BuildContext context;
  bool isInitialized = false;
  late AppRouter router;
  final DateTime today = DateTime.now();

  factory Utils() => _singleton;

  Utils._();

  static Future<Directory?> get rootDir async =>
      await getExternalStorageDirectory();

  static Future<Directory> get cacheDir async => kIsWeb
      ? HydratedStorage.webStorageDirectory
      : await getTemporaryDirectory();

  static Future<Directory> get documentsDir async =>
      await getApplicationDocumentsDirectory();

  // End ////

  Color? get backgroundOverlayColor => App.theme.primaryColor.withOpacity(0.91);

  Widget get chasingDots => SpinKitChasingDots(
        color: Theme.of(context).colorScheme.secondary,
        size: 35.0,
        duration: const Duration(milliseconds: 1400),
      );

  Widget get circularLoadingOverlay => Container(
        color: App.theme.primaryColor.withOpacity(0.65),
        child: Center(
          child: CircularProgressBar.adaptive(
            width: width * 0.08,
            height: width * 0.08,
            strokeWidth: 3.5,
            radius: 14,
          ),
        ),
      );

  /// Returns the current route path
  String get currentRoute => router.current.name;

  /// Returns the current route path
  String get rootRoute => router.root.stackData.first.name;

  /// The current [WidgetsBinding], if one has been created.
  WidgetsBinding? get engine => WidgetsBinding.instance;

  /// give access to FocusScope.of(context)
  FocusNode? get focusScope => FocusManager.instance.primaryFocus;

  /// give access to Immutable MediaQuery.of(context).size.height
  double get height => MediaQuery.of(context).size.height;

  /// give access to Theme.of(context).iconTheme.color
  Color? get iconColor => theme.iconTheme.color;

  /// Check if dark mode theme is enable on platform on android Q+
  bool get isPlatformDarkMode =>
      (mediaQuery!.platformBrightness == Brightness.dark);

  GlobalKey<NavigatorState> get key => router.navigatorKey;

  static const Duration crossFadeDuration = Duration(milliseconds: 400);

  static Widget crossFadeLayoutBuilder(
    Widget firstChild,
    Key firstChildKey,
    Widget secondChild,
    Key secondChildKey,
  ) {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      alignment: Alignment.center,
      children: [
        Positioned(
          key: secondChildKey,
          top: 0,
          left: 0,
          right: 0,
          child: secondChild,
        ),
        //
        Positioned(
          key: firstChildKey,
          child: firstChild,
        ),
      ],
    );
  }

  Widget get loadingHourGlass => SpinKitPouringHourGlass(
        color: App.resolveColor(
          Palette.accentColor,
          dark: Colors.white70,
        )!,
        size: 34.0,
        duration: const Duration(milliseconds: 1100),
      );

  Widget get loadingSpinningLines => SpinKitSpinningLines(
        color: App.resolveColor(
          Palette.accentColor,
          dark: Colors.white70,
        )!,
        size: 34.0,
        itemCount: 6,
        duration: const Duration(milliseconds: 900),
      );

  Widget get loadingWave => SpinKitWave(
        color: App.resolveColor(
          Palette.accentColor,
          dark: Colors.white70,
        )!,
        size: 35.0,
        duration: const Duration(milliseconds: 1200),
        itemCount: 8,
        type: SpinKitWaveType.center,
      );

  Color? resolveColor(
    Color? light, {
    Color? dark,
    _PlatformDynamicColor? material,
    _PlatformDynamicColor? cupertino,
  }) =>
      platform.fold(
        material: () => foldTheme(
            light: () => material?.call()?.value1 ?? light,
            dark: () => material?.call()?.value2 ?? dark ?? light),
        cupertino: () => CupertinoDynamicColor.resolve(
          CupertinoDynamicColor.withBrightness(
            color: cupertino?.call()?.value1 ??
                light ??
                Utils.computeLuminance(Palette.primaryColor),
            darkColor: cupertino?.call()?.value2 ??
                dark ??
                light ??
                Utils.computeLuminance(Palette.secondaryColor),
          ),
          context,
        ),
      );

  /// give access to Immutable MediaQuery.of(context).size.shortestSide
  double get longest => MediaQuery.of(context).size.longestSide;

  /// give access to MediaQuery.of(context)
  MediaQueryData? get mediaQuery => MediaQuery.of(context);

  /// give access to Immutable MediaQuery.of(context).size.shortestSide
  double get shortest => MediaQuery.of(context).size.shortestSide;

  /// give access to TextTheme.of(context)
  TextTheme? get textTheme => theme.textTheme;

  /// give access to Theme.of(context)
  ThemeData get theme => Theme.of(context);

  /// give access to the current platform
  TargetPlatform get platform => Theme.of(context).platform;

  /// give access to Immutable MediaQuery.of(context).size.width
  double get width => MediaQuery.of(context).size.width;

  TextStyle get titleStyle => TextStyle(
      fontWeight: platform.fold(
        material: () => FontWeight.w800,
        cupertino: () => FontWeight.w700,
      ),
      fontSize: 25.0.sp,
      letterSpacing: Utils.letterSpacing);

  static Widget circularLoader({
    double? width,
    double? height,
    double? stroke,
    double? radius,
    Color? color,
  }) =>
      CircularProgressBar.adaptive(
        width: width ?? App.width * 0.08,
        height: height ?? App.width * 0.08,
        strokeWidth: stroke ?? 3.5,
        radius: radius ?? 14,
        color: App.resolveColor(color),
      );

  Widget loadingOverlay([Widget? child, Color? color]) => Container(
        color: color ??
            App.resolveColor(Palette.primaryColor.shade300.withOpacity(0.65)),
        child: Center(child: child ?? chasingDots),
      );

  // Helper method to open a Hive Box
  Box<E> box<E>(String name) => Hive.box(name);

  static Widget setup(BuildContext current, AppRouter router, Widget child) {
    var _context = router.navigatorKey.currentContext ?? current;
    // Precache dependencies & images
    precache(_context);
    // forceAppUpdate();
    if (!_singleton.isInitialized) {
      instance = _singleton
        ..context = _context
        ..isInitialized = true;
    }

    // Initialize router
    instance.router = router;

    // Return child
    return child;
  }

  static T? platform_<T>({
    T? material,
    T? cupertino,
  }) {
    if (Platform.isIOS || Platform.isMacOS)
      return cupertino;
    else
      return material;
  }

  static String writeNotNull(String other) {
    if (other.trim().isNotEmpty) return other;
    return '';
  }

  static DateTime getDate(DateTime d) =>
      DateTime(d.year, d.month, d.day, d.hour, d.minute, d.second);

  static T foldTheme<T>({
    required T Function() light,
    T Function()? dark,
    BuildContext? context,
  }) {
    var isDarkMode =
        BlocProvider.of<ThemeCubit>(context ?? App.context).isDarkMode ||
            ((MediaQuery.of(context ?? App.context).platformBrightness ==
                Brightness.dark));

    return env.flavor.fold(
      dev: () {
        if (isDarkMode) {
          if (dark == null) return light.call();
          return dark.call();
        } else
          return light.call();
      },
      prod: () => light.call(),
    );
  }

  static Color computeLuminance(Color color) =>
      color.computeLuminance() > 0.5 ? Colors.black : Colors.white;

  static Future<Color> computeFromImage(
    ImageProvider provider, {
    required Size constraints,
    Size? region,
    Color defaultIfNull = Palette.accentColor,
    int maximumColorCount = 16,
  }) async {
    try {
      var paletteGenerator = await PaletteGenerator.fromImageProvider(
        provider,
        filters: [],
        size: constraints,
        region: region?.let((it) => Offset.zero & it),
        maximumColorCount: maximumColorCount,
      );

      var dominantColor = paletteGenerator.dominantColor?.color;

      return dominantColor?.let((it) => computeLuminance(it)) ?? defaultIfNull;
    } catch (e) {
      log.e(e);

      return defaultIfNull;
    }
  }

  Completer<ui.Image> getImageDimensions(ImageProvider provider) {
    var completer = Completer<ui.Image>();

    provider.resolve(const ImageConfiguration()).addListener(
          ImageStreamListener((info, _) => completer.complete(info.image)),
        );
    return completer;
  }

  /// Precache Application Images..ensures faster image rendering.
  static Future<void> precache(BuildContext context) async {
    AppAssets.images.forEach(
      (img) async => await precacheImage(AssetImage(img), context),
    );

    AppAssets.svgs.forEach(
      (path) async => await precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, path),
        context,
      ),
    );
  }

  static String hhmmss([Duration duration = Duration.zero]) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    var twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    var twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${duration.inHours > 0 ? twoDigits(duration.inHours).pad(":") : ''}"
        "${twoDigitMinutes.pad(":")}"
        '$twoDigitSeconds';
  }

  static String? hoursAndMins(Duration duration, {bool short = true}) {
    final days = duration.inDays;
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    String? time;

    if (days > 0) {
      if (time == null)
        time = '$days ${'day'.pluralize(days)} ';
      else
        time += '$days ${'day'.pluralize(days)} ';
    } else if (hours > 0) {
      if (time == null)
        time = '$hours ${'hour'.pluralize(hours)} ';
      else
        time += '$hours ${'hour'.pluralize(hours)} ';
    }
    if (minutes > 0) {
      if (time == null)
        time = '$minutes ${'${short ? 'min' : 'minute'}'.pluralize(minutes)}';
      else
        time += '$minutes ${'${short ? 'min' : 'minute'}'.pluralize(minutes)}';
    }

    if ((minutes <= 0 && hours <= 0)) {
      if (time == null)
        time = '$seconds ${'${short ? 'sec' : 'second'}'.pluralize(seconds)}';
      else
        time += '$seconds ${'${short ? 'sec' : 'second'}'.pluralize(seconds)}';
    }

    return time;
  }

  static Future<void> platformPop({bool animated = true}) async {
    await SystemChannels.platform
        .invokeMethod<void>('SystemNavigator.pop', animated);
  }

  Widget positionedLoader(
    BuildContext context, [
    bool overlay = true,
    Widget? loader,
  ]) {
    final _keyboardClosed = MediaQuery.of(context).viewInsets.bottom == 0;
    double? _topHeight;
    try {
      _topHeight = Scaffold.of(context).appBarMaxHeight;
    } catch (e) {
      _topHeight = kToolbarHeight;
    }

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: _topHeight ?? kToolbarHeight),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment:
              _keyboardClosed ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [loader ?? circularLoader()],
        ),
      ),
    );
  }

  /// As a rule, Flutter knows which widget to update,
  /// so this command is rarely needed. We can mention situations
  /// where you use const so that widgets are not updated with setState,
  /// but you want it to be forcefully updated when an event like
  /// language change happens. using context to make the widget dirty
  /// for performRebuild() is a viable solution.
  /// However, in situations where this is not possible, or at least,
  /// is not desired by the developer, the only solution for updating
  /// widgets that Flutter does not want to update is to use reassemble
  /// to forcibly rebuild all widgets. Attention: calling this function will
  /// reconstruct the application from the sketch, use this with caution.
  /// Your entire application will be rebuilt, and touch events will not
  /// work until the end of rendering.
  Future<void> forceAppUpdate() async {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
    // await engine.reassembleApplication();
  }

  PageRoute<T> adaptivePageRoute<T>({
    String? title,
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(
            title: title,
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          )
        : MaterialPageRoute(
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          );
  }

  Future<U> showAdaptiveDatePicker<U>(
    BuildContext context, {
    DateTime? selectedDate,
    DateTime? firstDate,
    DateTime? lastDate,
    DatePickerMode initialDatePickerMode = DatePickerMode.year,
    String? confirmText,
    String? cancelText,
    String? fieldHintText,
    String? fieldLabelText,
    String? helpText,
    Locale? locale,
    DateTime? currentDate,
    String? errorFormatText,
    String? errorInvalidText,
    Widget Function(BuildContext, Widget?)? builder,
    bool Function(DateTime)? selectableDayPredicate,
    required void Function(DateTime?) onChanged,
  }) async {
    // Set defaults
    firstDate ??= DateTime(1910);
    lastDate ??= App.today;
    selectedDate ??= lastDate;

    switch (theme.platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return showCupertinoDatePicker(
          context,
          selectedDate: selectedDate,
          firstDate: firstDate,
          lastDate: lastDate,
          confirmText: confirmText,
          cancelText: cancelText,
          fieldHintText: fieldHintText,
          fieldLabelText: fieldLabelText,
          helpText: helpText,
          locale: locale,
          currentDate: currentDate,
          errorFormatText: errorFormatText,
          errorInvalidText: errorInvalidText,
          builder: builder,
          onChanged: onChanged,
        ) as U;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        final date = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: firstDate,
          lastDate: lastDate,
          confirmText: confirmText,
          cancelText: cancelText,
          fieldHintText: fieldHintText,
          fieldLabelText: fieldLabelText,
          initialDatePickerMode: initialDatePickerMode,
          helpText: helpText,
          locale: locale,
          currentDate: currentDate,
          errorFormatText: errorFormatText,
          errorInvalidText: errorInvalidText,
          builder: builder,
          selectableDayPredicate: selectableDayPredicate,
        );
        // Fire callback after selection
        return onChanged(date) as U;
    }
  }

  Future<U> showCupertinoDatePicker<U>(
    BuildContext context, {
    DateTime? selectedDate,
    DateTime? firstDate,
    DateTime? lastDate,
    String? confirmText,
    String? cancelText,
    String? fieldHintText,
    String? fieldLabelText,
    String? helpText,
    Locale? locale,
    DateTime? currentDate,
    String? errorFormatText,
    String? errorInvalidText,
    Color? backgroundColor,
    bool use24hFormat = false,
    Function(BuildContext, Widget)? builder,
    required void Function(DateTime) onChanged,
  }) async {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 3,
          color: Theme.of(context).primaryColor,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            backgroundColor: backgroundColor,
            onDateTimeChanged: onChanged,
            initialDateTime: selectedDate,
            minimumDate: firstDate,
            maximumDate: lastDate,
            use24hFormat: use24hFormat,
          ),
        );
      },
    ) as U;
  }

  Future<T> showAdaptiveBottomSheet<T>(
    BuildContext context, {
    required WidgetBuilder builder,
    Radius topRadius = const Radius.circular(24),
    bool isDismissible = true,
    Color? backgroundColor,
    Color? barrierColor,
    double? elevation,
    bool enableDrag = true,
    bool useRootNavigator = true,
    ShapeBorder shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    bool expand = false,
    bool bounce = false,
    Duration? duration,
  }) async {
    return await Theme.of(context).platform.fold(
          material: () async => await showMaterialModalBottomSheet(
            context: context,
            builder: builder,
            isDismissible: isDismissible,
            backgroundColor: backgroundColor,
            barrierColor: barrierColor,
            elevation: elevation,
            enableDrag: enableDrag,
            shape: shape,
            expand: expand,
            bounce: bounce,
            duration: duration,
            useRootNavigator: useRootNavigator,
          ) as T,
          cupertino: () async => await showCupertinoModalBottomSheet(
            context: context,
            builder: builder,
            isDismissible: isDismissible,
            backgroundColor: backgroundColor,
            barrierColor: barrierColor,
            elevation: elevation,
            enableDrag: enableDrag,
            shape: shape,
            expand: expand,
            bounce: bounce,
            topRadius: topRadius,
            duration: duration,
            useRootNavigator: useRootNavigator,
          ) as T,
        );
  }

  FutureOr<U?> showAlertDialog<U>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    Color? barrierColor,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  }) async {
    if (Platform.isIOS || Platform.isMacOS)
      return (await showCupertinoDialog<U?>(
        context: context,
        builder: builder,
        useRootNavigator: useRootNavigator,
        barrierDismissible: barrierDismissible,
        routeSettings: routeSettings,
      ));
    return (await showDialog<U?>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    ));
  }

  int calculateAge(DateTime birthDate) {
    var currentDate = today;
    var age = currentDate.year - birthDate.year;
    var month1 = currentDate.month;
    var month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      var day1 = currentDate.day;
      var day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  Future<void> report<T>({
    required T exception,
    required StackTrace stack,
    bool printDetails = false,
    String reason = 'Non-fatal Try/Catch Exception',
  }) async {
    if (getIt<FirebaseCrashlytics>().isCrashlyticsCollectionEnabled)
      await getIt<FirebaseCrashlytics>().recordError(
        exception,
        stack,
        printDetails: printDetails,
        reason: reason,
      );
  }
}
