part of delivery_request_card.dart;

/// A stateless widget to render DeliveryHistoryCard.
class DeliveryHistoryCard extends StatelessWidget {
  final String? asset;
  final bool initialExpanded;
  final VoidCallback? onAccept;
  final VoidCallback? onDecline;

  const DeliveryHistoryCard({
    Key? key,
    this.asset,
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
            hasIcon: false,
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
                header: header,
                collapsed: const SizedBox.shrink(),
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
                      VerticalSpace(height: 0.015.sw),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Headline(
                            'Total time',
                            fontSize: 17.sp,
                            textColor: Palette.neutralLabel,
                            textColorDark: Palette.neutralLabelDark,
                            fontWeight: FontWeight.w400,
                          ),
                          //
                          Headline(
                            '12mins 30 sec',
                            fontSize: 17.sp,
                            textColor: Colors.black,
                            textColorDark: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
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
              child: asset?.let((it) => Image.asset(it,
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
                            label: 'Package',
                            maxFontSize: 13,
                            labelColor: Palette.accentDarkBlue,
                            backgroundColor: Palette.pastelBlue,
                            type: HorizontalChipType.none,
                          ),
                          //
                          HorizontalChip(
                            label: '5hrs 10mins',
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
