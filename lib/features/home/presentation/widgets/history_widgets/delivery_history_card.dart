part of grouped_history_card.dart;

/// A stateless widget to render DeliveryHistoryCard.
class DeliveryHistoryCard extends StatefulWidget {
  final DeliveryHistory history;
  final bool initialExpanded;

  const DeliveryHistoryCard({
    Key? key,
    required this.history,
    this.initialExpanded = false,
  }) : super(key: key);

  @override
  State<DeliveryHistoryCard> createState() => _DeliveryHistoryCardState();
}

class _DeliveryHistoryCardState extends State<DeliveryHistoryCard> {
  ExpandableController? controller;

  @override
  void initState() {
    controller = ExpandableController(initialExpanded: widget.initialExpanded);
    super.initState();
  }

  Duration get totalDeliveryTime {
    final start = widget.history.riderAcceptedAt;
    final end = widget.history.riderDeliveredAt;
    return end!.difference(start!);
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
                collapsed: const SizedBox.shrink(),
                expanded: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.04.sw,
                  ).copyWith(bottom: 0.02.sw),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TimelineStatusWidget(
                        padding: EdgeInsets.zero,
                        itemHeight: (_, __) => 0.07.h,
                        statuses: [
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentBlue,
                            title: 'Pick Up Location',
                            subtitle:
                                '${widget.history.pickup.address.getOrEmpty}',
                          ),
                          //
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentGreen,
                            title: 'Delivery Location',
                            subtitle:
                                '${widget.history.destination.address.getOrEmpty}',
                          ),
                        ],
                      ),
                      //
                      VerticalSpace(height: 0.007.sw),
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
                            '${Utils.hoursAndMins(totalDeliveryTime)}',
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
              child: widget.history.sender.photo.ensure(
                (it) => CachedNetworkImage(
                  imageUrl: '${it.getOrEmpty}',
                  fit: BoxFit.cover,
                  width: 0.14.sw,
                  height: double.infinity,
                  progressIndicatorBuilder: (_, url, download) => Center(
                    child: CircularProgressBar.adaptive(
                      value: download.progress,
                      strokeWidth: 1.5,
                      width: 25,
                      height: 25,
                    ),
                  ),
                  errorWidget: (_, __, ___) => Image.asset(
                    AppAssets.slider1,
                    width: 0.14.sw,
                    height: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
                orElse: (_) => Image.asset(AppAssets.slider1,
                    width: 0.14.sw, height: double.infinity, fit: BoxFit.cover),
              ),
            ),
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 4,
                    child: AdaptiveText(
                      '${widget.history.receiverFullName.getOrEmpty}',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                  //
                  Flexible(
                    child: AdaptiveText(
                      '${widget.history.amount.getOrEmpty}'.asCurrency(),
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
                    HorizontalChipWidget(
                      widgetPadding: EdgeInsets.symmetric(vertical: 0.004.sh),
                      scrollMargin: EdgeInsets.only(right: 0.02.sw),
                      wrapped: false,
                      tags: [
                        HorizontalChip(
                          label: 'Package',
                          maxFontSize: 13,
                          labelColor: Palette.accentDarkYellow2,
                          backgroundColor: Palette.pastelYellow,
                          type: HorizontalChipType.none,
                        ),
                      ],
                    ),
                    //
                    widget.history.paymentMethod.maybeWhen(
                          deliveryWithCard: () => Flexible(
                            flex: 2,
                            child: AdaptiveText(
                              '${widget.history.paymentMethod.formatted}',
                              minFontSize: 12,
                              maxLines: 1,
                              softWrap: true,
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18.sp),
                            ),
                          ),
                          deliveryWithCash: () => Flexible(
                            flex: 2,
                            child: AdaptiveText(
                              '${widget.history.paymentMethod.formatted}',
                              minFontSize: 12,
                              maxLines: 1,
                              softWrap: true,
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18.sp),
                            ),
                          ),
                          orElse: () => const Icon(
                            Icons.check_circle,
                            color: Palette.accentGreen,
                          ),
                        ) ??
                        Utils.nothing,
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
