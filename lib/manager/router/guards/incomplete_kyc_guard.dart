library incomplete_kyc_guard.dart;

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncompleteKYCGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final status = BlocProvider.of<AuthWatcherCubit>(App.context).state.status;

    await status.fold(
      () async {
        // if (resolver.pendingRoutes.any((e) => _protected.contains(e.name)))
        //   await navigator.replaceAll([const DashboardRoute()]);
        // else
        //   await router.navigateAll(resolver.pendingRoutes, onFailure: (_) => resolver.next(true));
        // log.w('Pending routes ${resolver.pendingRoutes.map((e) => e.name)}\n'
        //     'String is ==> $string');
        resolver.next(true);
      },
      (error) async => error?.fold(
        is4031: () => navigator.replaceAll([const OTPVerificationRoute()]),
        is41101: () => navigator.replaceAll([const SocialsAuthRoute()]),
        orElse: () => resolver.next(true),
      ),
    );
  }
}
