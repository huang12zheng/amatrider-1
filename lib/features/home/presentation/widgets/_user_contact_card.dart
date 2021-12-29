library _user_contact_card.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

/// A stateless widget to render UserContactDeliveryCard.
class UserContactDeliveryCard extends StatelessWidget {
  final double? height;
  final double? width;
  final String title;
  final String subtitle;
  final String? phone;
  final String? photo;
  final VoidCallback? onIconPressed;

  const UserContactDeliveryCard({
    Key? key,
    this.height,
    this.width,
    required this.title,
    required this.subtitle,
    required this.photo,
    this.phone,
    this.onIconPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
      child: SizedBox(
        height: height ?? 0.06.sh,
        width: width ?? double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
              child: LimitedBox(
                maxWidth: 0.065.h,
                child: ImageBox(
                  photo: photo,
                  replacement: Center(
                    child: Image.asset(AppAssets.unnamed, fit: BoxFit.contain),
                  ),
                ),
              ),
            ),
            //
            HorizontalSpace(width: 0.03.sw),
            //
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: AdaptiveText(
                      '$title',
                      fontSize: 16.sp,
                      textColor: Colors.grey.shade800,
                      textColorDark: Colors.white60,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  //
                  Flexible(
                    child: AdaptiveText(
                      '$subtitle',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            //
            if (phone != null)
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Palette.pastelGreen,
                  borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                ),
                child: AppIconButton(
                  tooltip: 'Call',
                  elevation: 0,
                  backgroundColor: Palette.pastelGreen,
                  type: MaterialType.button,
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.03.sw,
                  ),
                  borderRadius: BorderRadius.circular(Utils.buttonRadius),
                  onPressed: onIconPressed ??
                      () async {
                        final formattedPhone = 'tel:${phone?.removeNewLines().trimWhiteSpaces()}';

                        await canLaunch(formattedPhone) ? await launch(formattedPhone) : print('could not launch phone');
                      },
                  child: Icon(
                    Utils.platform_(
                      material: Icons.phone_sharp,
                      cupertino: CupertinoIcons.phone,
                    ),
                    color: Palette.accentGreen,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
