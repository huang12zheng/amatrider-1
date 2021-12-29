import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A stateless widget to render SideDrawerWidget.
class SideDrawerWidget extends ConsumerWidget {
  const SideDrawerWidget({Key? key}) : super(key: key);

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
                  decoration: const BoxDecoration(
                    color: Palette.accentColor,
                  ),
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
                  onPressed: () {},
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
                DrawerListTile(
                  title: '${tr.aboutAmatRider}',
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
                  '${tr.downloadAmatNow}',
                  maxLines: 1,
                  style: TextStyle(
                    color: Palette.accentColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: AdaptiveText(
                  '${tr.downloadAmatNowDesc}',
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
        material: true,
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
