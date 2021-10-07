part of ride_accepted_screen.dart;

class _PanelBuilder extends StatelessWidget {
  final ScrollController controller;
  final PanelController? panelController;

  const _PanelBuilder(
    this.controller, {
    Key? key,
    this.panelController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      controller: controller,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: App.sidePadding,
          ).copyWith(top: 0.01.sh),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              GestureDetector(
                onTap: panelController?.open,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.grey.shade300,
                        ),
                        child: SizedBox(height: 0.008.sh, width: 0.2.sw),
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.02.sh),
                    //
                    Center(child: Headline('Arriving at Pickup in 9 minutes')),
                    //
                    VerticalSpace(height: 0.01.sh),
                    //
                  ],
                ),
              ),
              //
              TimelineStatusWidget(
                padding: EdgeInsets.zero,
                itemHeight: (_, __) => 0.05.sh,
                statuses: [
                  const TimelineStatus(
                    asset: AppAssets.timelinePinAsset,
                    assetColor: Palette.accentBlue,
                    subtitle: '1234 Main St, Anytown, CA 12345',
                  ),
                  //
                  const TimelineStatus(
                    asset: AppAssets.timelinePinAsset,
                    assetColor: Palette.accentGreen,
                    subtitle: 'Damaturu, Nigeria',
                  ),
                ],
              ),
              //
              VerticalSpace(height: 0.01.sh),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Headline(
                    'Payment (Cash)',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  //
                  Headline(
                    '\$20',
                    textColor: Palette.accentColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ],
              ),
              //
              VerticalSpace(height: 0.02.sh),
              //
              const SenderCardWidget(),
              //
              VerticalSpace(height: 0.02.sh),
              //
              AppButton(
                text: 'Confirm Pickup',
                onPressed: () async => App.showAlertDialog(
                  context: context,
                  barrierColor: App.resolveColor(
                    Colors.grey.shade800.withOpacity(0.55),
                    dark: Colors.white54,
                  ),
                  builder: (_) => AdaptiveAlertdialog(
                    title: 'Confirm Pickup',
                    content: 'Confirm that you have '
                        'received the package from the Sender?',
                    buttonDirection: Axis.horizontal,
                    secondButtonText: 'Yes, Confirm',
                    secondSplashColor: Colors.black12,
                    secondTextStyle: const TextStyle(color: Colors.white),
                    secondBgColor: Palette.accentColor,
                    onSecondPressed: () {},
                    materialFirstButton: AppOutlinedButton(
                      text: 'No, Go Back',
                      textColor: Palette.text100,
                      textColorDark: Palette.text100Dark,
                      borderColor: Palette.text100,
                      borderColorDark: Palette.text100Dark,
                      height: 0.028.sh,
                      cupertinoHeight: 0.028.sh,
                      width: 0.3.sw,
                      cupertinoWidth: 0.3.sw,
                      onPressed: navigator.pop,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
