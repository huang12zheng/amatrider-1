part of home_page.dart;

/// A stateless widget to render _DeliverableCard.
class _DeliverableCard extends StatefulWidget {
  final Logistics item;
  final bool initialExpanded;
  final void Function() onAccept;
  final void Function() onDecline;

  const _DeliverableCard({
    Key? key,
    required this.item,
    this.initialExpanded = false,
    required this.onAccept,
    required this.onDecline,
  }) : super(key: key);

  @override
  State<_DeliverableCard> createState() => __DeliverableCardState();
}

class __DeliverableCardState extends State<_DeliverableCard> {
  ExpandableController? controller;

  void onAccept() => App.showAlertDialog(
        context: context,
        builder: (_) => AdaptiveAlertdialog(
          title: '${tr.acceptRequestTitle}',
          titleHeight: App.platform.cupertino(0.04.h),
          content: '${tr.requestConfirmTxt}',
          cupertinoFirstButtonText: '${tr.noGoBack}',
          onFirstPressed: navigator.pop,
          buttonDirection: Axis.horizontal,
          secondButtonText: '${tr.yesAccept}',
          secondSplashColor: Colors.black12,
          secondTextStyle: const TextStyle(color: Colors.white),
          secondBgColor: Palette.accentColor,
          onSecondPressed: () async {
            await context.read<RequestCubit>().acceptDeliverable(context, widget.item, onAccepted: widget.onAccept);
          },
          materialFirstButton: AppOutlinedButton(
            text: '${tr.noGoBack}',
            height: 0.09.sw,
            cupertinoHeight: 0.028.sh,
            fontSize: 15.sp,
            width: 0.3.sw,
            cupertinoWidth: 0.3.sw,
            onPressed: navigator.pop,
          ),
        ),
      );

  void onDecline() {
    App.showAlertDialog(
      context: context,
      builder: (_) => AdaptiveAlertdialog(
        title: '${tr.warning}!',
        titleHeight: App.platform.cupertino(0.04.h),
        content: '${tr.requestDeclineTxt}',
        cupertinoFirstButtonText: '${tr.noGoBack}',
        onFirstPressed: navigator.pop,
        buttonDirection: Axis.horizontal,
        secondButtonText: '${tr.yes}',
        secondSplashColor: Colors.black12,
        secondTextStyle: const TextStyle(color: Colors.white),
        secondBgColor: Palette.accentColor,
        onSecondPressed: () async {
          await context.read<RequestCubit>().declineDeliverable(context, widget.item, onDeclined: widget.onDecline);
        },
        materialFirstButton: AppOutlinedButton(
          text: '${tr.noGoBack}',
          height: 0.09.sw,
          cupertinoHeight: 0.028.sh,
          fontSize: 15.sp,
          width: 0.3.sw,
          cupertinoWidth: 0.3.sw,
          onPressed: navigator.pop,
        ),
      ),
    );
  }

