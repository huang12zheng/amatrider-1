library referral_screen.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          SafeArea(
            left: false,
            right: false,
            bottom: false,
            child: AppAssets.friendship,
          ),
          //
          Padding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.02.sw),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AdaptiveText(
                  'Enjoying ${Const.appName}?'
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
                    Flexible(
                      flex: 2,
                      child: BlocSelector<AuthWatcherCubit, AuthWatcherState, Rider?>(
                        selector: (s) => s.rider,
                        builder: (c, rider) => AdaptiveTextFormInput(
                          readOnly: true,
                          disabled: false,
                          initial: 'https://amatnow.com/ride/'
                              '${rider?.fullName.getOrEmpty?.toLowerCase()}',
                          showCursor: false,
                          autoFillHints: null,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                    //
                    HorizontalSpace(width: 0.02.sw),
                    //
                    Material(
                      type: MaterialType.transparency,
                      child: SizedBox(
                        height: 0.115.sw,
                        width: 0.115.sw,
                        child: AdaptiveInkWell(
                          onTap: () {},
                          borderRadius: Utils.inputBorderRadius.br,
                          child: const Icon(Icons.copy_outlined, color: Palette.welcomeGrey),
                        ),
                      ),
                    ),
                    //
                    HorizontalSpace(width: 0.02.sw),
                    //
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Palette.accent20,
                        borderRadius: Utils.inputBorderRadius.br,
                      ),
                      child: SizedBox(
                        height: 0.115.sw,
                        width: 0.115.sw,
                        child: Material(
                          color: App.resolveColor(Colors.transparent),
                          borderRadius: Utils.inputBorderRadius.br,
                          child: AdaptiveInkWell(
                            onTap: () => Share.share('Checkout AmatNow @ https://amatnow.com'),
                            borderRadius: Utils.inputBorderRadius.br,
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
