library profile_page.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:async/async.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin<ProfilePage> {
  final AsyncMemoizer<int> _memoizer = AsyncMemoizer();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(
        showCustomLeading: false,
        title: 'Profile',
        centerTitle: false,
        elevation: 0.0,
        titleStyle: App.titleStyle,
      ),
      body: SafeArea(
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
                    const IgnorePointer(
                      // ignoring: s.isLoading,
                      child: _ProfileCardWidget(
                        user: null,
                        // showLoader: s.isLoading && !snapshot.hasData,
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
                                color: Colors.transparent,
                                elevation: App.platform.fold(
                                  material: () => 2.0,
                                  cupertino: () => 0.0,
                                ),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: App.platform.fold(
                                      material: () => Utils.foldTheme(
                                        light: () => Colors.white,
                                        dark: () =>
                                            Palette.secondaryColor.shade400,
                                      ),
                                      cupertino: () =>
                                          CupertinoDynamicColor.resolve(
                                        CupertinoDynamicColor.withBrightness(
                                          color: Colors.white,
                                          darkColor:
                                              Palette.secondaryColor.shade400,
                                        ),
                                        context,
                                      ),
                                    ),
                                  ),
                                  child: AdaptiveListTile(
                                    onTap: e.onPressed,
                                    title: AdaptiveText(
                                      e.title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17.0.sp,
                                      ),
                                    ),
                                    trailing: Icon(
                                      Theme.of(context).platform.fold(
                                            material: () =>
                                                Icons.navigate_next_rounded,
                                            cupertino: () =>
                                                CupertinoIcons.chevron_right,
                                          ),
                                      semanticLabel: e.title,
                                    ),
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
                    // BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                    //   builder: (c, s) => Visibility(
                    //     visible: s.isAuthenticated,
                    //     child: Hero(
                    //       tag: Const.profileLogoutBtnHerotag,
                    //       child: AppButton(
                    //         text: 'Logout',
                    //         isLoading: s.isLoading,
                    //         onPressed: c.read<AuthWatcherCubit>().signOut,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    //
                    VerticalSpace(height: 0.07.sw)
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

class _ProfileItem {
  final VoidCallback onPressed;
  final String title;

  const _ProfileItem({
    required this.title,
    required this.onPressed,
  });

  static List<_ProfileItem> get items => [
        _ProfileItem(
          title: 'Verification',
          onPressed: () {},
        ),
        _ProfileItem(
          title: 'Account Information',
          onPressed: () {},
        ),
        _ProfileItem(
          title: 'Language',
          onPressed: () {},
        ),
        _ProfileItem(
          title: 'Settings',
          onPressed: () {},
        ),
      ];
}
