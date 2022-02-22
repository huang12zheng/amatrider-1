library signup_screen.dart;

import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/auth/presentation/widgets/oauth_widgets.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.fold(
                      is4031: () {
                        if (App.currentRoute != OTPVerificationRoute.name) navigator.replaceAll([OTPVerificationRoute()]);
                        return false;
                      },
                      is41101: () {
                        if (App.currentRoute != SocialsAuthRoute.name) navigator.replaceAll([const SocialsAuthRoute()]);
                        return false;
                      },
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show).render(c),
            success: (s) => PopupDialog.success(duration: env.greetingDuration, message: s.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _SignupScreenState extends State<SignupScreen> with AutomaticKeepAliveClientMixin<SignupScreen> {
  DateTime _timestampPressed = DateTime.now();

  final TapGestureRecognizer tapRecognizer = TapGestureRecognizer()..onTap = (() => navigator.replace(const LoginRoute()));

  @override
  bool get wantKeepAlive => true;

  Future<bool> maybePop() async {
    if (context.watchRouter.canPopSelfOrChildren) return Future.value(true);

    final now = DateTime.now();
    final difference = now.difference(_timestampPressed);
    final _showWarn = difference >= Utils.willPopTimeout;

    _timestampPressed = DateTime.now();

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
    super.build(context);

    return WillPopScope(
      onWillPop: maybePop,
      child: AdaptiveScaffold(
        adaptiveToolbar: AdaptiveToolbar(
          title: 'Create Account',
          implyLeading: Utils.platform_(material: false, cupertino: true)!,
          showCustomLeading: Utils.platform_(material: null, cupertino: true),
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
                      onChanged: () => Form.of(primaryFocus!.context!)?.save(),
                      child: const SafeArea(child: AutofillGroup(child: _FormLayout())),
                    ),
                    //
                    VerticalSpace(height: 0.04.sw),
                    //
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (c, s) => Hero(
                        tag: Const.authButtonHeroTag,
                        child: AppButton(
                          text: 'Create Account',
                          isLoading: s.isLoading,
                          onPressed: () {
                            TextInput.finishAutofillContext();
                            c.read<AuthCubit>().createAccount();
                          },
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
                    Hero(
                      tag: Const.oauthBtnHeroTag,
                      child: Center(child: OAuthWidgets(cubit: context.read<AuthCubit>())),
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
                                const TextSpan(text: 'Already have an account? '),
                                TextSpan(
                                  text: 'Log In',
                                  recognizer: TapGestureRecognizer()..onTap = () => navigator.navigate(const LoginRoute()),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
