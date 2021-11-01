import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final authenticated =
        BlocProvider.of<AuthWatcherCubit>(router.navigatorKey.currentContext!)
            .state
            .isAuthenticated;

    if (authenticated) {
      resolver.next(true);
    } else {
      await router.pushAndPopUntil(
        const LoginRoute(),
        predicate: (_) => false,
      );
    }
  }
}