  void onContinue() {
    final cubit = context.read<RequestCubit>();
    if (cubit.state.current == null) cubit.setCurrent(widget.item);
  }

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
          color: App.resolveColor(Colors.white, dark: Palette.cardColorDark),
        ),
        child: ExpandableTheme(
          data: ExpandableThemeData(
            hasIcon: false,
            tapHeaderToExpand: true,
            tapBodyToCollapse: false,
            iconColor: Palette.accentColor,
            iconPadding: const EdgeInsets.symmetric(vertical: 8).copyWith(right: 10),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ).copyWith(bottom: 10.0),
                    child: widget.item.status.maybeWhen(
                      active: () => _ActionButtons(
                        onAccept: onAccept,
                        onDecline: onDecline,
                      ),
                      orElse: () => AdaptiveButton(
                        text: '${tr.continueTxt}',
                        disabled: context.select((RequestCubit el) => el.state.isLoading),
                        textColor: Colors.white,
                        backgroundColor: Palette.accentColor,
                        splashColor: Colors.white24,
                        height: 0.05.h,
                        cupertinoHeight: 0.05.h,
                        onPressed: onContinue,
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
                      TimelineStatusWidget(
                        padding: EdgeInsets.zero,
                        itemHeight: (_, __) => 0.08.h,
                        statuses: [
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentBlue,
                            title: '${tr.pickupLocationText}',
                            subtitle: '${widget.item.pickup.fullAddress.getOrEmpty}',
                          ),
                          //
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentGreen,
                            title: '${tr.deliveryLocationText}',
                            subtitle: '${widget.item.destination.fullAddress.getOrEmpty}',
                          ),
                        ],
                      ),
                      //
                      VerticalSpace(height: 0.007.sw),
                      //
                      widget.item.status.maybeWhen(
                        active: () => _ActionButtons(
                          onAccept: onAccept,
                          onDecline: onDecline,
                        ),
                        orElse: () => AdaptiveButton(
                          text: '${tr.continueTxt}',
                          disabled: context.select((RequestCubit el) => el.state.isLoading),
                          textColor: Colors.white,
                          backgroundColor: Palette.accentColor,
                          splashColor: Colors.white24,
                          height: 0.05.h,
                          cupertinoHeight: 0.05.h,
                          onPressed: onContinue,
                        ),
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
              child: (widget.item.type.when(
                order: () => widget.item.status.maybeWhen(
                  active: () => widget.item.store.image,
                  enrouteToStoreOrSender: () => widget.item.store.image,
                  orElse: () => widget.item.receiver.photo,
                ),
                package: () => widget.item.status.maybeWhen(
                  active: () => widget.item.sender.photo,
                  enrouteToStoreOrSender: () => widget.item.sender.photo,
                  orElse: () => widget.item.sender.photo,
                ),
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
                    flex: 6,
                    child: AdaptiveText(
                      widget.item.type.when(
                        order: () => widget.item.status.maybeWhen(
                          active: () => '${widget.item.store.name.getOrEmpty}',
                          enrouteToStoreOrSender: () => '${widget.item.store.name.getOrEmpty}',
                          orElse: () => '${widget.item.receiver.fullName.getOrEmpty}',
                        ),
                        package: () => widget.item.status.maybeWhen(
                          active: () => '${widget.item.sender.fullName.getOrEmpty}',
                          enrouteToStoreOrSender: () => '${widget.item.sender.fullName.getOrEmpty}',
                          orElse: () => '${widget.item.receiver.fullName.getOrEmpty}',
                        ),
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
                    flex: 4,
                    child: AdaptiveText(
                      '${widget.item.price.getOrEmpty}'.asCurrency(),
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
                    Expanded(
                      flex: 5,
                      child: HorizontalChipWidget(
                        widgetPadding: EdgeInsets.symmetric(vertical: 0.004.sh),
                        scrollMargin: EdgeInsets.only(right: 0.02.sw),
                        wrapped: false,
                        tags: [
                          widget.item.type.when(
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
                          //
                          HorizontalChip(
                            label: '${Utils.hoursAndMins(
                              widget.item.durationToPickup,
                            )}',
                            maxFontSize: 13,
                            labelColor: App.resolveColor(Palette.accentGreen, dark: Palette.accentDarkGreen),
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
                        '${widget.item.paymentMethod?.formatted}',
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

class _ActionButtons extends StatelessWidget {
  final VoidCallback? onAccept;
  final VoidCallback? onDecline;

  const _ActionButtons({
    Key? key,
    required this.onAccept,
    required this.onDecline,
  }) : super(key: key);

  @override
  Widget build(BuildContext c) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BlocSelector<AuthWatcherCubit, AuthWatcherState, bool>(
          selector: (s) => s.rider?.availability == RiderAvailability.available,
          builder: (c, isAvailable) => AppOutlinedButton(
            text: '${tr.decline}',
            disabled: c.select((RequestCubit el) => el.state.isLoading) || !isAvailable,
            textColor: Palette.accentColor,
            height: 0.05.h,
            cupertinoHeight: 0.05.h,
            width: 0.3.sw,
            cupertinoWidth: 0.3.sw,
            onPressed: () {
              final status = c.read<AuthWatcherCubit>().state.rider?.verificationStatus;

              if (status != ProfileVerificationStatus.verified) {
                navigator.push(const AccountVerificationRoute());
                return;
              }

              onDecline?.call();
            },
          ),
        ),
        //
        BlocSelector<AuthWatcherCubit, AuthWatcherState, bool>(
          selector: (s) => s.rider?.availability == RiderAvailability.available,
          builder: (c, isAvailable) => AdaptiveButton(
            text: '${tr.accept}',
            disabled: c.select((RequestCubit el) => el.state.isLoading) ||
                c.select((RequestCubit el) => el.state.inTransit.isNotEmpty()) ||
                !isAvailable,
            textColor: Colors.white,
            backgroundColor: Palette.accentColor,
            splashColor: Colors.white24,
            height: 0.05.h,
            cupertinoHeight: 0.05.h,
            width: 0.3.sw,
            cupertinoWidth: 0.3.sw,
            onPressed: () {
              final status = c.read<AuthWatcherCubit>().state.rider?.verificationStatus;

              if (status != ProfileVerificationStatus.verified) {
                navigator.push(const AccountVerificationRoute());
                return;
              }

              onAccept?.call();
            },
          ),
        ),
      ],
    );
  }
}
