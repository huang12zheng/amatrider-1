library socials_signup_screen.dart;

import 'dart:io';

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/auth/presentation/widgets/oauth_widgets.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render SocialsSignupScreen.
class SocialsSignupScreen extends StatefulWidget with AutoRouteWrapper {
  const SocialsSignupScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..initSocials(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.foldCode(
                        is4031: () {
                          WidgetsBinding.instance?.addPostFrameCallback((_) => navigateToOTPVerification());
                          return false;
                        },
                        is41101: () {
                          WidgetsBinding.instance?.addPostFrameCallback((_) {
                            if (navigator.current.name != OTPVerificationRoute.name && navigator.current.name != DashboardRoute.name)
                              navigator.popAndPush(const SocialsSignupRoute());
                          });
                          return false;
                        },
                        orElse: () => false,
                      ),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (th) => th?.response.map(
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(duration: env.greetingDuration, message: s.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  State<SocialsSignupScreen> createState() => _SocialsSignupScreenState();
}

class _SocialsSignupScreenState extends State<SocialsSignupScreen> {
  final firstNameFocus = FocusNode();
  final lastNameFocus = FocusNode();
  final phoneFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        clipBehavior: Clip.antiAlias,
        controller: ScrollController(),
        physics: Utils.physics,
        scrollDirection: Axis.vertical,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.07.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate.fixed([
                AdaptiveText(
                  'Continue with socials',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: Utils.letterSpacing,
                ),
                //
                VerticalSpace(height: 0.03.sw),
                //
                BlocSelector<AuthCubit, AuthState, Rider>(
                  selector: (s) => s.rider,
                  builder: (c, rider) => AdaptiveText(
                    'You are continuing with ${rider.email.getOrNull ?? 'socials'}',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: Utils.letterSpacing,
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BlocSelector<AuthCubit, AuthState, Rider?>(
                        selector: (s) => s.rider,
                        builder: (c, rider) => GestureDetector(
                          onTap: () => rider?.provider.when(
                            regular: () => null,
                            google: () => c.read<AuthCubit>().googleAuth(true),
                            apple: () => c.read<AuthCubit>().appleAuth(true),
                          ),
                          child: AdaptiveText(
                            'Change',
                            fontSize: 16.sp,
                            textColor: Palette.accentColor,
                            fontWeight: FontWeight.w400,
                            letterSpacing: Utils.letterSpacing,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      //
                      BlocBuilder<AuthCubit, AuthState>(
                        builder: (c, s) => WidgetVisibility(
                          visible: s.isLoading && !s.rider.email.isValid,
                          child: const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: CircularProgressBar.adaptive(
                              strokeWidth: 2.3,
                              width: 21,
                              height: 21,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                VerticalSpace(height: 0.02.sw),
                //
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
                            initial: (s) => s.rider.firstName.getOrEmpty,
                            disabled: (s) => s.isLoading,
                            validate: (s) => s.validate,
                            field: (s) => s.rider.firstName,
                            focus: firstNameFocus,
                            next: lastNameFocus,
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
                            initial: (s) => s.rider.lastName.getOrEmpty,
                            prefix: 'Last Name',
                            disabled: (s) => s.isLoading,
                            validate: (s) => s.validate,
                            field: (s) => s.rider.lastName,
                            focus: lastNameFocus,
                            next: phoneFocus,
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
                const Align(
                  alignment: Alignment.centerLeft,
                  child: TextFormInputLabel(text: 'Email Address'),
                ),
                //
                EmailFormField<AuthCubit, AuthState>(
                  initial: (s) => s.rider.email.getOrEmpty,
                  useHero: false,
                  disabled: (s) => true,
                  readOnly: (_) => true,
                  validate: (s) => s.validate,
                  response: (s) => s.status,
                ),
                //
                VerticalSpace(height: 0.04.sw),
                //
                const Align(
                  alignment: Alignment.centerLeft,
                  child: TextFormInputLabel(text: 'Phone Number'),
                ),
                //
                PhoneFormField<AuthCubit, AuthState>(
                  initial: (s) => s.rider.phone.getOrEmpty,
                  disabled: (s) => s.isLoading,
                  validate: (s) => s.validate,
                  field: (s) => s.rider.phone,
                  focus: phoneFocus,
                  borderRadius: BorderRadius.circular(100),
                  controller: (s) => s.phoneTextController,
                  response: (s) => s.status,
                  onPickerBuilder: (cubit, country) {
                    if (cubit.state.selectedCountry == null) cubit.countryChanged(country);
                  },
                  onCountryChanged: (cubit, country) => cubit.countryChanged(country),
                  onChanged: (cubit, str) => cubit.phoneNumberChanged(str),
                ),
              ]),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.06.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate.fixed([
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (c, s) => Hero(
                    tag: Const.authButtonHeroTag,
                    child: AppButton(
                      text: 'Continue',
                      isLoading: s.isLoading && s.rider.email.isNotNull((_) => true, orElse: (_) => false),
                      onPressed: c.read<AuthCubit>().updateSocialsProfile,
                    ),
                  ),
                ),
                //
                BlocSelector<AuthCubit, AuthState, Rider?>(
                  selector: (s) => s.rider,
                  builder: (c, rider) => Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalSpace(height: 0.06.sw),
                        //
                        const OrWidget(),
                        //
                        VerticalSpace(height: 0.06.sw),
                        //
                        OAuthWidgets(google: false, email: true, cubit: context.read<AuthCubit>()),
                        //
                        if (rider != null)
                          ...rider.provider.when(
                            regular: () => [Utils.nothing],
                            google: () => [
                              VerticalSpace(height: 0.06.sw),
                              //
                              OAuthWidgets(google: false, apple: false, cubit: context.read<AuthCubit>()),
                            ],
                            apple: () => [
                              VerticalSpace(height: 0.06.sw),
                              //
                              OAuthWidgets(apple: false, cubit: context.read<AuthCubit>()),
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
