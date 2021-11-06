library delivery_request_card.dart;

import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/features/home/presentation/widgets/horizontal_chip_widget.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

/// A stateless widget to render DeliveryRequestCard.
class DeliveryRequestCard extends StatefulWidget {
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
  State<DeliveryRequestCard> createState() => _DeliveryRequestCardState();
}

class _DeliveryRequestCardState extends State<DeliveryRequestCard> {
  ExpandableController? controller;

  @override
  void initState() {
    controller = ExpandableController(initialExpanded: widget.initialExpanded);
    super.initState();
  }

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
            hasIcon: false,
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
            controller: controller,
            child: ScrollOnExpand(
              child: ExpandablePanel(
                header: header,
                collapsed: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 1.sw,
                  ),
                  child: Visibility(
                    visible: widget.showActionButtons,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ).copyWith(bottom: 10.0),
                      child: _ActionButtons(
                        onAccept: widget.onAccept,
                        onDecline: widget.onDecline,
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
                      if (widget.showActionButtons) ...[
                        VerticalSpace(height: 0.015.sw),
                        //
                        _ActionButtons(
                          onAccept: widget.onAccept,
                          onDecline: widget.onDecline,
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

  Widget get header => Material(
        borderRadius: BorderRadius.circular(5.0),
        type: MaterialType.transparency,
        elevation: 0.0,
        child: Align(
          alignment: Alignment.centerLeft,
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: widget.asset?.let((it) => Image.asset(it,
                      width: 0.14.sw, height: 0.14.sw, fit: BoxFit.fill)) ??
                  Image.asset(AppAssets.slider0,
                      width: 0.14.sw, height: 0.14.sw, fit: BoxFit.fill),
            ),
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 4,
                    child: AdaptiveText(
                      'Emily Restaurant',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                  //
                  Flexible(
                    child: AdaptiveText(
                      '12'.asCurrency(),
                      minFontSize: 14,
                      maxFontSize: 17,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            subtitle: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 0.015.sw),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 5,
                      child: HorizontalChipWidget(
                        widgetPadding: EdgeInsets.symmetric(vertical: 0.004.sh),
                        scrollMargin: EdgeInsets.only(right: 0.02.sw),
                        wrapped: false,
                        tags: [
                          HorizontalChip(
                            label: widget.isOrder ? 'Order' : 'Package',
                            maxFontSize: 13,
                            labelColor: Palette.accentDarkBlue,
                            backgroundColor: Palette.pastelBlue,
                            type: HorizontalChipType.none,
                          ),
                          //
                          HorizontalChip(
                            label: widget.time ?? '5hrs 10mins',
                            maxFontSize: 13,
                            labelColor: Palette.accentGreen,
                            backgroundColor: Palette.pastelGreen,
                            type: HorizontalChipType.none,
                          ),
                        ],
                      ),
                    ),
                    //
                    Flexible(
                      flex: 2,
                      child: AdaptiveText(
                        'Card(POS)',
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            dense: false,
            horizontalTitleGap: 8.0,
            minVerticalPadding: 8.0,
            contentPadding: EdgeInsets.symmetric(
              vertical: 0.01.sw,
              horizontal: 0.03.sw,
            ),
          ),
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
          textColor: Palette.accentColor,
          height: 0.09.sw,
          cupertinoHeight: 0.09.sw,
          width: 0.3.sw,
          cupertinoWidth: 0.3.sw,
          onPressed: onDecline,
        ),
        //
        AdaptiveButton(
          text: 'Accept',
          textColor: Colors.white,
          backgroundColor: Palette.accentColor,
          splashColor: Colors.white24,
          height: 0.09.sw,
          cupertinoHeight: 0.09.sw,
          width: 0.3.sw,
          cupertinoWidth: 0.3.sw,
          onPressed: onAccept,
        ),
      ],
    );
  }
}
