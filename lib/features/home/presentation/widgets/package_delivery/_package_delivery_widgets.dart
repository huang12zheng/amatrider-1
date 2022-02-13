part of package_delivery_accepted_screen.dart;

class _PanelBuilder extends StatefulWidget {
  final ScrollController controller;
  final PanelController? panelController;

  const _PanelBuilder(this.controller, {Key? key, this.panelController}) : super(key: key);

  @override
  State<_PanelBuilder> createState() => _PanelBuilderState();
}

class _PanelBuilderState extends State<_PanelBuilder> {
  @override
  void initState() {
    super.initState();
    context.read<SendPackageCubit>().liveLocationUpdates(context);
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
                              child: BlocBuilder<SendPackageCubit, SendPackageState>(
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
                    child: BlocSelector<SendPackageCubit, SendPackageState, Logistics?>(
                      selector: (s) => s.deliverable,
                      builder: (c, deliverable) => TimelineStatusWidget(
                        padding: EdgeInsets.zero,
                        itemHeight: (_, __) => 0.06.h,
                        statuses: [
                          if (deliverable != null)
                            ...deliverable.status.between(
                              start: () => [
                                TimelineStatus(
                                  asset: AppAssets.timelinePinAsset,
                                  assetColor: Palette.accentBlue,
                                  subtitle: 'Your Location',
                                  titleFontSize: 18.sp,
                                ),
                                //
                                TimelineStatus(
                                  asset: AppAssets.timelinePinAsset,
                                  assetColor: Palette.accentGreen,
                                  subtitle: '${deliverable.pickup.fullAddress.getOrEmpty}',
                                ),
                              ],
                              end: () => [
                                TimelineStatus(
                                  asset: AppAssets.timelinePinAsset,
                                  assetColor: Palette.accentBlue,
                                  subtitle: 'Your Location',
                                  titleFontSize: 18.sp,
                                ),
                                //
                                TimelineStatus(
                                  asset: AppAssets.timelinePinAsset,
                                  assetColor: Palette.accentGreen,
                                  subtitle: '${deliverable.destination.fullAddress.getOrEmpty}',
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                  //
                  Flexible(
                    flex: 2,
                    child: BlocSelector<SendPackageCubit, SendPackageState, Logistics?>(
                      selector: (s) => s.deliverable,
                      builder: (c, deliverable) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Headline(
                            'Payment - ${deliverable?.paymentMethod?.formatted}',
                            fontSize: 17.sp,
                            maxFontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          //
                          Headline(
                            '${deliverable?.price.getOrEmpty}'.asCurrency(),
                            textColor: App.resolveColor(Palette.accentColor, dark: Palette.accentDark),
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                            maxFontSize: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.017.h),
                  //
                  Flexible(
                    flex: 3,
                    child: BlocSelector<SendPackageCubit, SendPackageState, Logistics?>(
                      selector: (s) => s.deliverable,
                      builder: (c, s) => s == null
                          ? Utils.nothing
                          : UserContactDeliveryCard(
                              photo: s.type.when(
                                order: () => s.status.between(
                                  start: () => '${s.store.image.getOrEmpty}',
                                  end: () => '${s.receiver.photo.getOrEmpty}',
                                ),
                                package: () => s.status.between(
                                  start: () => '${s.sender.photo.getOrEmpty}',
                                  end: () => '${s.receiver.photo.getOrEmpty}',
                                ),
                              ),
                              title: s.status.between(
                                start: () => s.type.when(order: () => 'Store', package: () => 'Sender'),
                                end: () => 'Receiver',
                              ),
                              subtitle: s.type.when(
                                order: () => s.status.between(
                                  start: () => '${s.store.name.getOrEmpty}',
                                  end: () => '${s.receiver.fullName.getOrEmpty}',
                                ),
                                package: () => s.status.between(
                                  start: () => '${s.sender.fullName.getOrEmpty}',
                                  end: () => '${s.receiver.fullName.getOrEmpty}',
                                ),
                              ),
                              phone: s.type.when(
                                order: () => s.status.between(
                                  start: () => '${s.store.phone.getOrEmpty}',
                                  end: () => '${s.receiver.phone.getOrEmpty}',
                                ),
                                package: () => s.status.between(
                                  start: () => null,
                                  end: () => '${s.receiver.phone.getOrEmpty}',
                                ),
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
                      child: BlocSelector<SendPackageCubit, SendPackageState, Logistics?>(
                        selector: (s) => s.deliverable,
                        builder: (c, deliverable) {
                          final actions = _BottomSheetItem.pickup(context, deliverable);

                          return Row(
                            mainAxisAlignment: actions.length > 2
                                ? MainAxisAlignment.spaceBetween
                                : actions.length <= 1
                                    ? MainAxisAlignment.center
                                    : MainAxisAlignment.spaceAround,
                            children: actions
                                .map(
                                  (e) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        flex: 2,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: e.bgColor,
                                            borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                                          ),
                                          child: AppIconButton(
                                            tooltip: '${e.title}',
                                            elevation: 0,
                                            backgroundColor: e.bgColor,
                                            type: MaterialType.button,
                                            padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
                                            borderRadius: BorderRadius.circular(Utils.buttonRadius),
                                            onPressed: e.onPressed,
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
                          );
                        },
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
  return s.deliverable?.status.maybeWhen(
    enrouteToStoreOrSender: () => s.deliverable?.journey?.status.maybeWhen(
      ok: () => s.deliverable?.journey?.duration_.fold(
        (_) => 'You have arrived at the Pickup location',
        (time) => 'Arriving at Pickup in $time',
      ),
      orElse: () => 'Head to Pickup address',
    ),
    delivered: () => 'Package delivered to ${s.deliverable?.receiver.fullName.getOrEmpty}',
    received: () => s.deliverable?.type.when(
      order: () => 'Item picked up from Store',
      package: () => 'You received package from ${s.deliverable?.sender.fullName.getOrEmpty}',
    ),
    enrouteToReceiver: () => s.deliverable?.journey?.status.maybeWhen(
      ok: () => s.deliverable?.journey?.duration_.fold(
        (_) => 'You have arrived at your Destination',
        (time) => 'Arriving at Destination in $time',
      ),
      orElse: () => 'Head to the Destination address',
    ),
    orElse: () => 'Head to Pickup Location',
  );
}

class _BottomSheetItem {
  final Color bgColor;
  final IconData icon;
  final Color? iconColor;
  final String title;
  final VoidCallback? onPressed;

  _BottomSheetItem({required this.title, required this.icon, this.bgColor = Palette.neutralF5, this.iconColor, this.onPressed});

  static void arrivalAlertDialog(
    BuildContext context, {
    required String title,
    required String message,
    VoidCallback? onPressed,
  }) {
    App.showAlertDialog(
      context: context,
      builder: (_) => BlocProvider.value(
        value: context.read<SendPackageCubit>(),
        child: AdaptiveAlertdialog(
          title: '$title',
          titleHeight: App.platform.cupertino(0.04.h),
          body: [
            AdaptiveText(
              '$message',
              fontSize: 16.sp,
              minFontSize: 12,
              maxFontSize: 16,
              isDefault: Utils.platform_(cupertino: true),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
              letterSpacing: Utils.letterSpacing,
            ),
          ],
          buttonDirection: Axis.horizontal,
          cupertinoFirstButtonText: 'No, Go Back',
          isSecondDestructive: true,
          secondButtonText: 'Yes',
          secondSplashColor: Colors.black12,
          secondTextStyle: const TextStyle(color: Colors.white),
          secondBgColor: Palette.accentColor,
          // autoPopSecondButton: false,
          onSecondPressed: Utils.platform_(
            material: onPressed,
            cupertino: navigator.pop,
          ),
          cupertinoSecondButton: CupertinoDialogAction(
            isDefaultAction: true,
            isDestructiveAction: false,
            onPressed: onPressed,
            child: const Text('Yes, Confirm'),
          ),
          materialFirstButton: AppOutlinedButton(
            text: 'No, Go Back',
            textColor: Palette.text100,
            textColorDark: Palette.text100Dark,
            borderColor: Palette.text100,
            borderColorDark: Palette.text100Dark,
            height: 0.045.h,
            cupertinoHeight: 0.028.sh,
            width: 0.3.sw,
            cupertinoWidth: 0.3.sw,
            onPressed: navigator.pop,
          ),
        ),
      ),
    );
  }

  static List<_BottomSheetItem> pickup(BuildContext c, Logistics? deliverable) => [
        if (deliverable?.type == LogisticsType.order && ParcelStatus.inTransitToSender.contains(deliverable?.status) ||
            deliverable?.type == LogisticsType.package)
          _BottomSheetItem(
            title: deliverable?.type.when(order: () => 'Call Receiver', package: () => 'Call Sender') ?? 'Call Sender',
            icon: Icons.phone_sharp,
            iconColor: App.resolveColor(Palette.darkChip, dark: Palette.iconDark),
            onPressed: () async {
              final senderPhone = deliverable?.type.when(
                order: () => deliverable.receiver.phone,
                package: () => deliverable.sender.phone,
              );

              final formattedPhone = 'tel:${senderPhone?.getOrEmpty?.removeNewLines().trimWhiteSpaces()}';

              await canLaunch(formattedPhone) ? await launch(formattedPhone) : print('could not launch phone');
            },
          ),
        //
        if (deliverable?.notes.getOrNull != null)
          _BottomSheetItem(
            title: 'Notes',
            icon: Icons.book,
            iconColor: App.resolveColor(Palette.darkChip, dark: Palette.iconDark),
            onPressed: () {
              App.showAlertDialog(
                context: c,
                builder: (_) => _AdditionalNotesDialog(
                  deliverable!.notes,
                  altPhone: deliverable.receiver.phoneAlt,
                ),
              );
            },
          ),
        //
        if (deliverable?.type == LogisticsType.package && ParcelStatus.inTransitToSender.contains(deliverable?.status))
          _BottomSheetItem(
            title: 'Arrival Alert',
            icon: Icons.report,
            iconColor: App.resolveColor(Palette.darkChip, dark: Palette.iconDark),
            onPressed: () => arrivalAlertDialog(
              c,
              title: 'Arrival Alert',
              message: 'Inform ${deliverable?.sender.fullName.getOrEmpty} of your arrival?',
              onPressed: () => c.read<SendPackageCubit>().alertArrival(deliverable!, deliverable.sender.fullName.getOrEmpty),
            ),
          ),
        //
        if (ParcelStatus.inTransitToReceiver.contains(deliverable?.status))
          _BottomSheetItem(
            title: 'Arrival Alert',
            icon: Icons.report,
            iconColor: App.resolveColor(Palette.darkChip, dark: Palette.iconDark),
            onPressed: () => arrivalAlertDialog(
              c,
              title: 'Arrival Alert',
              message: 'Inform ${deliverable?.receiver.fullName.getOrEmpty} of your arrival?',
              onPressed: () => c.read<SendPackageCubit>().alertArrival(deliverable!, deliverable.receiver.fullName.getOrEmpty),
            ),
          ),
      ];
}
