library otp_verification_screen.dart;

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A stateless widget to render OTPVerificationScreen.
class OTPVerificationScreen extends StatefulWidget with AutoRouteWrapper {
  final VoidCallback? onEnter;
  final VoidCallback? onBackPressed;

  const OTPVerificationScreen({Key? key, this.onEnter, this.onBackPressed}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..init(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.fold(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (th) => th?.response.map(
            info: (i) => PopupDialog.info(message: i.message).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show).render(c),
            success: (s) => PopupDialog.success(
              message: s.message,
              listener: (_) => _?.fold(
                dismissed: () => s.pop
                    ? (navigator.stackData.firstOrNone?.name == DashboardRoute.name
                        ? navigator.popUntil((route) => route.settings.name == DashboardRoute.name)
                        : navigator.pushAndPopUntil(const DashboardRoute(), predicate: (_) => false))
                    : null,
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  DateTime _timestampPressed = DateTime.now();
  bool canResendOTPOnLaunch = true;

  final TapGestureRecognizer tapRecognizer = TapGestureRecognizer()..onTap = (() => navigator.replace(const LoginRoute()));

  TapGestureRecognizer changePhoneTap(BuildContext ctx) => TapGestureRecognizer()
    ..onTap = () => App.showAdaptiveBottomSheet(
          ctx,
          elevation: 3.0,
          bounce: true,
          useRootNavigator: false,
          builder: (_) => const PhoneUpdateBottomSheet(),
        );

  String maskPhoneNumber(AuthState s) {
    return s.rider.phone.getOrNull?.let((it) {
          final dialCodeLength = s.selectedCountry?.dialCode?.length ?? 0;
          final count = it.length;

          final prefix = it.substring(0, dialCodeLength + 3);
          final suffix = it.substring(count - 3);
          final maskCount = count - (prefix.length + suffix.length);
          return prefix + ('*' * maskCount) + suffix;
        }) ??
        'your mobile number';
  }

  Future<bool> maybePop() async {
    if (context.watchRouter.canPopSelfOrChildren) return Future.value(true);

    final now = DateTime.now();
    final difference = now.difference(_timestampPressed);
    final _showWarn = difference >= Utils.willPopTimeout;

    setState(() => _timestampPressed = DateTime.now());

    if (_showWarn) {
      await ToastManager.short('Tap again to exit');
      return Future.value(false);
    } else {
      await ToastManager.cancel();
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: maybePop,
      child: AdaptiveScaffold(
        backgroundColor: App.resolveColor(Palette.cardColorLight, dark: Palette.secondaryColor),
        body: Stack(
          children: [
            SingleChildScrollView(
              clipBehavior: Clip.antiAlias,
              controller: ScrollController(),
              physics: Utils.physics,
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: App.longest * 0.02),
              child: SizedBox(
                width: double.infinity,
                child: BlocBuilder<AuthCubit, AuthState>(
                  builder: (c, s) => Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SafeArea(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.04.sw),
                            child: SvgPicture.asset(
                              AppAssets.verifyAccount,
                              width: 0.77.sw,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      //
                      VerticalSpace(height: 0.05.sw),
                      //
                      AdaptiveText(
                        'Verify Phone Number',
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w600,
                        textColor: Palette.accentColor.shade400,
                      ),
                      //
                      0.014.verticalh,
                      //
                      BlocBuilder<AuthCubit, AuthState>(
                        buildWhen: (p, c) => p.rider.phone != c.rider.phone,
                        builder: (c, s) => AdaptiveText.rich(
                          TextSpan(children: [
                            TextSpan(text: 'We sent a unique code to ${maskPhoneNumber(s)}, kindly enter the code below. '),
                            TextSpan(
                              text: 'Change Number',
                              style: const TextStyle(color: Palette.accentColor, fontWeight: FontWeight.w600),
                              recognizer: changePhoneTap(c),
                            ),
                          ]),
                          softWrap: true,
                          fontSize: 17.sp,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      //
                      0.04.verticalh,
                      //
                      Material(
                        type: MaterialType.transparency,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.07.sw),
                          child: PinInputWidget<AuthCubit, AuthState>(
                            length: AuthState.OTP_CODE_LENGTH,
                            validate: (s) => s.validate,
                            disabled: (s) => s.isLoading,
                            controller: (s) => TextEditingController(text: s.code.getOrEmpty),
                            cursorColor: App.resolveColor(null, dark: Colors.white),
                            keyboardType: TextInputType.number,
                            onChanged: context.read<AuthCubit>().otpCodeChanged,
                            onCompleted: (_) => c.read<AuthCubit>().verifyPhone,
                            onSubmitted: (_) => c.read<AuthCubit>().verifyPhone,
                            listenWhen: (p, c) => p.isLoading != c.isLoading,
                            validator: (s) => s.code.value.fold(
                              (f) => f.message,
                              (_) => s.status.fold(
                                () => null,
                                (http) => http?.response.maybeMap(
                                  error: (f) => f.errors?.token?.firstOrNone,
                                  orElse: () => null,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //
                      0.06.verticalh,
                      //
                      BlocBuilder<AuthCubit, AuthState>(
                        buildWhen: (p, c) => p.isLoading != c.isLoading,
                        builder: (c, s) => Hero(
                          tag: Const.authButtonHeroTag,
                          child: AppButton(
                            text: 'Verify',
                            isLoading: s.isLoading,
                            fontWeight: FontWeight.w700,
                            onPressed: c.read<AuthCubit>().verifyPhone,
                          ),
                        ),
                      ),
                      //
                      0.04.verticalh,
                      //
                      Align(
                        alignment: Alignment.center,
                        child: CountdownWidget(
                          duration: env.flavor.fold(
                            dev: () => const Duration(seconds: 2),
                            prod: () => const Duration(minutes: 2, seconds: 3),
                          ),
                          // autostart: canResendOTPOnLaunch,
                          child: (callback) => GestureDetector(
                            onTap: () async {
                              await c.read<AuthCubit>().sendPhoneUpdateOTP(false);
                              callback();
                              // setState(() => canResendOTPOnLaunch = false);
                            },
                            child: IgnorePointer(
                              ignoring: s.isLoading,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AdaptiveText.rich(
                                  TextSpan(children: [
                                    const TextSpan(text: 'Didn’t get the code? '),
                                    //
                                    TextSpan(
                                      text: 'Resend.',
                                      style: TextStyle(
                                        color: Utils.foldTheme(
                                          context: context,
                                          light: () => Palette.accentColor,
                                          dark: () => Palette.accentColor.shade50,
                                        ),
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ]),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //
                      0.04.verticalh,
                    ],
                  ),
                ),
              ),
            ),
            //
            if (navigator.stackData.firstOrNone?.name != DashboardRoute.name)
              Positioned(
                top: 0,
                right: 0,
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.02.w, right: 0.02.w),
                    child: BlocSelector<AuthWatcherCubit, AuthWatcherState, bool>(
                      selector: (s) => s.isLoggingOut,
                      builder: (c, isLoggingOut) => AnimatedVisibility(
                        visible: !isLoggingOut,
                        replacement: App.loadingSpinningLines,
                        child: AppOutlinedButton(
                          text: 'Logout',
                          height: 0.09.sw,
                          width: 0.2.sw,
                          fontSize: 18.sp,
                          cupertinoHeight: 0.045.h,
                          cupertinoWidth: 0.25.w,
                          splashColor: Colors.black.withOpacity(0.09),
                          padding: EdgeInsets.all(0.007.sw),
                          onPressed: () async {
                            // Reset current Index to 0
                            c.read<TabNavigationCubit>().reset();
                            // Signout the authenticated rider
                            await c.read<AuthWatcherCubit>().signOut();
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
