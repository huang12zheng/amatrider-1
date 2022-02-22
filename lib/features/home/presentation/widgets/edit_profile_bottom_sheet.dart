part of profile_page.dart;

/// A stateless widget to render _EditProfileBottomSheet.
class _EditProfileBottomSheet extends StatelessWidget {
  const _EditProfileBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..init(loader: true),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.fold(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (th) => th?.response.map(
            info: (i) => PopupDialog.info(message: i.message).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show).render(c),
            success: (s) => PopupDialog.success(
              message: s.message,
              listener: (_) => _?.fold(
                dismissed: s.pop ? navigator.pop : null,
              ),
            ).render(c),
          ),
        ),
        child: Builder(
          builder: (c) => WillPopScope(
            onWillPop: () async => c.read<AuthCubit>().state.isLoading == false,
            child: AdaptiveBottomSheet(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  VerticalSpace(height: 0.04.sw),
                  //
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Utils.cardRadius),
                    child: DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.grey),
                      child: SizedBox(height: 0.015.sw, width: 0.2.sw),
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.03.sw),
                  //
                  Stack(
                    children: [
                      Positioned(
                        top: 5,
                        right: App.sidePadding,
                        child: BlocBuilder<AuthCubit, AuthState>(
                          builder: (c, s) => AnimatedVisibility(
                            visible: s.rider.phone.getOrNull == null && s.isLoading,
                            child: Padding(padding: const EdgeInsets.all(3), child: Utils.circularLoader(color: Palette.accentColor)),
                          ),
                        ),
                      ),
                      //
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: App.platform.fold(
                                    material: () => 0.03.sw,
                                    cupertino: () => App.sidePadding,
                                  ),
                                ),
                                child: Utils.platform_(
                                  material: AppIconButton(
                                    onPressed: navigator.pop,
                                    tooltip: 'Back',
                                    elevation: 0.0,
                                    backgroundColor: Theme.of(c).scaffoldBackgroundColor,
                                    child: const Icon(Icons.keyboard_backspace_rounded),
                                  ),
                                  cupertino: AdaptiveButton(
                                    text: 'Close',
                                    width: 0.1.sw,
                                    cupertinoHeight: 0.04.sh,
                                    padding: EdgeInsets.zero,
                                    splashColor: App.resolveColor(
                                      Colors.grey.shade300,
                                      dark: Colors.grey.shade800,
                                    ),
                                    fontSize: 18.5.sp,
                                    elevation: 0.0,
                                    backgroundColor: Colors.transparent,
                                    textColor: Palette.accentColor,
                                    onPressed: navigator.pop,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //
                          VerticalSpace(height: 0.02.sw),
                          //
                          Padding(
                            padding: EdgeInsets.only(left: App.sidePadding),
                            child: Headline('Edit Profile'),
                          ),
                          //
                          ImageUploadWidget<AuthCubit, AuthState>(
                            height: (s) => 0.25.w,
                            width: (s) => 0.25.w,
                            isLoading: (s) => s.isLoading,
                            showCenterIcon: true,
                            localFit: BoxFit.fill,
                            networkFit: BoxFit.fill,
                            padding: EdgeInsets.all(App.sidePadding),
                            url: (s) => s.rider.photo.getOrNull,
                            selected: (s) => s.selectedPhoto,
                            onCameraClicked: (cubit, source) => cubit.pickImage(source),
                            onGalleryClicked: (cubit, source) => cubit.pickImage(source),
                          ),
                          //
                          VerticalSpace(height: 0.01.sw),
                          //
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            App.platform.fold(
                                              material: () => const TextFormInputLabel(text: 'First Name'),
                                              cupertino: () => Utils.nothing,
                                            ),
                                            //
                                            const _FirstNameUpdateField()
                                          ],
                                        ),
                                      ),
                                      //
                                      HorizontalSpace(width: 0.03.sw),
                                      //
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            App.platform.fold(
                                              material: () => const TextFormInputLabel(text: 'Last Name'),
                                              cupertino: () => Utils.nothing,
                                            ),
                                            //
                                            const _LastNameUpdateField(),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.03.sw),
                                //
                                Utils.platform_(
                                  cupertino: Utils.nothing,
                                  material: const MyHero(
                                    tag: Const.emailLabelHeroTag,
                                    type: MaterialType.transparency,
                                    child: TextFormInputLabel(text: 'Email Address'),
                                  ),
                                )!,
                                //
                                const _EmailUpdateField(),
                                //
                                VerticalSpace(height: 0.03.sw),
                                //
                                Utils.platform_(
                                  cupertino: Utils.nothing,
                                  material: const MyHero(
                                    tag: Const.emailLabelHeroTag,
                                    type: MaterialType.transparency,
                                    child: TextFormInputLabel(text: 'Phone Number'),
                                  ),
                                )!,
                                //
                                const _PhoneNumberField(),
                                //
                                VerticalSpace(height: 0.03.sw),
                                //
                                Flexible(
                                  child: AppOutlinedButton(
                                    text: 'Change Phone Number',
                                    disabled: c.select((AuthCubit it) => it.state.isLoading),
                                    cupertinoHeight: 0.055.sh,
                                    padding: App.platform.cupertino(EdgeInsets.zero),
                                    onPressed: () => App.showAdaptiveBottomSheet(
                                      c,
                                      elevation: 2.0,
                                      builder: (_) => const PhoneUpdateBottomSheet(),
                                    ),
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.06.sw),
                                //
                                SafeArea(
                                  top: false,
                                  left: false,
                                  right: false,
                                  child: MyHero(
                                    tag: Const.profileLogoutBtnHerotag,
                                    type: MaterialType.transparency,
                                    child: BlocBuilder<AuthCubit, AuthState>(
                                      builder: (c, s) => AppButton(
                                        text: 'Save Changes',
                                        isLoading: s.rider.phone.getOrNull != null && s.isLoading,
                                        disabled: !c.read<AuthCubit>().isDirty && s.selectedPhoto == null,
                                        onPressed: c.read<AuthCubit>().updateProfile,
                                      ),
                                    ),
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.02.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FirstNameUpdateField extends StatelessWidget {
  const _FirstNameUpdateField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NameFormField<AuthCubit, AuthState>(
      initial: (s) => s.rider.firstName.getOrEmpty,
      hintText: (s) => App.platform.cupertino('First Name'),
      disabled: (s) => s.isLoading,
      validate: (s) => s.validate,
      field: (s) => s.rider.firstName,
      focus: AuthState.firstNameFocus,
      next: AuthState.lastNameFocus,
      onChanged: (it, str) => it.firstNameChanged(str),
    );
  }
}

class _LastNameUpdateField extends StatelessWidget {
  const _LastNameUpdateField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NameFormField<AuthCubit, AuthState>(
      initial: (s) => s.rider.lastName.getOrEmpty,
      hintText: (s) => App.platform.cupertino('Last Name'),
      disabled: (s) => s.isLoading,
      validate: (s) => s.validate,
      field: (s) => s.rider.lastName,
      focus: AuthState.lastNameFocus,
      onChanged: (it, str) => it.lastNameChanged(str),
    );
  }
}

class _EmailUpdateField extends StatelessWidget {
  const _EmailUpdateField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmailFormField<AuthCubit, AuthState>(
      useHero: false,
      initial: (s) => s.rider.email.getOrEmpty,
      disabled: (_) => true,
      readOnly: (_) => true,
      response: (s) => s.status,
    );
  }
}

class _PhoneNumberField extends StatelessWidget {
  const _PhoneNumberField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhoneFormField<AuthCubit, AuthState>(
      initial: (s) => s.rider.phone.noDialCode?.getOrNull ?? '',
      disabled: (_) => true,
      readOnly: (_) => true,
      response: (s) => s.status,
      selectedCountry: (s) => s.selectedCountry,
      hideCountryPicker: (s) => s.selectedCountry == null,
    );
  }
}
