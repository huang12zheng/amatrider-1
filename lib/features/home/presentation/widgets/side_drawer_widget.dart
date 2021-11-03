import 'dart:ui';

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A stateless widget to render SideDrawerWidget.
class SideDrawerWidget extends ConsumerWidget {
  const SideDrawerWidget({Key? key}) : super(key: key);

  Widget get defaultImage => CircleAvatar(
        backgroundImage:
            Image.asset(AppAssets.guestAvatarPng, fit: BoxFit.contain).image,
        foregroundImage:
            Image.asset(AppAssets.guestAvatarPng, fit: BoxFit.contain).image,
        minRadius: 0.1.sw,
        backgroundColor: App.resolveColor(Palette.accentColor.shade600),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
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
                  decoration: const BoxDecoration(
                    color: Palette.accentColor,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 0.18.sw,
                          height: 0.18.sw,
                          child: rider?.photo.getOrNull?.let(
                                (it) => CachedNetworkImage(
                                  imageUrl: '$it',
                                  fit: BoxFit.contain,
                                  imageBuilder: (c, img) => CircleAvatar(
                                    backgroundImage: img,
                                    foregroundImage: img,
                                    minRadius: 0.1.sw,
                                    backgroundColor: App.resolveColor(
                                        Palette.accentColor.shade600),
                                  ),
                                  progressIndicatorBuilder:
                                      (_, url, download) => Center(
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
                        //
                        VerticalSpace(height: 0.03.sw),
                        //
                        AdaptiveText(
                          '${rider?.fullName.getOrEmpty}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //
            Column(
              children: [
                DrawerListTile(
                  title: 'Profile',
                  icon: AmatNow.drawer_profile,
                  onPressed: () => context
                      .read<TabNavigationCubit>()
                      .setCurrentIndex(context, 3),
                ),
                //
                DrawerListTile(
                  title: 'Notification',
                  icon: AmatNow.drawer_bell,
                  onPressed: () => navigator.push(const NotificationRoute()),
                ),
                //
                DrawerListTile(
                  title: 'Promotions',
                  icon: AmatNow.drawer_discount,
                  onPressed: () => navigator.push(const PromotionsRoute()),
                ),
                //
                DrawerListTile(
                  title: 'Invite Friends',
                  size: 18,
                  icon: AmatNow.drawer_add_people,
                  onPressed: () => navigator.push(const ReferralRoute()),
                ),
                //
                DrawerListTile(
                  title: 'Contact Support',
                  icon: AmatNow.drawer_support,
                  onPressed: () => navigator.push(const ContactSupportRoute()),
                ),
                //
                DrawerListTile(
                  title: 'Privacy Policy',
                  icon: AmatNow.drawer_privacy,
                  onPressed: () => navigator.push(const PrivacyPolicyRoute()),
                ),
                //
                DrawerListTile(
                  title: 'About AmatRider',
                  size: 18,
                  icon: AmatNow.drawer_people,
                  onPressed: () {},
                ),
              ],
            ),
            //
            Padding(
              padding: EdgeInsets.all(App.sidePadding),
              child: ListTile(
                dense: true,
                title: AdaptiveText(
                  'Download AmatNow',
                  maxLines: 1,
                  style: TextStyle(
                    color: Palette.accentColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: AdaptiveText(
                  'Your one stop shop for african meals',
                  maxLines: 1,
                  style: TextStyle(
                    color: Palette.accentColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: const SizedBox(
                  width: 18,
                  child: Icon(
                    Icons.chevron_right_outlined,
                    color: Palette.accentColor,
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
  final VoidCallback onPressed;

  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, child) => AdaptiveListTile(
        onTap: () {
          ref.read(scaffoldController.notifier).close();
          onPressed.call();
        },
        horizontalTitleGap: 0.0,
        leading: Icon(icon, size: size ?? 23, color: Palette.text40),
        title: AdaptiveText(
          title,
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: Utils.letterSpacing,
        ),
      ),
    );
  }
}
