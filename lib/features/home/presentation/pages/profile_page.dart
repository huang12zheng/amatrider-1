library profile_page.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:enough_platform_widgets/platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

part '../widgets/edit_profile_bottom_sheet.dart';
part '../widgets/profile_page_widgets.dart';

/// A stateless widget to render ProfilePage.
class ProfilePage extends StatefulWidget with AutoRouteWrapper {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with AutomaticKeepAliveClientMixin<ProfilePage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(
        showCustomLeading: App.platform.material(true),
        title: '${tr.profile}',
        centerTitle: true,
        implyLeading: false,
        cupertinoImplyLeading: false,
        elevation: 0.0,
        titleStyle: App.titleStyle,
        leadingIcon: App.platform.material(Consumer(
          builder: (_, ref, child) => PlatformIconButton(
            materialIcon: const Icon(Icons.menu),
            cupertinoIcon: const Icon(CupertinoIcons.bars),
            onPressed: ref.read(scaffoldController.notifier).open,
          ),
        )),
        actions: [
          Utils.platform_(
            cupertino: Expanded(
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Consumer(
                      builder: (_, ref, child) => AppIconButton(
                        tooltip: 'Menu',
                        backgroundColor: Colors.transparent,
                        elevation: 0.0,
                        onPressed: ref.read(scaffoldController.notifier).open,
                        padding: EdgeInsets.zero,
                        child: Center(
                          child: Icon(
                            CupertinoIcons.bars,
                            size: 30,
                            color: App.resolveColor(Palette.cardColorDark, dark: Palette.cardColorLight),
                          ),
                        ),
                      ),
                    ),
                    //
                    const Spacer(),
                    //
                    AdaptiveText('${tr.profile}', style: App.titleStyle),
                    //
                    const Spacer(),
                  ],
                ),
              ),
            ),
            material: Utils.nothing,
          )!,
        ],
      ),
      body: BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
        builder: (c, s) => SafeArea(
          child: CustomScrollView(
            clipBehavior: Clip.antiAlias,
            controller: ScrollController(),
            physics: Utils.physics,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: App.sidePadding,
                ).copyWith(top: 0.02.sw),
                sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      IgnorePointer(
                        ignoring: s.isLoading,
                        child: _ProfileCardWidget(
                          rider: s.rider,
                          showLoader: s.isLoading,
                        ),
                      ),
                      //
                      VerticalSpace(height: 0.1.sw),
                      //
                      ..._ProfileItem.items
                          .map(
                            (e) => Padding(
                              padding: EdgeInsets.only(bottom: 0.045.sw),
                              child: ClipRRect(
                                borderRadius: Utils.cardBorderRadius,
                                child: Material(
                                  type: MaterialType.transparency,
                                  elevation: App.platform.fold(
                                    material: () => 2.0,
                                    cupertino: () => 0.0,
                                  ),
                                  color: Utils.platform_(
                                    cupertino: App.resolveColor(
                                      Colors.white,
                                      dark: Palette.secondaryColor.shade400,
                                    ),
                                  ),
                                  child: AdaptiveListTile(
                                    focusColor: Colors.black,
                                    hoverColor: Colors.black,
                                    selectedTileColor: Colors.black,
                                    onTap: e.onPressed,
                                    tileColor: App.resolveColor(
                                      Colors.white,
                                      dark: Palette.secondaryColor.shade600,
                                    ),
                                    title: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Flexible(
                                          child: AdaptiveText(
                                            e.title,
                                            fontSize: 17.0.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        //
                                        HorizontalSpace(width: 0.04.sw),
                                        //
                                        if (e.id == 'verification') const VerificationStatusChip(),
                                      ],
                                    ),
                                    trailing: Icon(
                                      Utils.platform_(
                                        material: Icons.navigate_next_rounded,
                                        cupertino: CupertinoIcons.chevron_right,
                                      ),
                                      size: 20,
                                      semanticLabel: e.title,
                                      color: Palette.iconDark,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      //
                      VerticalSpace(height: 0.07.sw),
                      //
                      Visibility(
                        visible: s.isAuthenticated,
                        child: MyHero(
                          tag: Const.profileLogoutBtnHerotag,
                          child: AppButton(
                            text: '${tr.logout}',
                            isLoading: s.isLoggingOut,
                            onPressed: () async {
                              // Cleanup
                              c.read<NotificationCubit>().reset();
                              // Signout the authenticated rider
                              await c.read<AuthWatcherCubit>().signOut();
                              // Reset current Index to 0
                              c.read<TabNavigationCubit>().reset();
                            },
                          ),
                        ),
                      ),
                      //
                      VerticalSpace(height: 0.07.sw)
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

class _ProfileItem {
  final VoidCallback onPressed;
  final String id;
  final String title;

  const _ProfileItem({
    required this.id,
    required this.title,
    required this.onPressed,
  });

  static List<_ProfileItem> get items => [
        _ProfileItem(
          id: 'verification',
          title: '${S.current.verification}',
          onPressed: () => navigator.push(const AccountVerificationRoute()),
        ),
        _ProfileItem(
          id: 'reviews',
          title: '${S.current.reviews}',
          onPressed: () => navigator.push(const RiderReviewRoute()),
        ),
        _ProfileItem(
          id: 'account-info',
          title: '${S.current.bankAccountInformation}',
          onPressed: () => navigator.push(const EditBankDetailsRoute()),
        ),
        _ProfileItem(
          id: 'language',
          title: '${S.current.language}',
          onPressed: () => navigator.push(const LanguageRoute()),
        ),
        _ProfileItem(
          id: 'settings',
          title: '${S.current.settings}',
          onPressed: () => navigator.push(const SettingRoute()),
        ),
      ];
}
