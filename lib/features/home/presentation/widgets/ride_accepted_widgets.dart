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
                onTap: panelController != null && panelController!.isPanelOpen
                    ? panelController?.close
                    : panelController?.close,
                child: Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey.shade300,
                    ),
                    child: SizedBox(height: 0.008.sh, width: 0.2.sw),
                  ),
                ),
              ),
              //
              VerticalSpace(height: 0.02.sh),
              //
              Center(child: Headline('Arriving at Pickup in 9 minutes')),
              //
              VerticalSpace(height: 0.01.sh),
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
              AdaptiveButton(
                text: 'Confirm Pickup',
                textColor: Colors.white,
                splashColor: Colors.white24,
                onPressed: () {},
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
