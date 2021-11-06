import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum OTPVerificationType { phoneNumber, newPhoneNumber }

/// A stateless widget to render OTPVerificationScreen.
class OTPVerificationScreen extends StatelessWidget with AutoRouteWrapper {
  final OTPVerificationType? type;

  const OTPVerificationScreen({
    Key? key,
    this.type = OTPVerificationType.phoneNumber,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..init(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.foldCode(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (th) => th?.response.map(
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(
              message: s.message,
              listener: (_) => _?.fold(
                dismissed: () => s.pop
                    ? App.rootRoute == DashboardRoute.name
                        ? navigator.pop()
                        : navigator.pushAndPopUntil(const DashboardRoute(),
                            predicate: (_) => false)
                    : null,
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  String maskPhoneNumber(AuthState s) {
    return s.rider.phone.getOrNull?.let((it) {
          final dialCodeLength = s.selectedCountry?.dialCode?.length ?? 0;
          final count = it.length;

          final prefix = it.substring(0, dialCodeLength + 2);
          final suffix = it.substring(count - 3);
          final maskCount = count - (prefix.length + suffix.length);
          return prefix + ('*' * maskCount) + suffix;
        }) ??
        'your mobile number';
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.white),
      child: AdaptiveScaffold(
        body: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          controller: ScrollController(),
          physics: Utils.physics,
          padding: EdgeInsets.symmetric(
            horizontal: App.sidePadding,
          ).copyWith(top: App.longest * 0.02),
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
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 26.sp,
                          color: Palette.accentColor.shade400,
                        ),
                  ),
                  //
                  VerticalSpace(height: 0.03.sw),
                  //
                  BlocBuilder<AuthCubit, AuthState>(
                    buildWhen: (p, c) => p.rider.phone != c.rider.phone,
                    builder: (c, s) => AdaptiveText(
                      'We sent a unique code to '
                      '${maskPhoneNumber(s)}, kindly enter the code below.',
                      softWrap: true,
                      maxLines: 3,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17.sp,
                      ),
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.1.sw),
                  //
                  Material(
                    type: MaterialType.transparency,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.07.sw),
                      child: PinInputWidget<AuthCubit, AuthState>(
                        length: AuthState.OTP_CODE_LENGTH,
                        validate: (s) => s.validate,
                        disabled: (s) => s.isLoading,
                        controller: (s) => TextEditingController(
                          text: s.code.getOrEmpty,
                        ),
                        cursorColor: Utils.foldTheme(
                          light: () => null,
                          dark: () => Colors.white,
                        ),
                        keyboardType: TextInputType.text,
                        onChanged: context.read<AuthCubit>().otpCodeChanged,
                        onCompleted: (_) => type?.fold(
                          phone: () => c.read<AuthCubit>().verifyPhone,
                          newPhone: () =>
                              c.read<AuthCubit>().confirmPhoneUpdate,
                        ),
                        onSubmitted: (_) => type?.fold(
                          phone: () => c.read<AuthCubit>().verifyPhone,
                          newPhone: () =>
                              c.read<AuthCubit>().confirmPhoneUpdate,
                        ),
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
                  VerticalSpace(height: 0.06.sw),
                  //
                  Align(
                    alignment: Alignment.center,
                    child: CountdownWidget(
                      duration: env.flavor.fold(
                        dev: () => const Duration(seconds: 2),
                        prod: () => const Duration(minutes: 2, seconds: 3),
                      ),
                      child: (callback) => GestureDetector(
                        onTap: () async {
                          await type?.fold(
                            phone: () => c.read<AuthCubit>().resendPhoneOTP(),
                            newPhone: () =>
                                c.read<AuthCubit>().sendPhoneUpdateOTP(false),
                          );
                          callback();
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
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.07.sw),
                  //
                  BlocBuilder<AuthCubit, AuthState>(
                    buildWhen: (p, c) => p.isLoading != c.isLoading,
                    builder: (c, s) => Hero(
                      tag: Const.authButtonHeroTag,
                      child: AppButton(
                        text: 'Verify',
                        isLoading: s.isLoading,
                        fontWeight: FontWeight.w700,
                        onPressed: type?.fold(
                          phone: () => c.read<AuthCubit>().verifyPhone,
                          newPhone: () =>
                              c.read<AuthCubit>().confirmPhoneUpdate,
                        ),
                      ),
                    ),
                  ),
                  //
                  env.flavor.fold(
                    dev: () => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalSpace(height: 0.04.sw),
                        //
                        AdaptiveButton(
                          text: 'Skip for Now',
                          textColor: App.resolveColor(
                            Palette.accentColor,
                            dark: Colors.white,
                          ),
                          textStyle: const TextStyle(
                            letterSpacing: Utils.labelLetterSpacing,
                          ),
                          backgroundColor: Colors.transparent,
                          splashColor: Utils.foldTheme(
                            light: () => Colors.grey.shade200,
                            dark: () => Colors.grey.shade800,
                          ),
                          side: const BorderSide(color: Palette.accentColor),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    prod: () => Utils.nothing,
                  ),
                  //
                  VerticalSpace(height: 0.04.sw),
                  //
                  type!.fold(
                    phone: () => Utils.nothing,
                    newPhone: () => Hero(
                      tag: Const.loginAndSignupSwitchTag,
                      child: Material(
                        type: MaterialType.transparency,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: AdaptiveText.rich(
                              TextSpan(children: [
                                const TextSpan(text: 'Wrong mobile number? '),
                                TextSpan(
                                  text: 'Try again',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = navigator.pop,
                                  style: TextStyle(
                                    color: Utils.foldTheme(
                                      context: context,
                                      light: () => Palette.accentColor,
                                      dark: () => Palette.accentColor.shade100,
                                    ),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ]),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: Utils.labelLetterSpacing,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  VerticalSpace(height: App.sidePadding),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension on OTPVerificationType {
  T fold<T>({
    required T Function() phone,
    T Function()? newPhone,
  }) {
    switch (this) {
      case OTPVerificationType.phoneNumber:
        return phone.call();
      case OTPVerificationType.newPhoneNumber:
        return newPhone?.call() ?? phone.call();
    }
  }
}
