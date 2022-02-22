library socials_auth_screen.dart;

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
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render SocialsAuthScreen.
class SocialsAuthScreen extends StatefulWidget with AutoRouteWrapper {
  const SocialsAuthScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..initSocials(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.fold(
                      is4031: () {
                        if (App.currentRoute != OTPVerificationRoute.name) navigator.replaceAll([OTPVerificationRoute()]);
                        return false;
                      },
                      is41101: () {
                        if (App.currentRoute != SocialsAuthRoute.name) navigator.replaceAll([const SocialsAuthRoute()]);
                        return false;
                      },
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (th) => th?.response.map(
            info: (i) => PopupDialog.info(message: i.message).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show).render(c),
            success: (s) => PopupDialog.success(message: s.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  State<SocialsAuthScreen> createState() => _SocialsAuthScreenState();
}

class _SocialsAuthScreenState extends State<SocialsAuthScreen> {
  DateTime _timestampPressed = DateTime.now();
  final firstNameFocus = FocusNode();
  final lastNameFocus = FocusNode();
  final phoneFocus = FocusNode();

  Future<bool> maybePop() async {
    if (context.watchRouter.canPopSelfOrChildren) return Future.value(true);

    final now = DateTime.now();
    final difference = now.difference(_timestampPressed);
    final _showWarn = difference >= Utils.willPopTimeout;

    setState(() => _timestampPressed = DateTime.now());

    if (_showWarn) {
      await ToastManager.short('Tap again to exit');
      return Future.value(false);
    } else {
      await ToastManager.cancel();
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: maybePop,
      child: AdaptiveScaffold(
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
                  0.014.verticalh,
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
                              regular: () => c.read<AuthWatcherCubit>().toggleLogoutLoading(true),
                              google: c.read<AuthCubit>().googleAuth,
                              apple: c.read<AuthCubit>().appleAuth,
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
                          builder: (c, s) => AnimatedVisibility(
                            visible: (s.isLoading && !s.rider.email.isValid) || s.isGoogleAuthLoading,
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
                  0.008.verticalh,
                  //
                  AutofillGroup(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
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
                                    onChanged: (it, str) => it.lastNameChanged(str),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //
                        0.018.verticalh,
                        //
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: TextFormInputLabel(text: 'Email Address'),
                        ),
                        //
                        Opacity(
                          opacity: 0.6,
                          child: EmailFormField<AuthCubit, AuthState>(
                            initial: (s) => s.rider.email.getOrEmpty,
                            useHero: false,
                            disabled: (s) => true,
                            readOnly: (_) => true,
                          ),
                        ),
                        //
                        0.018.verticalh,
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
                          controller: (s) => s.phoneTextController,
                          response: (s) => s.status,
                          onPickerBuilder: (cubit, country) {
                            if (cubit.state.selectedCountry == null) cubit.countryChanged(country);
                          },
                          onCountryChanged: (cubit, country) => cubit.countryChanged(country),
                          onChanged: (cubit, str) => cubit.phoneNumberChanged(str),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            //
            SliverSafeArea(
              top: false,
              left: false,
              right: false,
              sliver: SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.06.h),
                sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (c, s) => Hero(
                        tag: Const.authButtonHeroTag,
                        child: AppButton(
                          text: 'Continue',
                          isLoading: s.isLoading && s.rider.email.isNotNull((_) => true, orElse: (_) => false),
                          onPressed: () {
                            TextInput.finishAutofillContext();
                            c.read<AuthCubit>().updateSocialsProfile();
                          },
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

                            OAuthWidgets(
                              cubit: c.read<AuthCubit>(),
                              google: rider?.provider != AuthProvider.google,
                              email: rider?.provider != AuthProvider.regular,
                              apple: rider?.provider != AuthProvider.apple,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    0.01.verticalh,
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
