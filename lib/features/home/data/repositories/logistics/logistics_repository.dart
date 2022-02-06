library logistics_repository.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/data/repositories/index.dart';
import 'package:amatrider/features/home/data/sources/history_remote/history_remote.dart';
import 'package:amatrider/features/home/data/sources/insight_remote/insight_remote.dart';
import 'package:amatrider/features/home/data/sources/logistics_remote/logistics_remote.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@lazySingleton
class LogisticsRepository extends BaseRepository {
  final LogisticsRemote _logisticsRemote;
  final InsightRemote _insightRemote;
  final HistoryRemote _historyRemote;

  LogisticsRepository(
    this._logisticsRemote,
    this._insightRemote,
    this._historyRemote,
  );

  Future<Either<AppHttpResponse, SendPackageListDTO>> allRequests({
    SendPackageStatus status = SendPackageStatus.ACTIVE,
    required String lat,
    required String lng,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => left(f),
      (r) async {
        try {
          final result =
              await _logisticsRemote.all(status: status, lat: lat, lng: lng);

          return right(result);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<AppHttpResponse> acceptPackageDelivery(
    String id, {
    required String lat,
    required String lng,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          final result = await _logisticsRemote.acceptPackageDelivery(id,
              lat: lat, lng: lng);

          return result;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> declinePackageDelivery(
    String id, {
    required String lat,
    required String lng,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          final result = await _logisticsRemote.declinePackageDelivery(id,
              lat: lat, lng: lng);

          return result;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> updateLocation(
    String id, {
    required RiderLocationDTO location,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          final result =
              await _logisticsRemote.updateLocation(id, location: location);

          return result;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> confirmPackageReceived(
    String id, {
    required String lat,
    required String lng,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          final result = await _logisticsRemote.confirmPackageReceived(id,
              lat: lat, lng: lng);

          return result;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> confirmPackageDelivered(
    String id, {
    required String lat,
    required String lng,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          final result = await _logisticsRemote.confirmPackageDelivered(id,
              lat: lat, lng: lng);

          return result;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<Either<AppHttpResponse, KtList<DeliveryHistory>>> allHistory() async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => left(f),
      (r) async {
        try {
          final result = await _historyRemote.all();

          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, Insight>> insights() async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => left(f),
      (r) async {
        try {
          final result = await _insightRemote.insights();

          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, BankAccount>> depositCash() async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => left(f),
      (r) async {
        try {
          final _details = await _insightRemote.deposit();
          return right(_details.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<AppHttpResponse> claimBinus() async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          return await _insightRemote.claimBonus();
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }
}
