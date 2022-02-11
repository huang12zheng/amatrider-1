library forgot_password_screen.dart;

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/auth/presentation/widgets/reset_pasword_dialog.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

/// A stateless widget to render ForgotPasswordScreen.
class ForgotPasswordScreen extends StatelessWidget with AutoRouteWrapper {
  // static final _controller = TextEditingController();
  static const dropdownBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(Utils.inputBorderRadius),
    bottomLeft: Radius.circular(Utils.inputBorderRadius),
  );

  static const dropdownErrorBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Palette.errorRed, width: 1.5),
    borderRadius: dropdownBorderRadius,
  );

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AuthCubit>(
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
            info: (i) => PopupDialog.error(message: i.message).render(c),
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (p0) => PopupDialog.success(
              message: p0.message,
              listener: (_) => _?.fold(
                dismissed: () => App.showAlertDialog(
                  context: c,
                  barrierDismissible: false,
                  barrierColor: Utils.foldTheme(
                    light: () => Colors.grey.shade800.withOpacity(0.55),
                    dark: () => Colors.white10,
                  ),
                  useRootNavigator: true,
                  builder: (_) => const ResetPaswordDialog(),
                ),
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(implyMiddle: true),
      body: Theme(
        data: Theme.of(context).copyWith(
          scaffoldBackgroundColor: App.resolveColor(
            Palette.cardColorLight,
            dark: Palette.cardColorDark,
          ),
        ),
        child: CustomScrollView(
          clipBehavior: Clip.antiAlias,
          controller: ScrollController(),
          physics: Utils.physics,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: App.sidePadding,
              ).copyWith(top: App.longest * 0.02),
              sliver: SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    SafeArea(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 0.04.sw),
                          child: SvgPicture.asset(
                            AppAssets.forgotPassword,
                            width: 0.72.sw,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.05.sw),
                    //
                    AdaptiveText(
                      'Forgot Password?',
                      fontWeight: FontWeight.w600,
                      fontSize: 26.sp,
                      textColor: Palette.accentColor.shade400,
                    ),
                    //
                    VerticalSpace(height: 0.03.sw),
                    //
                    AdaptiveText(
                      'It\'s totally normal to forget your password. '
                      'Enter your phone number to reset password.',
                      softWrap: true,
                      wrapWords: true,
                      maxLines: 3,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                    ),
                    //
                    VerticalSpace(height: 0.03.sw),
                    //
                    App.platform.fold(
                      material: () => const Hero(
                        tag: Const.emailLabelHeroTag,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextFormInputLabel(text: 'Phone Number'),
                        ),
                      ),
                      cupertino: () => const SizedBox.shrink(),
                    ),
                    //
                    AutofillGroup(child: Form(child: _phoneInput())),
                    //
                    VerticalSpace(height: 0.1.sw),
                    //
                    Align(
                      alignment: Alignment.center,
                      child: BlocBuilder<AuthCubit, AuthState>(
                        builder: (c, s) => CountdownWidget(
                          duration: !s.rider.phone.isValid
                              ? const Duration(seconds: 0)
                              : env.flavor.fold(
                                  dev: () => const Duration(minutes: 1),
                                  prod: () => const Duration(minutes: 2, seconds: 5),
                                ),
                          child: (callback) => Hero(
                            tag: Const.authButtonHeroTag,
                            child: AppButton(
                              text: 'Reset Password',
                              isLoading: s.isLoading,
                              onPressed: () async {
                                final _isSuccessful = await c.read<AuthCubit>().forgotPassword();
                                if (_isSuccessful) callback();
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.04.sw),
                    //
                    AdaptiveButton(
                      text: 'Login',
                      textColor: App.resolveColor(
                        Palette.accentColor,
                        dark: Palette.accentColor.shade300,
                      ),
                      textStyle: const TextStyle(
                        letterSpacing: Utils.labelLetterSpacing,
                      ),
                      backgroundColor: Colors.transparent,
                      splashColor: App.resolveColor(
                        Colors.grey.shade300,
                        dark: Colors.grey.shade700,
                      ),
                      onPressed: () => navigator.pop(),
                    ),
                    //
                    VerticalSpace(height: 0.1.sw),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _phoneInput() => PhoneFormField<AuthCubit, AuthState>(
        disabled: (s) => s.isLoading,
        validate: (s) => s.validate,
        field: (s) => s.rider.phone,
        controller: (s) => s.phoneTextController,
        response: (s) => s.status,
        errorField: (error) => error.errors?.phone,
        onPickerBuilder: (cubit, country) {
          if (cubit.state.selectedCountry == null) cubit.countryChanged(country);
        },
        onCountryChanged: (cubit, country) => cubit.countryChanged(country),
        onChanged: (cubit, str) => cubit.phoneNumberChanged(str),
      );
}
