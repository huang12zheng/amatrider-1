part of profile_page.dart;

class _ProfileCardWidget extends StatelessWidget {
  final Rider? rider;
  final bool showLoader;

  const _ProfileCardWidget({
    Key? key,
    this.rider,
    this.showLoader = false,
  }) : super(key: key);

  bool get isGuest => rider.isNullOrBlank;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 0.27.sw,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: Utils.cardBorderRadius,
          color: App.resolveColor(Palette.primaryColor.shade400, dark: Palette.cardColorDark),
        ),
        child: isGuest ? _GuestCard(showLoader) : _AuthenticatedCard(rider: rider),
      ),
    );
  }
}

class _AuthenticatedCard extends StatelessWidget {
  final Rider? rider;

  const _AuthenticatedCard({
    Key? key,
    required this.rider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 0.03.sw,
              vertical: 0.04.sw,
            ),
            child: Row(
              children: [
                Flexible(
                  child: GestureDetector(
                    onTap: () => App.showAdaptiveBottomSheet(
                      context,
                      elevation: 2.0,
                      isDismissible: false,
                      bounce: true,
                      builder: (_) => const _EditProfileBottomSheet(),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Utils.cardRadius),
                      child: ImageBox.network(
                        photo: rider?.photo.getOrNull,
                        width: 0.18.w,
                        height: 0.18.w,
                        fit: BoxFit.cover,
                        replacement: Image.asset(
                          AppAssets.unnamed,
                          width: 0.18.w,
                          height: 0.18.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                //
                HorizontalSpace(width: 0.04.sw),
                //
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: AdaptiveText(
                          '${rider?.fullName.getOrEmpty}',
                          maxLines: 1,
                          minFontSize: 15,
                          fontSize: 18.0.sp,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      //
                      Flexible(
                        flex: 2,
                        child: AdaptiveText(
                          '${rider?.email.getOrEmpty}',
                          maxLines: 2,
                          minFontSize: 15,
                          maxFontSize: 17,
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.w400,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      //
                      if (rider != null && rider!.phone.isValid)
                        Flexible(
                          child: AdaptiveText(
                            '${rider?.phone.getOrEmpty}',
                            maxLines: 1,
                            minFontSize: 13,
                            fontSize: 17.0.sp,
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //
        Positioned(
          top: 3,
          right: 3,
          child: Material(
            borderRadius: BorderRadius.circular(100.0),
            color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
            child: AdaptiveInkWell(
              onTap: () => App.showAdaptiveBottomSheet(
                context,
                elevation: 2.0,
                isDismissible: false,
                bounce: true,
                builder: (_) => const _EditProfileBottomSheet(),
              ),
              borderRadius: BorderRadius.circular(100.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  App.platform.fold(
                    material: () => Icons.edit,
                    cupertino: () => CupertinoIcons.pencil,
                  ),
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _GuestCard extends StatelessWidget {
  final bool showLoader;

  const _GuestCard(this.showLoader, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 0.04.sw),
      child: Visibility(
        visible: !showLoader,
        replacement: Center(child: App.loadingSpinningLines),
        child: Row(
          children: [
            Flexible(
              child: SvgPicture.asset(
                AppAssets.guestAvatarSvg,
                fit: BoxFit.contain,
                height: double.infinity,
              ),
            ),
            //
            HorizontalSpace(width: 0.04.sw),
            //
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: AdaptiveText(
                      'Welcome Guest!',
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.02.sw),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
