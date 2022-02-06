library base.dart;

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class BaseRepository {
  Future<Either<AppHttpResponse, bool>> checkConnectivity() async {
    final isConnected = (await getIt<Connectivity>().checkConnectivity()) !=
        ConnectivityResult.none;

    if (!isConnected)
      return left(AppHttpResponse(AnyResponse.fromFailure(
        const NetworkFailure.notConnected(),
      )));

    final hasInternet = await getIt<InternetConnectionChecker>().hasConnection;

    if (isConnected && !hasInternet)
      return left(AppHttpResponse(AnyResponse.fromFailure(
        const NetworkFailure.poorInternet(),
      )));

    return right(isConnected && hasInternet);
  }
}
