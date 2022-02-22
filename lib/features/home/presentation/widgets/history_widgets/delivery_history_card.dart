part of grouped_history_card.dart;

/// A stateless widget to render DeliveryHistoryCard.
class DeliveryHistoryCard extends StatefulWidget {
  final Logistics history;
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

  Duration? get totalDeliveryTime {
    final start = widget.history.riderAcceptedAt;
    final end = widget.history.riderDeliveredAt;

    if (start == null || end == null) return null;

    return end.difference(start);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(Utils.inputBorderRadius),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark)),
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
                        itemHeight: (_, __) => 0.08.h,
                        statuses: [
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentBlue,
                            title: '${tr.pickupLocationText}',
                            subtitle: '${widget.history.pickup.fullAddress.getOrEmpty}',
                          ),
                          //
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentGreen,
                            title: '${tr.deliveryLocationText}',
                            subtitle: '${widget.history.destination.fullAddress.getOrEmpty}',
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
                            '${tr.totalTime}',
                            fontSize: 17.sp,
                            textColor: Palette.neutralLabel,
                            textColorDark: Palette.neutralLabelDark,
                            fontWeight: FontWeight.w400,
                          ),
                          //
                          if (totalDeliveryTime != null)
                            Headline(
                              '${Utils.hoursAndMins(totalDeliveryTime!)}',
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
              child: (widget.history.type.when(
                order: () => widget.history.store.image,
                package: () => widget.history.sender.photo,
              )).ensure(
                (it) => ImageBox.network(
                  fit: BoxFit.cover,
                  width: 0.14.sw,
                  height: double.maxFinite,
                  photo: '${it.getOrEmpty}',
                  replacement: Image.asset(AppAssets.slider1, width: 0.14.sw, height: double.maxFinite, fit: BoxFit.cover),
                ),
                orElse: (_) => Image.asset(AppAssets.slider1, width: 0.14.sw, height: double.maxFinite, fit: BoxFit.cover),
              ),
            ),
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 5,
                    child: AdaptiveText(
                      widget.history.type.when(
                        order: () => '${widget.history.store.name.getOrEmpty}',
                        package: () => '${widget.history.sender.fullName.getOrNull ?? widget.history.receiver.fullName.getOrNull}',
                      ),
                      fontWeight: FontWeight.w600,
                      maxLines: 2,
                      minFontSize: 13,
                      maxFontSize: 18,
                      fontSize: 16.sp,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  //
                  Flexible(
                    flex: 2,
                    child: AdaptiveText(
                      '${widget.history.paymentMethod!.maybeWhen(
                        deliveryWithCard: () =>
                            widget.history.price.getOrNull! <= 0 ? 'PAID' : '${widget.history.price.getOrEmpty}'.asCurrency(),
                        deliveryWithCash: () =>
                            widget.history.price.getOrNull! <= 0 ? 'PAID' : '${widget.history.price.getOrEmpty}'.asCurrency(),
                        orElse: () => 'PAID',
                      )}',
                      maxLines: 1,
                      minFontSize: 13,
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
                        widget.history.type.when(
                          order: () => HorizontalChip(
                            label: 'Order',
                            maxFontSize: 13,
                            labelColor: Palette.accentDarkBlue,
                            backgroundColor: Palette.pastelBlue,
                            type: HorizontalChipType.none,
                          ),
                          package: () => HorizontalChip(
                            label: '${tr.package}',
                            maxFontSize: 13,
                            labelColor: Palette.accentDarkYellow,
                            backgroundColor: Palette.pastelYellow,
                            type: HorizontalChipType.none,
                          ),
                        ),
                      ],
                    ),
                    //
                    Flexible(
                      flex: 2,
                      child: AdaptiveText(
                        '${widget.history.paymentMethod?.formatted}',
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
            contentPadding: EdgeInsets.symmetric(vertical: 0.01.sw, horizontal: 0.03.sw),
          ),
        ),
      );
}
