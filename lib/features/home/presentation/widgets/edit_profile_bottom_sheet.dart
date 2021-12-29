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
                      error: (f) => f.foldCode(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (th) => th?.response.map(
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(
              message: s.message,
              listener: (_) => _?.fold(dismissed: s.pop ? navigator.pop : null),
            ).render(c),
          ),
        ),
        child: Builder(
          builder: (c) => WillPopScope(
            onWillPop: () async => c.read<AuthCubit>().state.isLoading == false,
            child: SingleChildScrollView(
              clipBehavior: Clip.antiAlias,
              controller: ScrollController(),
              physics: Utils.physics,
              scrollDirection: Axis.vertical,
              padding: MediaQuery.of(c).viewInsets,
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
                        child: WidgetVisibility(
                          visible: c.select(
                            (AuthCubit it) => it.state.isLoading && it.state.rider.profile.isSome(),
                          ),
                          child: Utils.circularLoader(color: Palette.accentColor),
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
                                child: Theme.of(c).platform.fold(
                                      material: () => AppIconButton(
                                        onPressed: navigator.pop,
                                        tooltip: 'Back',
                                        elevation: 0.0,
                                        backgroundColor: Theme.of(c).scaffoldBackgroundColor,
                                        child: const Icon(Icons.keyboard_backspace_rounded),
                                      ),
                                      cupertino: () => AdaptiveButton(
                                        text: 'Close',
                                        width: 0.15.sw,
                                        cupertinoHeight: 0.04.sh,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 0.02.sw,
                                        ),
                                        splashColor: App.resolveColor(
                                          Colors.grey.shade300,
                                          dark: Colors.grey.shade800,
                                        ),
                                        fontSize: 18.5.sp,
                                        elevation: 0.0,
                                        backgroundColor: App.resolveColor(
                                          Palette.primaryColor,
                                          dark: Palette.primaryColor,
                                        ),
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
                            height: (s) => 0.25.sw,
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
                                            App.platform.fold(
                                              material: () => const _FirstNameUpdateField(),
                                              cupertino: () => CupertinoFormSection(
                                                children: [const _FirstNameUpdateField()],
                                              ),
                                            ),
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
                                            App.platform.fold(
                                              material: () => const _LastNameUpdateField(),
                                              cupertino: () => CupertinoFormSection(
                                                children: [const _LastNameUpdateField()],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.03.sw),
                                //
                                App.platform.fold(
                                  material: () => const Hero(
                                    tag: Const.emailLabelHeroTag,
                                    child: TextFormInputLabel(
                                      text: 'Email Address',
                                    ),
                                  ),
                                  cupertino: () => Utils.nothing,
                                ),
                                //
                                App.platform.fold(
                                  material: () => const _EmailUpdateField(),
                                  cupertino: () => CupertinoFormSection(
                                    children: [const _EmailUpdateField()],
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.03.sw),
                                //
                                App.platform.fold(
                                  material: () => const Hero(
                                    tag: Const.emailLabelHeroTag,
                                    child: TextFormInputLabel(
                                      text: 'Phone Number',
                                    ),
                                  ),
                                  cupertino: () => Utils.nothing,
                                ),
                                //
                                App.platform.fold(
                                  material: () => const _PhoneNumberField(),
                                  cupertino: () => CupertinoFormSection(
                                    children: [const _PhoneNumberField()],
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.03.sw),
                                //
                                Flexible(
                                  child: AppOutlinedButton(
                                    text: 'Change Phone Number',
                                    disabled: c.select(
                                      (AuthCubit it) => it.state.isLoading,
                                    ),
                                    cupertinoHeight: 0.055.sh,
                                    padding: App.platform.cupertino(EdgeInsets.zero),
                                    onPressed: () => App.showAdaptiveBottomSheet(
                                      c,
                                      elevation: 2.0,
                                      builder: (_) => const _PhoneUpdateBottomSheet(),
                                    ),
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.06.sw),
                                //
                                Hero(
                                  tag: Const.profileLogoutBtnHerotag,
                                  child: BlocSelector<AuthCubit, AuthState, bool>(
                                    selector: (s) => s.isLoading,
                                    builder: (c, isLaoding) => AppButton(
                                      text: 'Save Changes',
                                      disabled: isLaoding,
                                      isLoading: isLaoding && c.select((AuthCubit it) => it.state.rider.phone.getOrNull != null),
                                      onPressed: c.read<AuthCubit>().updateProfile,
                                    ),
                                  ),
                                ),
                                //
                                VerticalSpace(height: App.sidePadding),
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
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (c, s) => NameFormField<AuthCubit, AuthState>(
        initial: (s) => s.rider.firstName.getOrNull,
        disabled: (s) => s.isLoading,
        validate: (s) => s.validate,
        field: (s) => s.rider.firstName,
        focus: AuthState.firstNameFocus,
        next: AuthState.lastNameFocus,
        cupertinoPadding: EdgeInsets.zero,
        onChanged: (it, str) => it.firstNameChanged(str),
      ),
    );
  }
}

class _LastNameUpdateField extends StatelessWidget {
  const _LastNameUpdateField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NameFormField<AuthCubit, AuthState>(
      initial: (s) => s.rider.lastName.getOrNull,
      disabled: (s) => s.isLoading,
      validate: (s) => s.validate,
      field: (s) => s.rider.lastName,
      focus: AuthState.lastNameFocus,
      // next: AuthState.emailFocus,
      cupertinoPadding: EdgeInsets.zero,
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
      initial: (s) => s.rider.email.getOrNull,
      disabled: (_) => true,
      readOnly: (_) => true,
      response: (s) => s.status,
      cupertinoPadding: EdgeInsets.zero,
      // onChanged: (it, str) => it.emailChanged(str),
    );
  }
}

class _PhoneNumberField extends StatelessWidget {
  const _PhoneNumberField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhoneFormField<AuthCubit, AuthState>(
      initial: (s) => s.rider.phone.getOrNull,
      disabled: (_) => true,
      readOnly: (_) => true,
      field: (s) => s.rider.phone,
      response: (s) => s.status,
      cupertinoPadding: EdgeInsets.zero,
    );
  }
}
