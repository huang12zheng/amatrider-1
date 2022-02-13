import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/theme/theme.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A stateless widget to render SideDrawerWidget.
class SideDrawerWidget extends ConsumerWidget {
  const SideDrawerWidget({Key? key}) : super(key: key);

  Future<PackageInfo> get packageInfo async => await PackageInfo.fromPlatform();

  Widget get defaultImage => CircleAvatar(
        backgroundImage: Image.asset(AppAssets.guestAvatarPng, fit: BoxFit.contain).image,
        foregroundImage: Image.asset(AppAssets.guestAvatarPng, fit: BoxFit.contain).image,
        minRadius: 0.1.sw,
        backgroundColor: App.resolveColor(Palette.accentColor.shade600),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      backgroundColor: Utils.platform_(cupertino: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocSelector<AuthWatcherCubit, AuthWatcherState, Rider?>(
              selector: (s) => s.rider,
              builder: (c, rider) => SizedBox(
                width: double.infinity,
                child: DrawerHeader(
                  curve: Curves.easeInOutCubic,
                  duration: const Duration(milliseconds: 600),
                  decoration: const BoxDecoration(color: Palette.accentColor),
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          navigator.pop();
                          c.read<TabNavigationCubit>().setCurrentIndex(c, 4);
                        },
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 2,
                                child: SizedBox.square(
                                  dimension: 0.17.sw,
                                  child: rider?.photo.getOrNull?.let(
                                        (it) => CachedNetworkImage(
                                          imageUrl: '$it',
                                          fit: BoxFit.contain,
                                          imageBuilder: (c, img) => CircleAvatar(
                                            backgroundImage: img,
                                            foregroundImage: img,
                                            minRadius: 0.1.sw,
                                            backgroundColor: App.resolveColor(Palette.accentColor.shade600),
                                          ),
                                          progressIndicatorBuilder: (_, url, download) => Center(
                                            child: CircularProgressBar.adaptive(
                                              value: download.progress,
                                              strokeWidth: 2,
                                            ),
                                          ),
                                          errorWidget: (_, url, error) => defaultImage,
                                        ),
                                      ) ??
                                      defaultImage,
                                ),
                              ),
                              //
                              VerticalSpace(height: 0.03.sw),
                              //
                              Flexible(
                                child: AdaptiveText(
                                  '${rider?.fullName.getOrEmpty}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              //
                              VerticalSpace(height: 0.02.sw),
                              //
                              const Flexible(child: VerificationStatusChip()),
                            ],
                          ),
                        ),
                      ),
                      //
                      if (MediaQuery.of(context).platformBrightness != Brightness.dark)
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Material(
                            type: MaterialType.transparency,
                            borderRadius: 100.br,
                            child: AdaptiveInkWell(
                              onTap: () => context.read<ThemeCubit>().toggleTheme(),
                              borderRadius: 100.br,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Utils.foldTheme(
                                    light: () => CupertinoIcons.moon,
                                    dark: () => Utils.platform_(material: Icons.light_mode_rounded, cupertino: CupertinoIcons.light_max),
                                  ),
                                  color: Palette.cardColorLight,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            //
            Column(
              children: [
                DrawerListTile(
                  title: '${tr.notifications}',
                  icon: AmatNow.drawer_bell,
                  onPressed: () => navigator.push(const NotificationRoute()),
                ),
                //
                DrawerListTile(
                  title: '${tr.promotions}',
                  icon: AmatNow.drawer_discount,
                  onPressed: () => navigator.push(const PromotionsRoute()),
                ),
                //
                DrawerListTile(
                  title: '${tr.inviteFriends}',
                  size: 18,
                  icon: AmatNow.drawer_add_people,
                  onPressed: () => navigator.push(const ReferralRoute()),
                ),
                //
                DrawerListTile(
                  title: 'Rate App',
                  icon: AmatNow.star,
                  onPressed: () => RateMyAppDialog.periodic(context),
                ),
                //
                DrawerListTile(
                  title: '${tr.contactSupport}',
                  icon: AmatNow.drawer_support,
                  onPressed: () => navigator.push(const ContactSupportRoute()),
                ),
                //
                DrawerListTile(
                  title: '${tr.privacyPolicy}',
                  icon: AmatNow.drawer_privacy,
                  onPressed: () => navigator.push(const PrivacyPolicyRoute()),
                ),
                //
                FutureBuilder<PackageInfo>(
                  future: packageInfo,
                  builder: (_, snapshot) => DrawerListTile(
                    title: 'App Version ${snapshot.data?.version ?? '1.0.0'}',
                    size: 26,
                    icon: Icons.info_rounded,
                  ),
                ),
              ],
            ),
            //
            Padding(
              padding: EdgeInsets.all(App.sidePadding),
              child: AdaptiveListTile(
                dense: true,
                noCupertinoBorder: true,
                material: true,
                title: AdaptiveText(
                  '${tr.downloadAmatNow}',
                  maxLines: 1,
                  style: TextStyle(
                    color: Palette.accentColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: AdaptiveText(
                  'Your one stop shop for instant goodness.',
                  maxLines: 2,
                  style: TextStyle(
                    color: Palette.accentColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                tileColor: Palette.accent20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                ),
                onTap: () {},
              ),
            ),
            //
            VerticalSpace(height: 0.04.sw),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final double? size;
  final VoidCallback? onPressed;

  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    this.onPressed,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, child) => AdaptiveListTile(
        material: true,
        onTap: onPressed == null
            ? null
            : () {
                if (onPressed != null) {
                  ref.read(scaffoldController.notifier).close();
                  onPressed!.call();
                }
              },
        horizontalTitleGap: 0.0,
        leading: Icon(icon, size: size ?? 23, color: Palette.text40),
        title: AdaptiveText(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            letterSpacing: Utils.letterSpacing,
          ),
        ),
      ),
    );
  }
}
