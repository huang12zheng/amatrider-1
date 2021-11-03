part of profile_page.dart;

/// A stateless widget to render _PhoneUpdateBottomSheet.
class _PhoneUpdateBottomSheet extends StatelessWidget {
  static const dropdownBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(Utils.inputBorderRadius),
    bottomLeft: Radius.circular(Utils.inputBorderRadius),
  );

  static const dropdownErrorBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Palette.errorRed, width: 1.5),
    borderRadius: dropdownBorderRadius,
  );

  const _PhoneUpdateBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..fetchCountries(),
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
              listener: (_) => _?.fold(
                dismissed: () => s.pop
                    ? navigator.popAndPush(OTPVerificationRoute(
                        type: OTPVerificationType.newPhoneNumber,
                      ))
                    : null,
              ),
            ).render(c),
          ),
        ),
        child: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          controller: ScrollController(),
          physics: Utils.physics,
          scrollDirection: Axis.vertical,
          padding: MediaQuery.of(context).viewInsets,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    App.platform.fold(
                      cupertino: () => Utils.nothing,
                      material: () => const TextFormInputLabel(
                        text: 'New Phone Number',
                      ),
                    ),
                    //
                    App.platform.fold(
                      material: () => PhoneFormField<AuthCubit, AuthState>(
                        disabled: (s) => s.isLoading,
                        validate: (s) => s.validate,
                        field: (s) => s.rider.phone,
                        focus: AuthState.newPhoneFocus,
                        borderRadius: BorderRadius.circular(100),
                        controller: (s) => s.phoneTextController,
                        prefixWidget: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 0.22.w),
                          child: BlocBuilder<AuthCubit, AuthState>(
                            builder: (c, s) => CountryListPick(
                              appBar: AppBar(
                                backgroundColor: Utils.foldTheme(
                                  light: () => Palette.cardColorLight,
                                  dark: () => Palette.cardColorDark,
                                ),
                                elevation: 0.0,
                                title: const Text('Choose a country'),
                              ),
                              pickerBuilder: (context, countryCode) => Row(
                                children: [
                                  Flexible(
                                    child: Image.asset(
                                      '${countryCode?.flagUri}',
                                      width: 30,
                                      height: 30,
                                      package: 'country_list_pick',
                                    ),
                                  ),
                                  //
                                  HorizontalSpace(width: 0.02.sw),
                                  //
                                  Flexible(
                                    child: AdaptiveText(
                                      '${countryCode?.dialCode}',
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                              theme: CountryTheme(
                                isShowFlag: true,
                                isShowTitle: true,
                                isShowCode: true,
                                isDownIcon: true,
                                showEnglishName: true,
                                searchHintText: 'Start typing..',
                                initialSelection: '${Country.turkeyISO}',
                                alphabetSelectedBackgroundColor:
                                    Palette.accentColor,
                              ),
                              initialSelection: '${Country.turkeyISO}',
                              onChanged: (code) {
                                print(code?.name);
                                print(code?.code);
                                print(code?.dialCode);
                                print(code?.toCountryStringOnly());
                              },
                              useUiOverlay: true,
                              useSafeArea: false,
                            ),
                          ),
                        ),
                        response: (s) => s.status,
                        onChanged: (fn, str) => fn.phoneNumberChanged(str),
                      ),
                      cupertino: () => CupertinoFormSection(children: [
                        PhoneFormField<AuthCubit, AuthState>(
                          prefix: 'Phone',
                          disabled: (s) => s.isLoading,
                          validate: (s) => s.validate,
                          focus: AuthState.newPhoneFocus,
                          response: (s) => s.status,
                          field: (s) => s.rider.phone,
                          onChanged: (fn, str) => fn.phoneNumberChanged(str),
                        ),
                      ]),
                    ),
                    //
                    VerticalSpace(height: 0.04.sw),
                    //
                    BlocBuilder<AuthCubit, AuthState>(
                      buildWhen: (p, c) => p.isLoading != c.isLoading,
                      builder: (c, s) => Hero(
                        tag: Const.profileLogoutBtnHerotag,
                        child: AppButton(
                          text: 'Continue',
                          isLoading: s.isLoading && !s.countries.isEmpty(),
                          onPressed: c.read<AuthCubit>().sendPhoneUpdateOTP,
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
        ),
      ),
    );
  }
}
