library delivery_request_card.dart;

import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

part 'delivery_history_card.dart';

/// A stateless widget to render DeliveryRequestCard.
class DeliveryRequestCard extends StatelessWidget {
  final String? asset;
  final bool showActionButtons;
  final bool isOrder;
  final String? time;
  final bool initialExpanded;
  final VoidCallback? onAccept;
  final VoidCallback? onDecline;

  const DeliveryRequestCard({
    Key? key,
    this.asset,
    this.isOrder = true,
    this.time,
    this.showActionButtons = true,
    this.initialExpanded = false,
    this.onAccept,
    this.onDecline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(Utils.inputBorderRadius),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: App.resolveColor(
            Colors.white,
            dark: Palette.secondaryColor,
          ),
        ),
        child: ExpandableTheme(
          data: ExpandableThemeData(
            hasIcon: true,
            tapHeaderToExpand: true,
            tapBodyToCollapse: false,
            iconColor: Palette.accentColor,
            iconPadding:
                const EdgeInsets.symmetric(vertical: 8).copyWith(right: 10),
            useInkWell: Utils.platform_(material: true, cupertino: false),
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            inkWellBorderRadius: const BorderRadius.all(
              Radius.circular(Utils.inputBorderRadius),
            ),
          ),
          child: ExpandableNotifier(
            initialExpanded: initialExpanded,
            child: ScrollOnExpand(
              child: ExpandablePanel(
                header: PlatformBuilder(
                  material: (_) => Material(
                    elevation: 0.0,
                    color: Colors.transparent,
                    child: header,
                  ),
                  cupertino: (_) => header,
                ),
                collapsed: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 1.sw,
                  ),
                  child: Visibility(
                    visible: showActionButtons,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ).copyWith(bottom: 10.0),
                      child: _ActionButtons(
                        onAccept: onAccept,
                        onDecline: onDecline,
                      ),
                    ),
                  ),
                ),
                expanded: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.04.sw,
                  ).copyWith(bottom: 0.02.sw),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const TimelineStatusWidget(
                        statuses: [
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentBlue,
                            title: 'Pick Up Location',
                            subtitle: '1234 Main St, Anytown, CA 12345',
                          ),
                          //
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentGreen,
                            title: 'Delivery Location',
                            subtitle: 'Damaturu, Nigeria',
                          ),
                        ],
                      ),
                      //
                      if (showActionButtons) ...[
                        VerticalSpace(height: 0.015.sw),
                        //
                        _ActionButtons(
                          onAccept: onAccept,
                          onDecline: onDecline,
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget get header => ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: asset?.let((it) => Image.asset(it)) ??
              Image.asset(AppAssets.blackAvatar),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: AdaptiveText(
                'Emily Restaurant',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp,
                ),
              ),
            ),
            Flexible(
              child: AdaptiveText(
                '\$12',
                style: TextStyle(
                  fontSize: 21.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isOrder)
                    const Flexible(
                      flex: 8,
                      child: CustomChipWidget(
                        'Order',
                        backgroundColor: Palette.pastelBlue,
                        textColor: Palette.accentBlue,
                      ),
                    ),
                  if (!isOrder)
                    const Flexible(
                      flex: 8,
                      child: CustomChipWidget(
                        'Package',
                        backgroundColor: Palette.pastelYellow,
                        textColor: Palette.accentYellow,
                      ),
                    ),
                  //
                  Flexible(child: HorizontalSpace(width: 0.015.sw)),
                  //
                  Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        DecoratedBox(
                          decoration: const BoxDecoration(
                            color: Palette.accentLightGreen,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.014.sw, vertical: 0.004.sh),
                            child: AdaptiveText(
                              time ?? '5hrs 10mins',
                              maxLines: 1,
                              minFontSize: 13,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Palette.accentGreen,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //
            Flexible(
              flex: 3,
              child: AdaptiveText(
                'Card(POS)',
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
          ],
        ),
        dense: true,
        horizontalTitleGap: 8.0,
        minVerticalPadding: 10.0,
        contentPadding: EdgeInsets.symmetric(
          vertical: 0.01.sh,
          horizontal: 0.04.sw,
        ).copyWith(right: 0.01.sw),
      );
}

class _ActionButtons extends StatelessWidget {
  final VoidCallback? onAccept;
  final VoidCallback? onDecline;

  const _ActionButtons({
    Key? key,
    required this.onAccept,
    required this.onDecline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AppOutlinedButton(
          text: 'Decline',
          height: 0.028.sh,
          cupertinoHeight: 0.028.sh,
          width: 0.3.sw,
          cupertinoWidth: 0.3.sw,
          onPressed: onDecline,
        ),
        //
        AdaptiveButton(
          text: 'Accept',
          textColor: Colors.white,
          // textColorDark: Palette.,
          splashColor: Colors.white24,
          height: 0.028.sh,
          cupertinoHeight: 0.028.sh,
          width: 0.3.sw,
          cupertinoWidth: 0.3.sw,
          onPressed: onAccept,
        ),
      ],
    );
  }
}
