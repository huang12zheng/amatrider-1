library phone_update_bottomsheet.dart;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';

/// A stateless widget to render PhoneUpdateBottomSheet.
class PhoneUpdateBottomSheet extends StatelessWidget {
  const PhoneUpdateBottomSheet({Key? key}) : super(key: key);

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
          (it) => it?.response.map(
            info: (f) => PopupDialog.info(message: f.message).render(c),
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(
              message: s.message,
              listener: (_) => _?.fold(
                dismissed: () => s.pop
                    ? App.rootRoute == DashboardRoute.name
                        ? navigator.pop().then((_) => navigator.push(const OTPVerificationRoute()))
                        : navigator.pushAndPopUntil(const OTPVerificationRoute(), predicate: (_) => false)
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
              0.01.verticalh,
              //
              ClipRRect(
                borderRadius: BorderRadius.circular(Utils.cardRadius),
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: SizedBox(height: 0.015.sw, width: 0.2.sw),
                ),
              ),
              //
              0.014.verticalh,
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
                    PhoneFormField<AuthCubit, AuthState>(
                      disabled: (s) => s.isLoading,
                      validate: (s) => s.validate,
                      field: (s) => s.rider.phone,
                      focus: AuthState.newPhoneFocus,
                      controller: (s) => s.phoneTextController,
                      response: (s) => s.status,
                      selectedCountry: (s) => s.selectedCountry,
                      hideCountryPicker: (s) => s.selectedCountry == null,
                      onPickerBuilder: (cubit, country) {
                        if (cubit.state.selectedCountry == null) cubit.countryChanged(country);
                      },
                      onCountryChanged: (cubit, country) => cubit.countryChanged(country),
                      onChanged: (cubit, str) => cubit.phoneNumberChanged(str),
                    ),
                    //
                    0.018.verticalh,
                    //
                    SafeArea(
                      top: false,
                      left: false,
                      right: false,
                      child: BlocBuilder<AuthCubit, AuthState>(
                        buildWhen: (p, c) => p.isLoading != c.isLoading,
                        builder: (c, s) => Hero(
                          tag: Const.profileLogoutBtnHerotag,
                          child: AppButton(
                            text: 'Continue',
                            isLoading: s.isLoading,
                            disabled: s.isLoading,
                            onPressed: c.read<AuthCubit>().sendPhoneUpdateOTP,
                          ),
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
