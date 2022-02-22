library incomplete_kyc_guard.dart;

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncompleteKYCGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final s = BlocProvider.of<AuthWatcherCubit>(router.navigatorKey.currentContext!).state.status;

    s.fold(
      () => resolver.next(),
      (error) {
        error?.fold(
          is4031: () => navigator.replaceAll([OTPVerificationRoute()]),
          is41101: () => navigator.replaceAll([const SocialsAuthRoute()]),
          orElse: () => resolver.next(),
        );
      },
    );
  }
}
