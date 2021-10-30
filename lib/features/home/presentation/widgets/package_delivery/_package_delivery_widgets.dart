part of package_delivery_accepted_screen.dart;

class _PanelBuilder extends StatefulWidget {
  final ScrollController controller;
  final PanelController? panelController;

  const _PanelBuilder(this.controller, {Key? key, this.panelController})
      : super(key: key);

  @override
  State<_PanelBuilder> createState() => _PanelBuilderState();
}

class _PanelBuilderState extends State<_PanelBuilder> {
  @override
  void initState() {
    super.initState();
    context.read<SendPackageCubit>().startWebsocket();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      controller: widget.controller,
      physics: const NeverScrollableScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: App.sidePadding,
          ).copyWith(top: 0.01.h),
          sliver: SliverToBoxAdapter(
            child: LimitedBox(
              maxHeight: PackageDeliveryAcceptedScreen._panelHeightOpened,
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: GestureDetector(
                      onTap: widget.panelController?.open,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Center(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.grey.shade300,
                                ),
                                child: SizedBox(
                                  height: 0.008.h,
                                  width: 0.2.sw,
                                ),
                              ),
                            ),
                          ),
                          //
                          VerticalSpace(height: 0.01.h),
                          //
                          Flexible(
                            flex: 4,
                            child: Center(
                              child: Headline(
                                'Arriving at Pickup in 9 minutes',
                                minFontSize: 15,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          //
                          VerticalSpace(height: 0.007.h),
                        ],
                      ),
                    ),
                  ),
                  //
                  Flexible(
                    flex: 6,
                    child: BlocBuilder<SendPackageCubit, SendPackageState>(
                      builder: (c, s) => TimelineStatusWidget(
                        padding: EdgeInsets.zero,
                        itemHeight: (_, __) => 0.06.h,
                        statuses: [
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentBlue,
                            subtitle: '${s.package.pickup.address.getOrEmpty}',
                          ),
                          //
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentGreen,
                            subtitle: '${s.package.pickup.address.getOrEmpty}',
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Headline(
                          'Payment (Cash)',
                          fontSize: 17.sp,
                          maxFontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        //
                        Headline(
                          '\$20',
                          textColor: Palette.accentColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                          maxFontSize: 18,
                        ),
                      ],
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.017.h),
                  //
                  const Flexible(
                    flex: 2,
                    child: SenderCardWidget(),
                  ),
                  //
                  VerticalSpace(height: 0.02.h),
                  //
                  Flexible(
                    flex: 3,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _BottomSheetItem.destination(context)
                            .map(
                              (e) => Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: e.bgColor,
                                        borderRadius: BorderRadius.circular(
                                            Utils.inputBorderRadius),
                                      ),
                                      child: AppIconButton(
                                        tooltip: '${e.title}',
                                        elevation: 0,
                                        backgroundColor: e.bgColor,
                                        type: MaterialType.button,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 0.03.sw,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            Utils.buttonRadius),
                                        onPressed: () {},
                                        child: Icon(e.icon, color: e.iconColor),
                                      ),
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    child: AdaptiveText(
                                      '${e.title}',
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: Utils.letterSpacing,
                                    ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  //
                  SizedBox(
                    height: PackageDeliveryAcceptedScreen._totalBottom,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _BottomSheetItem {
  final Color bgColor;
  final IconData icon;
  final Color? iconColor;
  final String title;
  final VoidCallback? onPressed;

  _BottomSheetItem(
      {required this.title,
      required this.icon,
      this.bgColor = Palette.neutralF5,
      this.iconColor,
      this.onPressed});

  static List<_BottomSheetItem> destination(BuildContext c) => [
        _BottomSheetItem(
          title: 'Call Sender',
          icon: Icons.phone_sharp,
          onPressed: () {
            log.wtf(c.read<SendPackageCubit>().state.package.pickup);
          },
        ),
        _BottomSheetItem(
          title: 'Support',
          icon: Icons.contact_support,
          onPressed: () {},
        ),
        _BottomSheetItem(
          title: 'Report a Problem',
          icon: Icons.report,
          onPressed: () {},
        ),
      ];

  static List<_BottomSheetItem> pickup(BuildContext c) => [
        _BottomSheetItem(
          title: 'Call Sender',
          icon: Icons.phone_sharp,
          onPressed: () {},
        ),
        _BottomSheetItem(
          title: 'Report a Problem',
          icon: Icons.report,
          onPressed: () {},
        ),
      ];
}
