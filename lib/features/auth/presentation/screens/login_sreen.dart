library login_sreen.dart;

import 'dart:ui';

import 'package:amatrider/core/presentation/widgets/or_widget.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/auth/presentation/widgets/oauth_widgets.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/text_form_input_label.dart';
import 'package:amatrider/widgets/vertical_spacer.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget with AutoRouteWrapper {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.foldCode(
                        is4031: () {
                          WidgetsBinding.instance?.addPostFrameCallback(
                              (_) => navigateToOTPVerification());
                          return false;
                        },
                        is41101: () {
                          WidgetsBinding.instance?.addPostFrameCallback(
                              (_) => navigateToSocials());
                          return false;
                        },
                        orElse: () => false,
                      ),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (th) => th?.response.map(
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(
              duration: env.greetingDuration,
              message: s.message,
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _LoginScreenState extends State<LoginScreen>
    with AutomaticKeepAliveClientMixin<LoginScreen> {
  DateTime _timestampPressed = DateTime.now();

  @override
  bool get wantKeepAlive => true;

  Future<bool> maybePop() async {
    if (!navigator.isRoot) return true;

    final now = DateTime.now();
    final difference = now.difference(_timestampPressed);
    final _showWarn = difference >= Utils.willPopTimeout;

    _timestampPressed = DateTime.now();

    if (_showWarn) {
      await Fluttertoast.showToast(
        msg: 'Tap again to exit',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      return Future.value(false);
    } else {
      await Fluttertoast.cancel();
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return WillPopScope(
      onWillPop: maybePop,
      child: Theme(
        data: Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.white),
        child: AdaptiveScaffold(
          body: CustomScrollView(
            shrinkWrap: true,
            clipBehavior: Clip.antiAlias,
            controller: ScrollController(),
            physics: Utils.physics,
            scrollDirection: Axis.vertical,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding)
                    .copyWith(top: App.longest * 0.02),
                sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    SafeArea(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 0.08.sw),
                          child: SvgPicture.asset(
                            AppAssets.takeAway,
                            height: 0.27.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.05.sw),
                    //
                    Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 27.sp,
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.03.sw),
                  ]),
                ),
              ),
              //
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  Form(
                    key: AuthState.loginFormKey,
                    onChanged: () => Form.of(primaryFocus!.context!)?.save(),
                    child: App.platform.fold(
                      material: () => _MaterialFormLayout(),
                      cupertino: () => _CupertinoFormLayout(),
                    ),
                  ),
                ]),
              ),
              //
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding)
                    .copyWith(top: App.longest * 0.02),
                sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    App.platform.fold(
                      material: () => VerticalSpace(height: 0.07.sw),
                      cupertino: () => VerticalSpace(height: 0.02.sw),
                    ),
                    //
                    BlocSelector<AuthCubit, AuthState, bool>(
                      selector: (s) => s.isLoading,
                      builder: (c, isLoading) => Hero(
                        tag: Const.authButtonHeroTag,
                        child: AppButton(
                          text: 'Login',
                          isLoading: isLoading,
                          onPressed: c.read<AuthCubit>().login,
                        ),
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.06.sw),
                    //
                    const OrWidget(),
                    //
                    VerticalSpace(height: 0.06.sw),
                    //
                    const Hero(
                      tag: Const.oauthBtnHeroTag,
                      child: Center(
                        child: OAuthWidgets(),
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.03.sw),
                    //
                    Hero(
                      tag: Const.loginAndSignupSwitchTag,
                      child: Material(
                        type: MaterialType.transparency,
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: AdaptiveText.rich(
                              TextSpan(children: [
                                const TextSpan(
                                    text: 'Don\'t have an account? '),
                                TextSpan(
                                  text: 'Sign Up',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () =>
                                        navigator.navigate(const SignupRoute()),
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
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400,
                              letterSpacing: Utils.labelLetterSpacing,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.1.sw),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MaterialFormLayout extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MaterialFormLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Material(
            color: Colors.transparent,
            child: Hero(
              tag: Const.emailLabelHeroTag,
              child: TextFormInputLabel(text: 'Email Address'),
            ),
          ),
          //
          EmailFormField<AuthCubit, AuthState>(
            disabled: (s) => s.isLoading,
            validate: (s) => s.validate,
            field: (s) => s.rider.email,
            focus: AuthState.emailFocus,
            next: AuthState.passwordFocus,
            response: (s) => s.status,
            onChanged: (fn, str) => fn.emailChanged(str),
          ),
          //
          VerticalSpace(height: 0.04.sw),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Material(
                color: Colors.transparent,
                child: Hero(
                  tag: Const.passwordLabelHeroTag,
                  child: TextFormInputLabel(text: 'Password'),
                ),
              ),
              //
              TextFormInputLabel(
                text: 'Forgot Password?',
                textColor: Palette.accentColor.shade400,
                onPressed: () => navigator.push(const ForgotPasswordRoute()),
              ),
            ],
          ),
          //
          PasswordFormField<AuthCubit, AuthState>(
            isNew: false,
            heroTag: Const.passwordFieldHeroTag,
            disabled: (s) => s.isLoading,
            validate: (s) => s.validate,
            isObscured: (s) => s.isPasswordHidden,
            field: (s) => s.rider.password,
            focus: AuthState.passwordFocus,
            response: (s) => s.status,
            errorField: (f) => f.errors?.password,
            onChanged: (fn, str) => fn.passwordChanged(str),
            onToggle: (it) => it.togglePasswordVisibility(),
          ),
        ],
      ),
    );
  }
}

class _CupertinoFormLayout extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  _CupertinoFormLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<AuthCubit, AuthState>(
          builder: (c, s) => CupertinoFormSection.insetGrouped(
            margin: EdgeInsets.symmetric(horizontal: App.sidePadding),
            backgroundColor: Colors.transparent,
            children: [
              EmailFormField<AuthCubit, AuthState>(
                prefix: 'Email',
                disabled: (s) => s.isLoading,
                validate: (s) => s.validate,
                field: (s) => s.rider.email,
                focus: AuthState.emailFocus,
                next: AuthState.passwordFocus,
                response: (s) => s.status,
                onChanged: (fn, str) => fn.emailChanged(str),
              ),
              //
              PasswordFormField<AuthCubit, AuthState>(
                prefix: 'Password',
                heroTag: Const.passwordFieldHeroTag,
                disabled: (s) => s.isLoading,
                validate: (s) => s.validate,
                isObscured: (s) => s.isPasswordHidden,
                field: (s) => s.rider.password,
                focus: AuthState.passwordFocus,
                response: (s) => s.status,
                errorField: (f) => f.errors?.password,
                onChanged: (fn, str) => fn.passwordChanged(str),
                cupertinoFormType: CupertinoFormType.textfield,
                suffixMode: (s) => OverlayVisibilityMode.always,
                onToggle: (it) => it.togglePasswordVisibility(),
              ),
            ],
          ),
        ),
        //
        VerticalSpace(height: 0.03.sw),
        //
        BlocBuilder<AuthCubit, AuthState>(
          builder: (c, s) => Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: TextFormInputLabel(
                text: 'Forgot Password?',
                textColor: Palette.accentColor.shade400,
                onPressed: () => navigator.push(const ForgotPasswordRoute()),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
