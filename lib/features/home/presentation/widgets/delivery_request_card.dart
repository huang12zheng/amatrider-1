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
  final bool initialExpanded;
  final VoidCallback? onAccept;
  final VoidCallback? onDecline;

  const DeliveryRequestCard({
    Key? key,
    this.asset,
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ).copyWith(bottom: 10.0),
                    child: Visibility(
                      visible: showActionButtons,
                      child: _ActionButtons(
                        onAccept: onAccept,
                        onDecline: onDecline,
                      ),
                    ),
                  ),
                ),
                expanded: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ).copyWith(bottom: 10.0),
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
        title: AdaptiveText(
          'Emily Restaurant',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17.sp,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(
            children: [
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: Palette.accentLightBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: AdaptiveText(
                    'Order',
                    style: TextStyle(
                      color: Palette.accentBlue,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
              //
              HorizontalSpace(width: 0.015.sw),
              //
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: Palette.accentLightGreen,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: AdaptiveText(
                    '10 Minutes',
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
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AdaptiveText(
                '\$12',
                style: TextStyle(
                  fontSize: 21.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //
            Flexible(
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
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 15.0,
        ),
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
