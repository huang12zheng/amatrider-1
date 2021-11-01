part of setting_screen.dart;

/// A stateless widget to render _PasswordUpdateBottomSheet.
class _PasswordUpdateBottomSheet extends StatelessWidget {
  const _PasswordUpdateBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
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
                dismissed: () =>
                    s.pop ? navigator.popUntil((r) => r.isFirst) : null,
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
                child: App.platform.fold(
                  material: () => const _MaterialUpdateForm(),
                  cupertino: () => const _CupertinoUpdateForm(),
                ),
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                child: BlocBuilder<AuthCubit, AuthState>(
                  buildWhen: (p, c) => p.isLoading != c.isLoading,
                  builder: (c, s) => Hero(
                    tag: Const.profileLogoutBtnHerotag,
                    child: AppButton(
                      text: 'Save Changes',
                      isLoading: s.isLoading,
                      onPressed: c.read<AuthCubit>().updatePassword,
                    ),
                  ),
                ),
              ),
              //
              VerticalSpace(height: App.sidePadding),
            ],
          ),
        ),
      ),
    );
  }
}

class _MaterialUpdateForm extends StatelessWidget {
  const _MaterialUpdateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextFormInputLabel(text: 'Old Password'),
        //
        PasswordFormField<AuthCubit, AuthState>(
          isNew: false,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isPasswordHidden,
          field: (s) => s.oldPassword,
          focus: AuthState.oldPasswordFocus,
          next: AuthState.passwordFocus,
          response: (s) => s.status,
          errorField: (f) => f.errors?.oldPassword,
          onChanged: (fn, str) => fn.oldPasswordChanged(str),
          onToggle: (it) => it.togglePasswordVisibility(),
        ),
        //
        VerticalSpace(height: 0.03.sw),
        //
        const TextFormInputLabel(text: 'New Password'),
        //
        PasswordFormField<AuthCubit, AuthState>(
          isNew: true,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isPasswordHidden,
          field: (s) => s.rider.password,
          focus: AuthState.passwordFocus,
          next: AuthState.passwordConfirmationFocus,
          response: (s) => s.status,
          errorField: (f) => f.errors?.password,
          onChanged: (fn, str) => fn.passwordChanged(str),
          onToggle: (it) => it.togglePasswordVisibility(),
        ),
        //
        VerticalSpace(height: 0.03.sw),
        //
        const TextFormInputLabel(text: 'Confirm New Password'),
        //
        PasswordFormField<AuthCubit, AuthState>(
          isNew: true,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isPasswordHidden,
          field: (s) => s.confirmPassword,
          focus: AuthState.passwordConfirmationFocus,
          response: (s) => s.status,
          onChanged: (fn, str) => fn.passwordConfirmationChanged(str),
          suffixIcon: (s) => Visibility(
            visible: s.confirmPassword.isValid && s.isPasswordHidden,
            child: Icon(
              s.passwordMatches ? Icons.check_circle : Icons.cancel_rounded,
              color:
                  s.passwordMatches ? Palette.successGreen : Palette.errorRed,
              size: 25,
            ),
          ),
        ),
      ],
    );
  }
}

class _CupertinoUpdateForm extends StatelessWidget {
  const _CupertinoUpdateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoFormSection.insetGrouped(
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.zero,
      children: [
        PasswordFormField<AuthCubit, AuthState>(
          prefix: 'Old Password',
          isNew: false,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isPasswordHidden,
          field: (s) => s.oldPassword,
          focus: AuthState.oldPasswordFocus,
          next: AuthState.passwordFocus,
          response: (s) => s.status,
          errorField: (f) => f.errors?.oldPassword,
          onChanged: (fn, str) => fn.oldPasswordChanged(str),
          cupertinoFormType: CupertinoFormType.textfield,
          suffixMode: (s) => OverlayVisibilityMode.always,
          onToggle: (it) => it.togglePasswordVisibility(),
        ),
        //
        PasswordFormField<AuthCubit, AuthState>(
          prefix: 'New Password',
          isNew: true,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isPasswordHidden,
          field: (s) => s.rider.password,
          focus: AuthState.passwordFocus,
          next: AuthState.passwordConfirmationFocus,
          response: (s) => s.status,
          errorField: (f) => f.errors?.password,
          onChanged: (fn, str) => fn.passwordChanged(str),
          cupertinoFormType: CupertinoFormType.textfield,
          suffixMode: (s) => OverlayVisibilityMode.always,
          onToggle: (it) => it.togglePasswordVisibility(),
        ),
        //
        PasswordFormField<AuthCubit, AuthState>(
          prefix: 'Confirm Password',
          isNew: true,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isPasswordHidden,
          field: (s) => s.confirmPassword,
          focus: AuthState.passwordConfirmationFocus,
          response: (s) => s.status,
          cupertinoFormType: CupertinoFormType.textfield,
          cupertinoPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 12.0),
          materialPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 12.0),
          onChanged: (fn, str) => fn.passwordConfirmationChanged(str),
          suffixIcon: (s) => Icon(
            s.passwordMatches ? Icons.check_circle : Icons.cancel_rounded,
            color: s.passwordMatches ? Palette.successGreen : Palette.errorRed,
            size: 25,
          ),
        ),
      ],
    );
  }
}
