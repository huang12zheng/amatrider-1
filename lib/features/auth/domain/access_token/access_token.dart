library access_token.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token.freezed.dart';

@freezed
@immutable
class AccessToken with _$AccessToken {
  const factory AccessToken({
    required BasicTextField<String?> accessToken,
    required TokenType tokenType,
    required BasicTextField<int?> expiryDate,
  }) = _AccessToken;

  const AccessToken._();
}

class TokenType {
  static const bearer = TokenType._('bearer');
  static const oAuth = TokenType._('oAuth');
  static const oAuth2 = TokenType._('oAuth2');
  static const values = [bearer, oAuth, oAuth2];

  final String name;

  const TokenType._(this.name);

  @override
  String toString() => '$name';

  static TokenType parse(String? raw) {
    final _lower = raw?.trim().toLowerCase();

    switch (_lower) {
      case 'oauth':
        return TokenType.oAuth;
      case 'oauth2':
        return TokenType.oAuth2;
      case 'bearer':
      default:
        return TokenType.bearer;
    }
  }
}
