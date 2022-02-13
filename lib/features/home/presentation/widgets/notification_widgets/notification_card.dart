library send_package_notification_card.dart;

import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A stateless widget to render NotificationCard.
class NotificationCard extends StatelessWidget {
  final InAppNotification notification;
  final Logistics deliverable;

  const NotificationCard({
    Key? key,
    required this.notification,
    required this.deliverable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
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
                child: deliverable.type.when(
                  order: () => AppAssets.dishOutlined,
                  package: () => AppAssets.packageOutlined,
                ),
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
                            '${notification.title.getOrEmpty}',
                            maxLines: 1,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          VerticalSpace(height: 0.02.sw),
                          //
                          AdaptiveText(
                            '${deliverable.receiver.fullName.getOrEmpty}',
                            maxLines: 2,
                            minFontSize: 15,
                            fontSize: 16.sp,
                            textColor: Palette.neutralLabel,
                            textColorDark: Palette.neutralLabelDark,
                            fontWeight: FontWeight.w400,
                            letterSpacing: Utils.letterSpacing,
                            overflow: TextOverflow.ellipsis,
                          ),
                          //
                          VerticalSpace(height: 0.02.sw),
                          //
                          if (1 != 1)
                            Material(
                              type: MaterialType.transparency,
                              child: RawMaterialButton(
                                onPressed: () {},
                                elevation: 0.0,
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                        '${DateFormat('hh:mm a').format(deliverable.riderDeliveredAt!)}',
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
