part of profile_page.dart;

class _ProfileCardWidget extends StatelessWidget {
  final User? user;
  final bool showLoader;

  const _ProfileCardWidget({
    Key? key,
    this.user,
    this.showLoader = false,
  }) : super(key: key);

  bool get isGuest => user.isNullOrBlank;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 0.27.sw,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: Utils.cardBorderRadius,
          color: App.platform.fold(
            material: () => Utils.foldTheme(
              light: () => Colors.white,
              dark: () => Palette.secondaryColor.shade400,
            ),
            cupertino: () => CupertinoDynamicColor.resolve(
              CupertinoDynamicColor.withBrightness(
                color: Colors.white,
                darkColor: Palette.secondaryColor.shade400,
              ),
              context,
            ),
          ),
        ),
        child:
            isGuest ? _GuestCard(showLoader) : _AuthenticatedCard(user: user),
      ),
    );
  }
}

class _AuthenticatedCard extends StatelessWidget {
  final User? user;

  const _AuthenticatedCard({
    Key? key,
    required this.user,
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
                  child: user?.photo.getOrEmpty.let(
                        (it) => CachedNetworkImage(
                          imageUrl: '$it',
                          fit: BoxFit.contain,
                          height: double.infinity,
                          progressIndicatorBuilder: (_, url, download) =>
                              Center(
                            child: CircularProgressBar.adaptive(
                              value: download.progress,
                              strokeWidth: 2,
                            ),
                          ),
                          errorWidget: (_, url, error) =>
                              Image.asset(AppAssets.unnamed),
                        ),
                      ) ??
                      Image.asset(AppAssets.unnamed, fit: BoxFit.contain),
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
                          '${user?.name.getOrError}',
                          style: TextStyle(
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      //
                      Flexible(
                        child: AdaptiveText(
                          '${user?.email.getOrError}',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      //
                      Flexible(
                        child: AdaptiveText(
                          '${user?.phone.getOrError}',
                          style: TextStyle(
                            fontSize: 17.0.sp,
                            fontWeight: FontWeight.w400,
                          ),
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
            color: App.resolveColor(
              Palette.primaryColor,
              dark: Palette.secondaryColor.shade300,
            ),
            child: InkWell(
              onTap: () => App.showAdaptiveBottomSheet(
                context,
                elevation: 2.0,
                isDismissible: false,
                bounce: true,
                builder: (_) => const SizedBox.shrink(),
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
                  VerticalSpace(height: 0.01.sw),
                  //
                  Flexible(
                    flex: 2,
                    child: AdaptiveButton(
                      text: 'Login',
                      height: 18.0,
                      cupertinoHeight: 0.093.sw,
                      width: 0.22.sw,
                      fontSize: 30.0.sp,
                      textColor: App.resolveColor(Colors.white),
                      padding: App.platform.fold(
                        material: () => null,
                        cupertino: () => const EdgeInsets.only(right: 10.0),
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.only(left: 0.02.sw),
                        child: Icon(
                          AmatNow.thin_long_right,
                          size: 10,
                          color: App.resolveColor(Colors.white),
                        ),
                      ),
                      backgroundColor: App.resolveColor(
                        Palette.accentColor,
                        dark: Colors.transparent,
                      ),
                      splashColor: App.resolveColor(
                        Colors.white24,
                        dark: Colors.grey.shade800,
                      ),
                      side: Utils.foldTheme(
                        light: () => null,
                        dark: () => const BorderSide(color: Colors.white70),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
