library get_started_screen.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A stateless widget to render GetStartedScreen.
class GetStartedScreen extends StatelessWidget with AutoRouteWrapper {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => this;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Palette.accent20),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AmatNowLogo(
                    logoWidth: 0.11.sw,
                    logoHeight: 0.11.sw,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: App.longest * 0.2,
              child: Center(
                child: SvgPicture.asset(
                  AppAssets.takeAway,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            //
            Positioned(
              top: App.longest * 0.63,
              left: 0,
              right: 0,
              bottom: 0,
              child: Material(
                color: App.resolveColor(
                  Palette.cardColorLight,
                  dark: Palette.cardColorDark,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
                child: SafeArea(
                  top: false,
                  left: true,
                  right: true,
                  bottom: true,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding)
                        .copyWith(top: App.longest * 0.04),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child: AdaptiveText(
                              'Welcome Rider!',
                              maxLines: 1,
                              minFontSize: 13,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              softWrap: false,
                              wrapWords: false,
                            ),
                          ),
                          //
                          VerticalSpace(height: 0.03.sw),
                          //
                          Flexible(
                            flex: 2,
                            child: AdaptiveText(
                              'One step away from diversifying your income source 🤑',
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              minFontSize: 13,
                              fontSize: 20.sp,
                              wordSpacing: 2.0,
                              softWrap: true,
                              wrapWords: true,
                            ),
                          ),
                          //
                          VerticalSpace(height: 0.04.sw),
                          //
                          Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                Flexible(
                                  child: AppButton(
                                    text: 'Create Account',
                                    fontWeight: FontWeight.w600,
                                    onPressed: () => navigator.replaceAll(
                                      [const SignupRoute()],
                                    ),
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.06.sw),
                                //
                                Flexible(
                                  child: AdaptiveButton(
                                    text: 'Login',
                                    fontWeight: FontWeight.w600,
                                    textColor: Palette.accentColor,
                                    splashColor: Colors.black12,
                                    backgroundColor: Palette.accent20,
                                    onPressed: () => navigator.replaceAll(
                                      [const LoginRoute()],
                                    ),
                                  ),
                                ),
                              ],
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
            ),
          ],
        ),
      ),
    );
  }
}
