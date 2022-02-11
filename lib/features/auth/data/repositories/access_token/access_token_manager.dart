library access_token_manager.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/data/models/index.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AccessTokenManager {
  AccessTokenManager();

  Box<String> get _box => Hive.box(Const.kAccessTokenBoxKey);

  AccessToken get() {
    // Retrieve opened box
    final _token = _box.get(Const.kAccessTokenKey);
    final _expiry = _box.get(Const.kAccessTokenExpiryKey);

    // return cached access token
    return AccessToken(
      accessToken: BasicTextField(_token),
      tokenType: TokenType.parse(null),
      expiryDate: BasicTextField(int.tryParse(_expiry ?? '')),
    );
  }

  AccessToken raw() {
    // Retrieve opened box
    final _token = _box.get(Const.kAccessTokenKey);
    final _expiry = _box.get(Const.kAccessTokenExpiryKey);

    // return cached access token
    return AccessToken(
      accessToken: BasicTextField(_token?.replaceAll('Bearer ', '')),
      tokenType: TokenType.parse(null),
      expiryDate: BasicTextField(int.tryParse(_expiry ?? '')),
    );
  }

  Future<void> save({
    String? token,
    required TokenResponse response,
    TokenType type = TokenType.bearer,
    Duration duration = const Duration(days: 365),
  }) async {
    final _token = token ?? response.accessToken;
    // Store expiry date
    await _box.put(
      Const.kAccessTokenExpiryKey,
      response.expiryDate?.toString() ?? duration.inMilliseconds.toString(),
    );

    switch (type) {
      case TokenType.bearer:
        await _box.put(Const.kAccessTokenKey, 'Bearer $_token');
        break;
      default:
        await _box.put(Const.kAccessTokenKey, '$_token');
    }
  }

  Future<void> delete() async {
    await _box.delete(Const.kAccessTokenKey);
    await _box.delete(Const.kAccessTokenExpiryKey);
    await _box.clear();
  }
}
