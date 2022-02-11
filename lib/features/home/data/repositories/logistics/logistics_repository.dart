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

  Future<Either<AppHttpResponse, KtList<Logistics>>> allInTransit({
    required String lat,
    required String lng,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => left(f),
      (r) async {
        try {
          final result = await _logisticsRemote.allInTransit(lat: lat, lng: lng);

          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, KtList<Logistics>>> allActive({
    required String lat,
    required String lng,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => left(f),
      (r) async {
        try {
          final result = await _logisticsRemote.allActive(lat: lat, lng: lng);

          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, Logistics>> single(
    Logistics deliverable, {
    required String lat,
    required String lng,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => left(f),
      (r) async {
        try {
          return await deliverable.type.when(
            order: () async => right((await _logisticsRemote.singleOrder('${deliverable.id.value}', lat: lat, lng: lng)).domain),
            package: () async => right((await _logisticsRemote.singlePackage('${deliverable.id.value}', lat: lat, lng: lng)).domain),
          );
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<AppHttpResponse> acceptDeliverable(
    Logistics item, {
    required String lat,
    required String lng,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          return await item.type.when(
            order: () async => await _logisticsRemote.acceptOrderDelivery('${item.id.value}', lat: lat, lng: lng),
            package: () async => await _logisticsRemote.acceptPackageDelivery('${item.id.value}', lat: lat, lng: lng),
          );
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> declineDeliverable(
    Logistics item, {
    required String lat,
    required String lng,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          return await item.type.when(
            order: () async => await _logisticsRemote.declineOrderDelivery('${item.id.value}', lat: lat, lng: lng),
            package: () async => await _logisticsRemote.declinePackageDelivery('${item.id.value}', lat: lat, lng: lng),
          );
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> updateLocation(
    Logistics item, {
    required RiderLocation location,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          return await item.type.when(
            order: () async => await _logisticsRemote.updateOrderLocation(
              '${item.id.value}',
              lat: '${location.lat.getOrNull}',
              lng: '${location.lng.getOrNull}',
            ),
            package: () async => await _logisticsRemote.updatePackageLocation(
              '${item.id.value}',
              lat: '${location.lat.getOrNull}',
              lng: '${location.lng.getOrNull}',
            ),
          );
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> confirmPickup(
    Logistics item, {
    required String lat,
    required String lng,
    required String token,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          return await item.type.when(
            order: () async => await _logisticsRemote.confirmOrderPickup('${item.id.value}', lat: lat, lng: lng, token: token),
            package: () async => await _logisticsRemote.confirmPackagePickup('${item.id.value}', lat: lat, lng: lng, token: token),
          );
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> confirmDelivery(
    Logistics item, {
    required String lat,
    required String lng,
    required String token,
  }) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          return await item.type.when(
            order: () async => await _logisticsRemote.confirmOrderDelivery('${item.id.value}', lat: lat, lng: lng, token: token),
            package: () async => await _logisticsRemote.confirmPackageDelivery('${item.id.value}', lat: lat, lng: lng, token: token),
          );
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> alertArrival(Logistics item, [String? name]) async {
    final _conn = await checkConnectivity();

    return await _conn.fold(
      (f) async => f,
      (r) async {
        try {
          await item.type.when(
            order: () async => await _logisticsRemote.alertOrderArrival('${item.id.value}'),
            package: () async => await _logisticsRemote.alertPackageArrival('${item.id.value}'),
          );

          return AppHttpResponse.successful('We have notified $name of your arrival.', pop: false);
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
