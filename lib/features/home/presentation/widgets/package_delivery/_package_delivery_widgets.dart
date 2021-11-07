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
    context.read<SendPackageCubit>().startTracker(context);
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
                    flex: 3,
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
                                child: SizedBox(height: 0.008.h, width: 0.2.sw),
                              ),
                            ),
                          ),
                          //
                          VerticalSpace(height: 0.01.h),
                          //
                          Flexible(
                            flex: 4,
                            child: Center(
                              child: BlocBuilder<SendPackageCubit,
                                  SendPackageState>(
                                builder: (c, s) => Headline(
                                  formatJourneyInfo(s) ?? '',
                                  minFontSize: 16,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                          //
                          VerticalSpace(height: 0.006.h),
                        ],
                      ),
                    ),
                  ),
                  //
                  Flexible(
                    flex: 8,
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
                            subtitle:
                                '${s.package.destination.address.getOrEmpty}',
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Headline(
                          'Payment (Cash)',
                          fontSize: 17.sp,
                          maxFontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        //
                        Headline(
                          '\$20',
                          textColor: Palette.accentColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                          maxFontSize: 20,
                        ),
                      ],
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.017.h),
                  //
                  Flexible(
                    flex: 3,
                    child: BlocSelector<SendPackageCubit, SendPackageState,
                        SendPackage>(
                      selector: (s) => s.package,
                      builder: (c, s) => UserContactDeliveryCard(
                        title: s.status.maybeWhen(
                          riderAccepted: () => 'Sender',
                          enrouteToSender: () => 'Sender',
                          enrouteToReceiver: () => 'Receiver',
                          riderReceived: () => 'Receiver',
                          delivered: () => 'Receiver',
                          orElse: () => '',
                        ),
                        subtitle: s.status.maybeWhen(
                          riderAccepted: () =>
                              '${s.sender.fullName.getOrNull ?? '....'}',
                          enrouteToSender: () =>
                              '${s.sender.fullName.getOrNull ?? '....'}',
                          enrouteToReceiver: () =>
                              '${s.receiverFullName.getOrNull ?? '....'}',
                          riderReceived: () =>
                              '${s.receiverFullName.getOrNull ?? '....'}',
                          delivered: () =>
                              '${s.receiverFullName.getOrNull ?? '....'}',
                          orElse: () => '...',
                        ),
                        phone: s.status.maybeWhen(
                          enrouteToReceiver: () =>
                              '${s.receiverPhone.getOrEmpty}',
                          riderReceived: () => '${s.receiverPhone.getOrEmpty}',
                          delivered: () => '${s.receiverPhone.getOrEmpty}',
                          orElse: () => null,
                        ),
                      ),
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.02.h),
                  //
                  Flexible(
                    flex: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: BlocSelector<SendPackageCubit, SendPackageState,
                          SendPackage>(
                        selector: (s) => s.package,
                        builder: (c, package) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: _BottomSheetItem.pickup(context)
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
                                            Utils.inputBorderRadius,
                                          ),
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
                                          onPressed: e.onPressed,
                                          child:
                                              Icon(e.icon, color: e.iconColor),
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

String? formatJourneyInfo(SendPackageState s) {
  return s.package.status.maybeWhen(
    enrouteToSender: () => s.journey.status.maybeWhen(
      ok: () => s.journey.duration_.fold(
        (_) => 'You have arrived at the Pickup location',
        (time) => 'Arriving at Pickup in $time',
      ),
      orElse: () => 'Head to Pickup address',
    ),
    delivered: () => 'Package delivered to '
        '${s.package.receiverFullName.getOrEmpty}',
    riderReceived: () => 'You received package from '
        '${s.package.sender.fullName.getOrEmpty}',
    enrouteToReceiver: () => s.journey.status.maybeWhen(
      ok: () => s.journey.duration_.fold(
        (_) => 'You have arrived at your Destination',
        (time) => 'Arriving at Destination in $time',
      ),
      orElse: () => 'Head to the Destination address',
    ),
    orElse: () => null,
  );
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

  static List<_BottomSheetItem> pickup(BuildContext c) => [
        _BottomSheetItem(
          title: 'Call Sender',
          icon: Icons.phone_sharp,
          onPressed: () async {
            final senderPhone =
                BlocProvider.of<SendPackageCubit>(c).state.package.sender.phone;

            final formattedPhone = 'tel:${senderPhone.getOrEmpty}';

            await canLaunch(formattedPhone)
                ? await launch(formattedPhone)
                : print('could not launch phone');
          },
        ),
        _BottomSheetItem(
          title: 'Report a Problem',
          icon: Icons.report,
          onPressed: () {
            App.showAdaptiveBottomSheet(
              c,
              elevation: 2.0,
              builder: (_) => const _DeliveryIssueBottomsheet(),
            );
          },
        ),
      ];
}
