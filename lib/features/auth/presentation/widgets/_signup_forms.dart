part of signup_screen.dart;

class _FormLayout extends StatelessWidget {
  const _FormLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextFormInputLabel(text: 'First Name'),
                  //
                  NameFormField<AuthCubit, AuthState>(
                    prefix: 'First Name',
                    disabled: (s) => s.isLoading,
                    validate: (s) => s.validate,
                    field: (s) => s.rider.firstName,
                    focus: AuthState.firstNameFocus,
                    next: AuthState.lastNameFocus,
                    onChanged: (it, str) => it.firstNameChanged(str),
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
                  const TextFormInputLabel(text: 'Last Name'),
                  //
                  NameFormField<AuthCubit, AuthState>(
                    prefix: 'Last Name',
                    disabled: (s) => s.isLoading,
                    validate: (s) => s.validate,
                    field: (s) => s.rider.lastName,
                    focus: AuthState.lastNameFocus,
                    next: AuthState.newEmailFocus,
                    onChanged: (it, str) => it.lastNameChanged(str),
                  ),
                ],
              ),
            ),
          ],
        ),
        //
        VerticalSpace(height: 0.04.sw),
        //
        const Material(
          type: MaterialType.transparency,
          child: Hero(
            tag: Const.emailLabelHeroTag,
            child: TextFormInputLabel(text: 'Email Address'),
          ),
        ),
        //
        EmailFormField<AuthCubit, AuthState>(
          useHero: true,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          field: (s) => s.rider.email,
          focus: AuthState.newEmailFocus,
          next: AuthState.phoneFocus,
          response: (s) => s.status,
          onChanged: (it, str) => it.emailChanged(str),
        ),
        //
        VerticalSpace(height: 0.04.sw),
        //
        const TextFormInputLabel(text: 'Phone Number'),
        //
        PhoneFormField<AuthCubit, AuthState>(
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          field: (s) => s.rider.phone,
          focus: AuthState.phoneFocus,
          next: AuthState.newPasswordFocus,
          controller: (s) => s.phoneTextController,
          response: (s) => s.status,
          onPickerBuilder: (cubit, country) {
            if (cubit.state.selectedCountry == null) cubit.countryChanged(country);
          },
          onCountryChanged: (cubit, country) => cubit.countryChanged(country),
          onChanged: (cubit, str) => cubit.phoneNumberChanged(str),
        ),
        //
        VerticalSpace(height: 0.04.sw),
        //
        const Material(
          type: MaterialType.transparency,
          child: Hero(
            tag: Const.passwordLabelHeroTag,
            child: TextFormInputLabel(text: 'Password'),
          ),
        ),
        //
        PasswordFormField<AuthCubit, AuthState>(
          isNew: false,
          useHero: true,
          heroTag: Const.passwordFieldHeroTag,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isPasswordHidden,
          field: (s) => s.rider.password,
          focus: AuthState.newPasswordFocus,
          response: (s) => s.status,
          errorField: (f) => f.errors?.password,
          onChanged: (fn, str) => fn.passwordChanged(str),
          onToggle: (it) => it.togglePasswordVisibility(),
        ),
        //
        VerticalSpace(height: 0.02.sw),
        //
        BlocBuilder<AuthCubit, AuthState>(
          builder: (c, s) => Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AdaptiveText(
                'Password Strength:  ',
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                letterSpacing: Utils.letterSpacing,
              ),
              //
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                child: SizedBox(
                  width: 0.4.sw,
                  child: LinearProgressIndicator(
                    value: s.passwordStrength,
                    semanticsLabel: s.passwordStrength.toString(),
                    color: s.strength(
                      low: Palette.errorRed,
                      medium: Palette.yellow,
                      perfect: Palette.successGreen,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
