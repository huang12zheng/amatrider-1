import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/router/router.gr.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render ResetPaswordDialog.
class ResetPaswordDialog extends StatelessWidget {
  static double kMaxWidth = 0.85.sw;

  const ResetPaswordDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..init(),
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
                    ? navigator.popUntil(
                        (route) => route.settings.name == LoginRoute.name,
                      )
                    : null,
              ),
            ).render(c),
          ),
        ),
        child: PlatformBuilder(
          material: (_) => AlertDialog(
            scrollable: false,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Utils.buttonRadius),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: SizedBox(
              width: kMaxWidth,
              height: 0.06.sw,
              child: Material(
                type: MaterialType.transparency,
                child: AdaptiveText(
                  'Reset Password',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                  textColor: Palette.accentColor.shade400,
                ),
              ),
            ),
            titlePadding: EdgeInsets.symmetric(
              horizontal: 0.04.sw,
              vertical: 0.03.sw,
            ).copyWith(top: 0.06.sw),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 0.04.sw,
              vertical: 0.02.sw,
            ).copyWith(top: 0.0),
            content: _ResetPasswordMaterialContent(width: kMaxWidth),
          ),
          cupertino: (_) => CupertinoAlertDialog(
            scrollController: ScrollController(),
            title: SizedBox(
              width: kMaxWidth,
              height: 0.06.sw,
              child: AdaptiveText(
                'Reset Password',
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                textColor: Palette.accentColor.shade400,
              ),
            ),
            content: const _ResetPasswordCupertinoContent(),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: _.read<AuthCubit>().resetPassword,
                child: Visibility(
                  visible: !_.watch<AuthCubit>().state.isLoading,
                  replacement: App.loadingSpinningLines,
                  child: const Text('Confirm Password Reset'),
                ),
              ),
              CupertinoDialogAction(
                isDefaultAction: true,
                isDestructiveAction: true,
                onPressed: navigator.pop,
                child: const Text('Close'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResetPasswordCupertinoContent extends StatelessWidget {
  const _ResetPasswordCupertinoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.antiAlias,
      physics: Utils.physics,
      scrollDirection: Axis.vertical,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (c, s) => CupertinoFormSection.insetGrouped(
          margin: EdgeInsets.only(top: 0.03.sw),
          backgroundColor: Colors.transparent,
          children: [
            AdaptiveTextFormInput.flat(
              hintText: 'Enter Token (OTP)',
              autoFocus: true,
              disabled: s.isLoading,
              validate: s.validate,
              focus: AuthState.tokenFocus,
              next: AuthState.resetPasswordFocus,
              keyboardType: TextInputType.text,
              onChanged: c.read<AuthCubit>().otpCodeChanged,
              errorText: s.code.value.fold(
                (f) => f.message,
                (_) => s.status.fold(
                  () => null,
                  (http) => http?.response.maybeMap(
                    error: (f) => f.errors?.token?.firstOrNone,
                    orElse: () => null,
                  ),
                ),
              ),
            ),
            //
            AdaptiveTextFormInput.flat(
              hintText: 'New Password',
              enableSuggestions: false,
              autoCorrect: false,
              disabled: s.isLoading,
              validate: s.validate,
              obscureText: s.isPasswordHidden,
              focus: AuthState.resetPasswordFocus,
              next: AuthState.passwordConfirmationFocus,
              keyboardType: TextInputType.visiblePassword,
              autoFillHints: [AutofillHints.password],
              onChanged: c.read<AuthCubit>().passwordChanged,
              errorText: s.rider.password.value.fold(
                (f) => f.message,
                (_) => s.status.fold(
                  () => null,
                  (http) => http?.response.maybeMap(
                    error: (f) => f.errors?.password?.firstOrNone,
                    orElse: () => null,
                  ),
                ),
              ),
            ),
            //
            AdaptiveTextFormInput.flat(
              hintText: 'Confirm New Password',
              enableSuggestions: false,
              autoCorrect: false,
              disabled: s.isLoading,
              obscureText: s.isPasswordHidden,
              validate: s.validate,
              focus: AuthState.passwordConfirmationFocus,
              keyboardType: TextInputType.visiblePassword,
              autoFillHints: [AutofillHints.newPassword],
              onChanged: c.read<AuthCubit>().passwordConfirmationChanged,
              errorText: s.confirmPassword.value.fold(
                (f) => f.message,
                (_) => null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ResetPasswordMaterialContent extends StatelessWidget {
  final double width;

  const _ResetPasswordMaterialContent({Key? key, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        controller: ScrollController(),
        physics: Utils.physics,
        scrollDirection: Axis.vertical,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            BlocBuilder<AuthCubit, AuthState>(
              builder: (c, s) => Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AdaptiveTextFormInput(
                    hintText: 'Enter Token (OTP)',
                    hintStyle: TextStyle(
                      fontSize: 16.sp,
                      color: Utils.foldTheme(
                        light: () => Colors.grey,
                        dark: () => null,
                      ),
                    ),
                    disabled: s.isLoading,
                    validate: s.validate,
                    focus: AuthState.tokenFocus,
                    next: AuthState.resetPasswordFocus,
                    keyboardType: TextInputType.text,
                    errorText: s.code.value.fold(
                      (f) => f.message,
                      (_) => s.status.fold(
                        () => null,
                        (http) => http?.response.maybeMap(
                          error: (f) => f.errors?.token?.firstOrNone,
                          orElse: () => null,
                        ),
                      ),
                    ),
                    onChanged: c.read<AuthCubit>().otpCodeChanged,
                  ),
                  //
                  VerticalSpace(height: 0.04.sw),
                  //
                  PasswordFormField<AuthCubit, AuthState>(
                    isNew: true,
                    disabled: (s) => s.isLoading,
                    validate: (s) => s.validate,
                    isObscured: (s) => s.isPasswordHidden,
                    field: (s) => s.rider.password,
                    focus: AuthState.resetPasswordFocus,
                    next: AuthState.passwordConfirmationFocus,
                    hintText: (s) => 'Your New Password',
                    response: (s) => s.status,
                    cupertinoPadding: Utils.inputPadding,
                    materialPadding: Utils.inputPadding,
                    errorField: (f) => f.errors?.password,
                    onChanged: (fn, str) => fn.passwordChanged(str),
                    onToggle: (it) => it.togglePasswordVisibility(),
                  ),
                  //
                  VerticalSpace(height: 0.04.sw),
                  //
                  PasswordFormField<AuthCubit, AuthState>(
                    isNew: true,
                    disabled: (s) => s.isLoading,
                    validate: (s) => s.validate,
                    isObscured: (s) => s.isPasswordHidden,
                    field: (s) => s.confirmPassword,
                    focus: AuthState.passwordConfirmationFocus,
                    hintText: (s) => 'Confirm New Password',
                    response: (s) => s.status,
                    cupertinoPadding: Utils.inputPadding,
                    materialPadding: Utils.inputPadding,
                    onChanged: (fn, str) => fn.passwordConfirmationChanged(str),
                    suffixIcon: (s) => Visibility(
                      visible: s.confirmPassword.isValid && s.isPasswordHidden,
                      child: Icon(
                        s.passwordMatches
                            ? Icons.check_circle
                            : Icons.cancel_rounded,
                        color: s.passwordMatches
                            ? Palette.successGreen
                            : Palette.errorRed,
                        size: 25,
                      ),
                    ),
                  ),
                  //
                  Center(
                    child: GestureDetector(
                      onTap: () => c.read<AuthCubit>().forgotPassword(false),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0)
                            .copyWith(top: 0.04.sw),
                        child: AdaptiveText.rich(
                          TextSpan(children: [
                            const TextSpan(text: 'Didn\'t get the code?'),
                            TextSpan(
                              text: '\nResend it',
                              style: TextStyle(
                                color: Utils.foldTheme(
                                  context: context,
                                  light: () => Palette.accentColor,
                                  dark: () => Palette.accentColor.shade100,
                                ),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ]),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: Utils.labelLetterSpacing,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: 0.07.sw),
            //
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<AuthCubit, AuthState>(
                  buildWhen: (p, c) => p.isLoading != c.isLoading,
                  builder: (c, s) => Hero(
                    tag: Const.authButtonHeroTag,
                    child: AppButton(
                      text: 'Confirm Password Reset',
                      isLoading: s.isLoading,
                      onPressed: c.read<AuthCubit>().resetPassword,
                    ),
                  ),
                ),
                //
                VerticalSpace(height: 0.03.sw),
                //
                BlocBuilder<AuthCubit, AuthState>(
                  buildWhen: (p, c) => p.isLoading != c.isLoading,
                  builder: (c, s) => AdaptiveButton(
                    text: 'Cancel',
                    disabled: s.isLoading,
                    textColor: Utils.foldTheme(
                      light: () => Palette.accentColor,
                    ),
                    textStyle: const TextStyle(
                      letterSpacing: Utils.labelLetterSpacing,
                    ),
                    backgroundColor: Colors.transparent,
                    splashColor: Utils.foldTheme(
                      light: () => Colors.grey.shade300,
                      dark: () => Colors.grey.shade700,
                    ),
                    side: Utils.foldTheme(
                      light: () => null,
                      dark: () => const BorderSide(color: Palette.accentColor),
                    ),
                    onPressed: navigator.pop,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
