import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final context = router.navigatorKey.currentContext;

    if (context != null) {
      final authenticated = BlocProvider.of<AuthWatcherCubit>(context).state.isAuthenticated;

      if (authenticated) {
        resolver.next(true);
      } else {
        await router.replaceAll([const LoginRoute()]);
      }
    } else
      resolver.next(true);
  }
}
