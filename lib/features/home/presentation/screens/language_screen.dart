library language_screen.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/generated/l10n.dart';
import 'package:amatrider/manager/settings/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

/// A stateless widget to render LanguageScreen.
class LanguageScreen extends StatelessWidget with AutoRouteWrapper {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GlobalAppPreferenceCubit, GlobalPreferenceState,
        Locale>(
      selector: (s) => s.currentLocale,
      builder: (_, currentLocale) => AdaptiveScaffold(
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
              ...Language.languages
                  .map(
                    (e) => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                                '${e.languageName}',
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              tileColor: App.resolveColor(
                                  Palette.cardColorLight,
                                  dark: Palette.cardColorDark),
                              trailing: currentLocale == e.locale
                                  ? Icon(
                                      Icons.check,
                                      color: App.resolveColor(
                                        Palette.accentGreen,
                                      ),
                                    )
                                  : null,
                              onTap: () async {
                                await S.load(e.locale);
                                context
                                    .read<GlobalAppPreferenceCubit>()
                                    .changeLocale(e.locale);
                              },
                            ),
                          ),
                        ),
                        //
                        VerticalSpace(height: 0.03.sw),
                      ],
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
