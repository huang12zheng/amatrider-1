library setting_screen.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/theme/theme.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '../widgets/password_update_bottom_sheet.dart';

/// A stateless widget to render SettingScreen.
class SettingScreen extends StatelessWidget with AutoRouteWrapper {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  TextStyle get listTileTextStyle => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 17.0.sp,
        inherit: true,
      );

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(implyMiddle: true),
      body: BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
        builder: (c, s) => SafeArea(
          child: CupertinoScrollbar(
            child: CustomScrollView(
              shrinkWrap: true,
              physics: Utils.physics,
              scrollDirection: Axis.vertical,
              controller: ScrollController(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.only(top: 0.01.sw),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate.fixed(
                      [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Theme.of(context).platform.fold(
                                    material: () => Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AdaptiveText(
                                          'Settings',
                                          style: App.titleStyle,
                                        ),
                                        //
                                        VerticalSpace(height: 0.07.sw),
                                      ],
                                    ),
                                    cupertino: () => VerticalSpace(height: App.sidePadding),
                                  ),
                              //
                              Headline(
                                'Preference',
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                        //
                        VerticalSpace(height: 0.03.sw),
                        //
                        Visibility(
                          visible: s.isAuthenticated,
                          child: AdaptiveListTile.adaptiveSwitch(
                            title: AdaptiveText(
                              'Push Notifications',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17.0.sp,
                              ),
                            ),
                            tileColor: App.resolveColor(null, dark: Palette.cardColorDark),
                            contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                            value: true,
                            inactiveThumbColor: Palette.text40,
                            inactiveTrackColor: Utils.foldTheme(
                              light: () => Colors.black12,
                              dark: () => Palette.secondaryColor.shade300,
                            ),
                            secondary: const Icon(AmatNow.notification_bell),
                            onChanged: (value) {},
                          ),
                        ),
                        //
                        AdaptiveListTile.adaptiveSwitch(
                          title: AdaptiveText(
                            context.watch<ThemeCubit>().isDarkMode ? 'Light Mode' : 'Dark Mode',
                            style: listTileTextStyle,
                          ),
                          tileColor: App.resolveColor(null, dark: Palette.cardColorDark),
                          contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                          value: context.watch<ThemeCubit>().isDarkMode,
                          inactiveThumbColor: Palette.text40,
                          inactiveTrackColor: Utils.foldTheme(
                            light: () => Colors.black12,
                            dark: () => Palette.secondaryColor.shade300,
                          ),
                          secondary: Icon(Utils.foldTheme(
                              light: () => AmatNow.moon,
                              dark: () => Utils.platform_(
                                    material: Icons.light_mode_rounded,
                                    cupertino: CupertinoIcons.light_max,
                                  ))),
                          onChanged: (_) => context.read<ThemeCubit>().toggleTheme(),
                        ),
                        //
                        VerticalSpace(height: 0.07.sw),
                        //
                        Visibility(
                          visible: s.isAuthenticated,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                                child: Headline('Security', fontWeight: FontWeight.w500),
                              ),
                              //
                              if (s.rider?.provider == AuthProvider.regular) ...[
                                VerticalSpace(height: 0.03.sw),
                                //
                                AdaptiveListTile(
                                  title: AdaptiveText(
                                    'Manage Password',
                                    style: listTileTextStyle,
                                  ),
                                  tileColor: App.resolveColor(null, dark: Palette.cardColorDark),
                                  contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                                  leading: const Icon(
                                    AmatNow.key_password,
                                    semanticLabel: 'Manage Password',
                                  ),
                                  onTap: () => App.showAdaptiveBottomSheet(
                                    context,
                                    elevation: 2.0,
                                    builder: (_) => const _PasswordUpdateBottomSheet(),
                                  ),
                                ),
                              ],
                              //
                              AdaptiveListTile(
                                title: AdaptiveText(
                                  'Delete Account',
                                  textColor: Palette.accentColor,
                                  textColorDark: Palette.accentDark,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17.0.sp,
                                ),
                                contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                                leading: Icon(
                                  AmatNow.recycle_bin,
                                  semanticLabel: 'Delete Account',
                                  color: App.resolveColor(Palette.accentColor, dark: Palette.accentDark),
                                ),
                                onTap: () {
                                  App.showAlertDialog(
                                    context: context,
                                    builder: (_) => const DeleteAccountAlertdialog(),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
