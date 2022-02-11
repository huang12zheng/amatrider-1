import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountVerificationGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final context = router.navigatorKey.currentContext;

    if (context != null) {
      final status = BlocProvider.of<AuthWatcherCubit>(context).state.rider?.verificationStatus;

      status?.maybeWhen(
        verified: () => navigator.popAndPush(SuccessRoute(
          title: 'Verfication Successful!',
          description: 'Your account has been verified\nsuccessfully!',
          lottieJson: AppAssets.checkAnimation,
          onInitState: () async {
            await Future.delayed(
              const Duration(seconds: 3),
              () {
                if (navigator.current.name != DashboardRoute.name) navigator.pop();
              },
            );
          },
        )),
        orElse: () => resolver.next(true),
      );
    } else
      resolver.next(true);
  }
}
