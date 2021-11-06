library language_screen.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render LanguageScreen.
class LanguageScreen extends StatelessWidget with AutoRouteWrapper {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: App.sidePadding)
            .copyWith(top: 0.02.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AdaptiveText(
              'Language',
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
            //
            VerticalSpace(height: 0.03.sw),
            //
            ClipRRect(
              borderRadius: Utils.cardBorderRadius,
              child: Material(
                type: MaterialType.transparency,
                elevation: App.platform.fold(
                  material: () => 2.0,
                  cupertino: () => 0.0,
                ),
                child: AdaptiveListTile(
                  title: AdaptiveText(
                    'English',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  tileColor: App.resolveColor(Palette.cardColorLight,
                      dark: Palette.cardColorDark),
                  trailing: const Icon(Icons.check, color: Colors.green),
                  onTap: () {
                    //
                  },
                ),
              ),
            ),
            //
            VerticalSpace(height: 0.03.sw),
            //
            ClipRRect(
              borderRadius: Utils.cardBorderRadius,
              child: Material(
                type: MaterialType.transparency,
                elevation: App.platform.fold(
                  material: () => 2.0,
                  cupertino: () => 0.0,
                ),
                child: AdaptiveListTile(
                  title: AdaptiveText(
                    'Turkey',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  tileColor: App.resolveColor(Palette.cardColorLight,
                      dark: Palette.cardColorDark),
                  onTap: () {
                    //
                  },
                ),
              ),
            ),
            //
            VerticalSpace(height: 0.03.sw),
            //
            ClipRRect(
              borderRadius: Utils.cardBorderRadius,
              child: Material(
                type: MaterialType.transparency,
                elevation: App.platform.fold(
                  material: () => 2.0,
                  cupertino: () => 0.0,
                ),
                child: AdaptiveListTile(
                  title: AdaptiveText(
                    'French',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  tileColor: App.resolveColor(Palette.cardColorLight,
                      dark: Palette.cardColorDark),
                  onTap: () {
                    //
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
