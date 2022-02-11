import 'dart:async';
import 'dart:io';

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OAuthWidgets extends StatelessWidget {
  final AuthCubit cubit;
  final bool email;
  final bool google;
  final bool facebook;
  final bool twitter;
  final bool apple;

  const OAuthWidgets({
    Key? key,
    required this.cubit,
    this.email = false,
    this.google = true,
    this.facebook = false,
    this.apple = true,
    this.twitter = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Builder(
        builder: (context) => Material(
          type: MaterialType.transparency,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: BlocSelector<AuthWatcherCubit, AuthWatcherState, bool>(
                  selector: (s) => s.isLoading,
                  builder: (c, isLoading) => SocialBuilder(
                    isLoading: !isLoading,
                    visiblility: email,
                    text: 'Continue with Email',
                    color: App.resolveColor(
                      const Color(0xff110D3A),
                      dark: Palette.secondaryColor.shade300,
                    ),
                    icon: AppAssets.emailTo(Palette.accentColor),
                    onPressed: () async {
                      await BlocProvider.of<AuthWatcherCubit>(context).signOut();
                      unawaited(navigator.push(const GetStartedRoute()));
                    },
                  ),
                ),
              ),
              //
              Flexible(
                child: BlocSelector<AuthCubit, AuthState, bool>(
                  selector: (s) => s.isGoogleAuthLoading,
                  builder: (c, isLoading) => SocialBuilder(
                    isLoading: !isLoading,
                    visiblility: google,
                    text: 'Continue with Google',
                    color: App.resolveColor(
                      const Color(0xff110D3A),
                      dark: Palette.secondaryColor.shade300,
                    ),
                    icon: AppAssets.google,
                    onPressed: BlocProvider.of<AuthCubit>(context).googleAuth,
                  ),
                ),
              ),
              //
              Flexible(
                child: SocialBuilder(
                  visiblility: facebook,
                  text: 'Continue with Facebook',
                  color: App.resolveColor(Palette.fbButton),
                  bgColor: App.resolveColor(Palette.fbButton),
                  splashLight: Colors.white30,
                  icon: AppAssets.facebook(
                    App.resolveColor(
                      App.theme.scaffoldBackgroundColor,
                      dark: Colors.white70,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              //
              if (Platform.isIOS || Platform.isMacOS)
                Flexible(
                  child: BlocSelector<AuthCubit, AuthState, bool>(
                    selector: (s) => s.isAppleAuthLoading,
                    builder: (c, isLoading) => SocialBuilder(
                      isLoading: !isLoading,
                      visiblility: apple,
                      text: 'Continue with Apple',
                      color: App.resolveColor(
                        null,
                        dark: Palette.secondaryColor.shade400,
                      ),
                      icon: AppAssets.apple(App.resolveColor(null, dark: CupertinoColors.black)),
                      onPressed: BlocProvider.of<AuthCubit>(context).appleAuth,
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

class SocialBuilder extends StatelessWidget {
  final bool visiblility;
  final bool isLoading;
  final Color? color;
  final Color? bgColor;
  final Widget icon;
  final String text;
  final VoidCallback? onPressed;
  final Color? splashLight;
  final Color? splashDark;

  const SocialBuilder({
    Key? key,
    required this.visiblility,
    this.isLoading = false,
    this.color,
    this.bgColor,
    required this.icon,
    required this.text,
    this.onPressed,
    this.splashLight,
    this.splashDark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedVisibility(
      visible: visiblility,
      child: AnimatedVisibility(
        visible: isLoading,
        replacement: App.loadingSpinningLines,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: AdaptiveButton(
                leading: icon,
                text: text,
                textColor: App.resolveColor(color ?? Palette.neutralF4),
                backgroundColor: App.resolveColor(bgColor ?? Palette.neutralF4),
                childPadding: EdgeInsets.symmetric(horizontal: 0.04.sw),
                // side: const BorderSide(color: Palette.neutralF4),
                splashColor: App.resolveColor(
                  splashLight ?? Colors.grey.shade300,
                  dark: splashDark ?? Colors.grey.shade800,
                ),
                onPressed: onPressed,
              ),
            ),
            //
            VerticalSpace(height: 0.03.sw),
          ],
        ),
      ),
    );
  }
}
