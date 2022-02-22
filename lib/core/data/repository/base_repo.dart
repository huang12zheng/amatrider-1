library base.dart;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/response/index.dart';

abstract class BaseRepository {
  Connectivity get connectivity;

  InternetConnectionChecker get connectionChecker;

  Future<Either<AppHttpResponse, Unit>> checkConnectivity() async {
    final isConnected = (await connectivity.checkConnectivity()) != ConnectivityResult.none;

    if (!isConnected)
      return left(AppHttpResponse(AnyResponse.fromFailure(
        const NetworkFailure.notConnected(),
      )));

    final hasInternet = await connectionChecker.hasConnection;

    if (isConnected && !hasInternet)
      return left(AppHttpResponse(AnyResponse.fromFailure(
        const NetworkFailure.poorInternet(),
      )));

    return right(unit);
  }
}
