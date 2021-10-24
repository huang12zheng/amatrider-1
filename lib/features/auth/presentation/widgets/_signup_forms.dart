part of signup_screen.dart;

class _MaterialSignUp extends StatelessWidget {
  static const dropdownBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(Utils.inputBorderRadius),
    bottomLeft: Radius.circular(Utils.inputBorderRadius),
  );

  static const dropdownErrorBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Palette.errorRed, width: 1.5),
    borderRadius: dropdownBorderRadius,
  );

  const _MaterialSignUp({Key? key}) : super(key: key);

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
                    field: (s) => s.user.firstName,
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
                    field: (s) => s.user.lastName,
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
          useHero: false,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          field: (s) => s.user.email,
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
          field: (s) => s.user.phone,
          focus: AuthState.phoneFocus,
          next: AuthState.newPasswordFocus,
          borderRadius: BorderRadius.circular(100),
          controller: (s) => s.phoneTextController,
          prefixWidget: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 0.3.sw),
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (c, s) => DropdownFieldWidget<Country>(
                height: 46,
                items: s.countries.asList(),
                disabled: s.isLoading,
                disabledHintWidget: Center(
                  child: CircularProgressBar.adaptive(
                      strokeWidth: 2, width: 0.06.sw, height: 0.06.sw),
                ),
                validate: s.validate,
                selected: s.selectedCountry,
                onChanged: c.read<AuthCubit>().countryChanged,
                errorBorder: dropdownErrorBorder,
                focusedErrorBorder: dropdownErrorBorder,
                child: (it) => Row(
                  children: [
                    Flexible(
                      child: Flag.fromString(
                        '${it?.iso?.getOrEmpty}',
                        height: 20,
                        width: 30,
                        fit: BoxFit.fill,
                      ),
                    ),
                    //
                    HorizontalSpace(width: 0.02.sw),
                    //
                    Flexible(
                      child: AdaptiveText(
                        '${it?.dialCode?.getOrEmpty}',
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          response: (s) => s.status,
          onChanged: (fn, str) => fn.phoneNumberChanged(str),
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
          // heroTag: Const.passwordFieldHeroTag,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isPasswordHidden,
          field: (s) => s.user.password,
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

class _CupertinoSignUp extends StatelessWidget {
  const _CupertinoSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoFormSection(
          header: const AdaptiveText('Personal Details'),
          // footer: const Divider(),
          children: [
            NameFormField<AuthCubit, AuthState>(
              prefix: 'First Name',
              disabled: (s) => s.isLoading,
              validate: (s) => s.validate,
              field: (s) => s.user.firstName,
              focus: AuthState.firstNameFocus,
              next: AuthState.lastNameFocus,
              onChanged: (it, str) => it.firstNameChanged(str),
            ),
            //
            NameFormField<AuthCubit, AuthState>(
              prefix: 'Last Name',
              disabled: (s) => s.isLoading,
              validate: (s) => s.validate,
              field: (s) => s.user.lastName,
              focus: AuthState.lastNameFocus,
              next: AuthState.newEmailFocus,
              onChanged: (it, str) => it.lastNameChanged(str),
            ),
          ],
        ),
        //
        CupertinoFormSection(
          header: const AdaptiveText('Account Details'),
          children: [
            EmailFormField<AuthCubit, AuthState>(
              prefix: 'Email',
              disabled: (s) => s.isLoading,
              validate: (s) => s.validate,
              field: (s) => s.user.email,
              focus: AuthState.newEmailFocus,
              next: AuthState.phoneFocus,
              response: (s) => s.status,
              onChanged: (it, str) => it.emailChanged(str),
            ),
            //
            // PhoneFormField<AuthCubit, AuthState>(
            //   prefix: 'Phone',
            //   disabled: (s) => s.isLoading,
            //   validate: (s) => s.validate,
            //   field: (s) => s.user.phone,
            //   focus: AuthState.phoneFocus,
            //   next: AuthState.newPasswordFocus,
            //   response: (s) => s.status,
            //   maxLength: (s) => s.user.phone.country.digitsCount,
            //   onChanged: (fn, str) => fn.phoneNumberChanged(str),
            // ),
            //
            PasswordFormField<AuthCubit, AuthState>(
              isNew: true,
              prefix: 'Password',
              heroTag: Const.passwordFieldHeroTag,
              disabled: (s) => s.isLoading,
              validate: (s) => s.validate,
              isObscured: (s) => s.isPasswordHidden,
              field: (s) => s.user.password,
              focus: AuthState.newPasswordFocus,
              response: (s) => s.status,
              // responseField: (f) => f.errors?.password,
              errorField: (f) => f.errors?.password,
              cupertinoFormType: CupertinoFormType.textfield,
              suffixMode: (s) => OverlayVisibilityMode.always,
              onChanged: (fn, str) => fn.passwordChanged(str),
              onToggle: (it) => it.togglePasswordVisibility(),
            ),
          ],
        ),
        //
        VerticalSpace(height: 0.02.sw),
        //
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 0.4.sw,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(100.0),
              ),
              child: BlocBuilder<AuthCubit, AuthState>(
                builder: (c, s) => LinearProgressIndicator(
                  value: s.passwordStrength,
                  semanticsLabel: s.passwordStrength.toString(),
                  backgroundColor: Colors.grey,
                  color: s.strength(
                    low: Palette.errorRed,
                    medium: Palette.yellow,
                    perfect: Palette.successGreen,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
