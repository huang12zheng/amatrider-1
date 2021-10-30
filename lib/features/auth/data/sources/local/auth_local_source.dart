library auth_local_source.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/features/auth/data/models/token_response/token_response.dart';
import 'package:amatrider/features/auth/data/repositories/access_token/access_token_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthLocalDatasource {
  final AccessTokenManager _manager;
  final AppDatabase _database;

  AuthLocalDatasource(this._manager, this._database);

  Future<void> cacheAuthenticatedRider(RiderDTO user) async {
    await _database.riderDAO.insertRider(user.floor);
  }

  Future<Option<RiderDTO?>> getRider() async {
    final dao = _database.riderDAO;

    final _result = await dao.lastRider();

    return optionOf(_result);
  }

  Future<void> cacheRiderAccessToken(dynamic response) async => await _manager
      .save(response: TokenResponse.fromJson(response as Map<String, dynamic>));

  Future<void> signOut({
    bool clearRider = true,
    bool clearAccessToken = true,
  }) async {
    if (clearRider) await _database.riderDAO.removeRiders();

    if (clearAccessToken) await _manager.delete();
  }
}
