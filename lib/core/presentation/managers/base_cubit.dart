import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<Option<AppHttpResponse?>> _connection() async {
  final isConnected = (await getIt<Connectivity>().checkConnectivity()) !=
      ConnectivityResult.none;

  if (!isConnected)
    return some(AppHttpResponse(AnyResponse.fromFailure(
      const NetworkFailure.notConnected(),
    )));

  final hasInternet = await getIt<InternetConnectionChecker>().hasConnection;

  if (isConnected && !hasInternet)
    return some(AppHttpResponse(AnyResponse.fromFailure(
      const NetworkFailure.poorInternet(),
    )));

  return none();
}

abstract class BaseState {
  const BaseState();

  bool get isLoading;
  bool get validate;
}

mixin BaseCubit<State extends BaseState> on Cubit<State> {
  Future<Option<AppHttpResponse?>> connection() => _connection();
}
