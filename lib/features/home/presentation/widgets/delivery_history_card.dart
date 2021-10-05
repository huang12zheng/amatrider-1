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
                header: PlatformBuilder(
                  cupertino: (_) => header,
                  material: (_) => Material(
                    elevation: 0.0,
                    color: Colors.transparent,
                    child: header,
                  ),
                ),
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
                            textColor: Palette.neutralLabel,
                            textColorDark: Palette.neutralLabelDark,
                            fontWeight: FontWeight.w400,
                          ),
                          //
                          Headline(
                            '12mins 30 sec',
                            fontSize: 18.sp,
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
              flex: 3,
              child: Row(
                children: [
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Palette.accentLightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.02.sw, vertical: 0.005.sh),
                      child: AdaptiveText(
                        'Order',
                        style: TextStyle(
                          color: Palette.accentBlue,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //
            Flexible(
              flex: 2,
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
