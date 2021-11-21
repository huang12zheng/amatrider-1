library signup_screen.dart;

import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/auth/presentation/widgets/oauth_widgets.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/router/export.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

part '../widgets/_signup_forms.dart';

class SignupScreen extends StatefulWidget with AutoRouteWrapper {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            c.status.fold(
              () => false,
              (http) =>
                  http?.response.maybeMap(
                    error: (f) => f.foldCode(
                      is4031: () {
                        WidgetsBinding.instance?.addPostFrameCallback(
                            (_) => navigateToOTPVerification());
                        return false;
                      },
                      is41101: () {
                        WidgetsBinding.instance
                            ?.addPostFrameCallback((_) => navigateToSocials());
                        return false;
                      },
                      orElse: () => false,
                    ),
                    orElse: () => false,
                  ) ??
                  false,
            ),
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

class _SignupScreenState extends State<SignupScreen>
    with AutomaticKeepAliveClientMixin<SignupScreen> {
  DateTime _timestampPressed = DateTime.now();

  final TapGestureRecognizer tapRecognizer = TapGestureRecognizer()
    ..onTap = (() => navigator.replace(const LoginRoute()));

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
          adaptiveToolbar: AdaptiveToolbar(
            title: 'Create Account',
            implyLeading: App.platform.fold(
              material: () => false,
              cupertino: () => true,
            ),
            showCustomLeading: App.platform.fold(
              material: () => null,
              cupertino: () => true,
            ),
            leadingAction: navigator.pop,
          ),
          body: CustomScrollView(
            shrinkWrap: true,
            clipBehavior: Clip.antiAlias,
            controller: ScrollController(),
            physics: Utils.physics,
            scrollDirection: Axis.vertical,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: App.sidePadding,
                ).copyWith(top: App.longest * 0.02),
                sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      Form(
                        key: AuthState.signupFormKey,
                        onChanged: () =>
                            Form.of(primaryFocus!.context!)?.save(),
                        child: App.platform.fold(
                          material: () => const _MaterialSignUp(),
                          cupertino: () => const _CupertinoSignUp(),
                        ),
                      ),
                      //
                      VerticalSpace(height: 0.1.sw),
                      //
                      BlocBuilder<AuthCubit, AuthState>(
                        builder: (c, s) => Hero(
                          tag: Const.authButtonHeroTag,
                          child: AppButton(
                            text: 'Create Account',
                            isLoading: s.isLoading,
                            onPressed: c.read<AuthCubit>().createAccount,
                          ),
                        ),
                      ),
                      //
                      VerticalSpace(height: 0.07.sw),
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
                      VerticalSpace(height: 0.05.sw),
                      //
                      Hero(
                        tag: Const.loginAndSignupSwitchTag,
                        child: Material(
                          type: MaterialType.transparency,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: AdaptiveText.rich(
                                TextSpan(children: [
                                  const TextSpan(
                                      text: 'Already have an account? '),
                                  TextSpan(
                                    text: 'Log In',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => navigator
                                          .navigate(const LoginRoute()),
                                    style: TextStyle(
                                      color: Utils.foldTheme(
                                        context: context,
                                        light: () => Palette.accentColor,
                                        dark: () =>
                                            Palette.accentColor.shade100,
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
