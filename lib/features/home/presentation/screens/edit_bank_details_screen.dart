library edit_bank_details_screen.dart;

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render EditBankDetailsScreen.
class EditBankDetailsScreen extends StatelessWidget with AutoRouteWrapper {
  const EditBankDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..getBankAccount(),
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
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message).render(c),
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (res) => PopupDialog.success(
              duration: const Duration(seconds: 2),
              message: res.message,
              listener: (status) => status?.fold(
                dismissed: () {},
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(title: App.platform.cupertino('Bank Account Information')),
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        controller: ScrollController(),
        physics: Utils.physics,
        padding: EdgeInsets.symmetric(
          horizontal: App.sidePadding,
        ).copyWith(top: 0.02.sw),
        child: SafeArea(
          left: false,
          right: false,
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!App.platform.isIOS) ...[
                AdaptiveText(
                  'Bank Account Information',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //
                VerticalSpace(height: 0.04.sw),
              ],
              //
              AdaptiveText(
                'Please enter the account details you would like to use in getting paid.',
                fontSize: 17.sp,
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              Headline(
                'Bank Name',
                fontSize: 16.sp,
                textColor: Palette.neutralLabel,
                textColorDark: Palette.neutralLabelDark,
              ),
              //
              VerticalSpace(height: 0.02.sw),
              //
              ReactiveTextFormField<AuthCubit, AuthState>(
                initial: (s) => s.bankAccount.bank.getOrNull,
                disabled: (s) => s.isLoading,
                keyboardType: TextInputType.text,
                capitalization: TextCapitalization.words,
                focus: AuthState.bankNameFocus,
                next: AuthState.accountNameFocus,
                field: (s) => s.bankAccount.bank,
                validate: (s) => s.validate,
                response: (s) => s.status,
                errorField: (s) => s.errors?.bankName,
                onChanged: (cubit, it) => cubit.bankNameChanged(it),
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              Headline(
                'Account Name',
                fontSize: 16.sp,
                textColor: Palette.neutralLabel,
                textColorDark: Palette.neutralLabelDark,
              ),
              //
              VerticalSpace(height: 0.02.sw),
              //
              ReactiveTextFormField<AuthCubit, AuthState>(
                initial: (s) => s.bankAccount.accountName.getOrNull,
                disabled: (s) => s.isLoading,
                keyboardType: TextInputType.text,
                capitalization: TextCapitalization.none,
                focus: AuthState.accountNameFocus,
                next: AuthState.accountNumberFocus,
                field: (s) => s.bankAccount.accountName,
                validate: (s) => s.validate,
                response: (s) => s.status,
                errorField: (s) => s.errors?.accountName,
                onChanged: (cubit, it) => cubit.accountNameChanged(it),
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              Headline(
                'Account Number',
                fontSize: 16.sp,
                textColor: Palette.neutralLabel,
                textColorDark: Palette.neutralLabelDark,
              ),
              //
              VerticalSpace(height: 0.02.sw),
              //
              ReactiveTextFormField<AuthCubit, AuthState>(
                initial: (s) => s.bankAccount.accountNumber.getOrNull,
                disabled: (s) => s.isLoading,
                keyboardType: TextInputType.number,
                capitalization: TextCapitalization.none,
                focus: AuthState.accountNumberFocus,
                next: AuthState.sortCodeFocus,
                field: (s) => s.bankAccount.accountNumber,
                validate: (s) => s.validate,
                response: (s) => s.status,
                errorField: (s) => s.errors?.accountNumber,
                onChanged: (cubit, it) => cubit.accountNumberChanged(it),
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              Headline(
                'Sort Code (Optional)',
                fontSize: 16.sp,
                textColor: Palette.neutralLabel,
                textColorDark: Palette.neutralLabelDark,
              ),
              //
              VerticalSpace(height: 0.02.sw),
              //
              ReactiveTextFormField<AuthCubit, AuthState>(
                initial: (s) => s.bankAccount.sortCode.getOrNull,
                disabled: (s) => s.isLoading,
                keyboardType: TextInputType.text,
                capitalization: TextCapitalization.none,
                focus: AuthState.sortCodeFocus,
                field: (s) => s.bankAccount.sortCode,
                validate: (s) => s.validate,
                response: (s) => s.status,
                errorField: (s) => s.errors?.sortCode,
                onChanged: (cubit, it) => cubit.sortCodeChanged(it),
              ),
              //
              VerticalSpace(height: 0.1.sw),
              //
              BlocBuilder<AuthCubit, AuthState>(
                buildWhen: (p, c) => p.isLoading != c.isLoading,
                builder: (c, s) {
                  return AppButton(
                    text: 'Save',
                    isLoading: s.isLoading,
                    onPressed: c.read<AuthCubit>().addBankAccount,
                  );
                },
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
