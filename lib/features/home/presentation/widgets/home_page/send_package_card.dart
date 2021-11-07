part of home_page.dart;

/// A stateless widget to render _SendPackageCard.
class _SendPackageCard extends StatefulWidget {
  final SendPackage package;
  final bool initialExpanded;

  const _SendPackageCard({
    Key? key,
    required this.package,
    this.initialExpanded = false,
  }) : super(key: key);

  @override
  State<_SendPackageCard> createState() => __SendPackageCardState();
}

class __SendPackageCardState extends State<_SendPackageCard> {
  ExpandableController? controller;

  void onAccept() => App.showAlertDialog(
        context: context,
        barrierColor: App.resolveColor(
          Colors.grey.shade800.withOpacity(0.55),
          dark: Colors.white54,
        ),
        builder: (_) => AdaptiveAlertdialog(
          title: '${tr.acceptRequestTitle}',
          content: '${tr.requestConfirmTxt}',
          cupertinoFirstButtonText: '${tr.noGoBack}',
          onFirstPressed: navigator.pop,
          buttonDirection: Axis.horizontal,
          secondButtonText: '${tr.yesAccept}',
          secondSplashColor: Colors.black12,
          secondTextStyle: const TextStyle(color: Colors.white),
          secondBgColor: Palette.accentColor,
          onSecondPressed: () async {
            await context
                .read<RequestCubit>()
                .acceptPackageDelivery(context, widget.package);
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
      barrierColor: App.resolveColor(
        Colors.grey.shade800.withOpacity(0.55),
        dark: Colors.white54,
      ),
      builder: (_) => AdaptiveAlertdialog(
        title: '${tr.warning}!',
        content: '${tr.requestDeclineTxt}',
        cupertinoFirstButtonText: '${tr.noGoBack}',
        onFirstPressed: navigator.pop,
        buttonDirection: Axis.horizontal,
        secondButtonText: '${tr.yes}',
        secondSplashColor: Colors.black12,
        secondTextStyle: const TextStyle(color: Colors.white),
        secondBgColor: Palette.accentColor,
        onSecondPressed: () async {
          await context
              .read<RequestCubit>()
              .declinePackageDelivery(context, widget.package);
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
    context.read<RequestCubit>().setCurrentPackage(widget.package);
    navigator.navigate(PackageDeliveryAcceptedRoute(
      sendPackage: widget.package,
    ));
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ).copyWith(bottom: 10.0),
                    child: widget.package.status.maybeWhen(
                      active: () => _ActionButtons(
                        onAccept: onAccept,
                        onDecline: onDecline,
                      ),
                      orElse: () => AdaptiveButton(
                        text: '${tr.continueTxt}',
                        disabled: context
                            .select((RequestCubit el) => el.state.isLoading),
                        textColor: Colors.white,
                        backgroundColor: Palette.accentColor,
                        splashColor: Colors.white24,
                        height: 0.05.sh,
                        cupertinoHeight: 0.09.sw,
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
                            subtitle:
                                '${widget.package.pickup.address.getOrEmpty}',
                          ),
                          //
                          TimelineStatus(
                            asset: AppAssets.timelinePinAsset,
                            assetColor: Palette.accentGreen,
                            title: '${tr.deliveryLocationText}',
                            subtitle:
                                '${widget.package.destination.address.getOrEmpty}',
                          ),
                        ],
                      ),
                      //
                      VerticalSpace(height: 0.007.sw),
                      //
                      widget.package.status.maybeWhen(
                        active: () => _ActionButtons(
                          onAccept: onAccept,
                          onDecline: onDecline,
                        ),
                        orElse: () => AdaptiveButton(
                          text: '${tr.continueTxt}',
                          disabled: context
                              .select((RequestCubit el) => el.state.isLoading),
                          textColor: Colors.white,
                          backgroundColor: Palette.accentColor,
                          splashColor: Colors.white24,
                          height: 0.05.sh,
                          cupertinoHeight: 0.09.sw,
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
              child: widget.package.sender.photo.ensure(
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
                      '${widget.package.receiverFullName.getOrEmpty}',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                  //
                  Flexible(
                    child: AdaptiveText(
                      '${widget.package.amount.getOrEmpty}'.asCurrency(),
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
                            label: '${tr.package}',
                            maxFontSize: 13,
                            labelColor: Palette.accentDarkYellow,
                            backgroundColor: Palette.pastelYellow,
                            type: HorizontalChipType.none,
                          ),
                          //
                          HorizontalChip(
                            label: '${Utils.hoursAndMins(
                              widget.package.durationToPickup,
                            )}',
                            maxFontSize: 13,
                            labelColor: Palette.accentGreen,
                            backgroundColor: Palette.pastelGreen,
                            type: HorizontalChipType.none,
                          ),
                        ],
                      ),
                    ),
                    //
                    widget.package.paymentMethod?.maybeWhen(
                          deliveryWithCard: () => Flexible(
                            flex: 2,
                            child: AdaptiveText(
                              '${widget.package.paymentMethod?.formatted}',
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
                              '${widget.package.paymentMethod?.formatted}',
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
            disabled: c.select((RequestCubit el) => el.state.isLoading) ||
                !isAvailable,
            textColor: Palette.accentColor,
            height: 0.05.sh,
            cupertinoHeight: 0.09.sw,
            width: 0.3.sw,
            cupertinoWidth: 0.3.sw,
            onPressed: onDecline,
          ),
        ),
        //
        BlocSelector<AuthWatcherCubit, AuthWatcherState, bool>(
          selector: (s) => s.rider?.availability == RiderAvailability.available,
          builder: (c, isAvailable) => AdaptiveButton(
            text: '${tr.accept}',
            disabled: c.select((RequestCubit el) => el.state.isLoading) ||
                !isAvailable,
            textColor: Colors.white,
            backgroundColor: Palette.accentColor,
            splashColor: Colors.white24,
            height: 0.05.sh,
            cupertinoHeight: 0.09.sw,
            width: 0.3.sw,
            cupertinoWidth: 0.3.sw,
            onPressed: onAccept,
          ),
        ),
      ],
    );
  }
}
