library referral_screen.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

/// A stateless widget to render ReferralScreen.
class ReferralScreen extends StatelessWidget with AutoRouteWrapper {
  const ReferralScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(
        implyLeading: true,
        cupertinoImplyLeading: true,
        title: 'Invite Friends',
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppAssets.friendship,
          //
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: App.sidePadding,
            ).copyWith(top: 0.02.sw),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AdaptiveText(
                  'Enjoying AmatNow?'
                  '\nInvite friends and get exclusive discounts. ',
                  fontSize: 17.sp,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w400,
                  letterSpacing: Utils.letterSpacing,
                ),
                //
                VerticalSpace(height: 0.1.sw),
                //
                Row(
                  children: [
                    const Flexible(
                      flex: 2,
                      child: AdaptiveTextFormInput(
                        readOnly: true,
                        disabled: false,
                        initial: 'AmatRide/manuel1234',
                        showCursor: false,
                        autoFillHints: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    //
                    HorizontalSpace(width: 0.02.sw),
                    //
                    SizedBox(
                      height: 0.115.sw,
                      width: 0.115.sw,
                      child: InkWell(
                        onTap: () {},
                        borderRadius:
                            BorderRadius.circular(Utils.inputBorderRadius),
                        child: const Icon(
                          Icons.copy_outlined,
                          color: Palette.welcomeGrey,
                        ),
                      ),
                    ),
                    //
                    HorizontalSpace(width: 0.02.sw),
                    //
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Palette.accent20,
                        borderRadius:
                            BorderRadius.circular(Utils.inputBorderRadius),
                      ),
                      child: SizedBox(
                        height: 0.115.sw,
                        width: 0.115.sw,
                        child: Material(
                          color: App.resolveColor(Colors.transparent),
                          borderRadius:
                              BorderRadius.circular(Utils.inputBorderRadius),
                          child: InkWell(
                            onTap: () {},
                            borderRadius:
                                BorderRadius.circular(Utils.inputBorderRadius),
                            child: const Icon(
                              Icons.share,
                              color: Palette.accentColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
