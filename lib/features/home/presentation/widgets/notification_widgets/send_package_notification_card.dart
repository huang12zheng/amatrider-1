library send_package_notification_card.dart;

import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A stateless widget to render SendPackageNotificationCard.
class SendPackageNotificationCard extends StatelessWidget {
  final SendPackage package;

  const SendPackageNotificationCard({Key? key, required this.package})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: App.resolveColor(
        Palette.cardColorLight,
        dark: Palette.cardColorDark,
      ),
      elevation: 0.0,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(borderRadius: Utils.cardBorderRadius),
      child: Padding(
        padding: EdgeInsets.all(0.03.sw),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                color: Palette.neutralF5,
                borderRadius: BorderRadius.all(
                  Radius.circular(Utils.buttonRadius),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(0.03.sw),
                child: AppAssets.packageOutlined,
              ),
            ),
            //
            HorizontalSpace(width: 0.025.sw),
            //
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AdaptiveText(
                            'You delivered a package.',
                            maxLines: 1,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          VerticalSpace(height: 0.02.sw),
                          //
                          AdaptiveText(
                            '${package.receiverFullName.getOrEmpty}',
                            maxLines: 1,
                            fontSize: 16.sp,
                            textColor: Palette.neutralLabel,
                            textColorDark: Palette.neutralLabelDark,
                            fontWeight: FontWeight.w400,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          VerticalSpace(height: 0.02.sw),
                          //
                          Material(
                            type: MaterialType.transparency,
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              fillColor: Palette.accent20,
                              focusElevation: 0.0,
                              highlightElevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  Utils.cardRadius,
                                ),
                              ),
                              child: AdaptiveText(
                                'View Details',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                textColor: Palette.accentColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    Flexible(
                      child: AdaptiveText(
                        '${DateFormat('hh:mm a').format(package.riderDeliveredAt!)}',
                        maxLines: 1,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
