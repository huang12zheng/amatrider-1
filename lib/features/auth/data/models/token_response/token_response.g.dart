// GENERATED CODE - DO NOT MODIFY BY HAND

part of token_response.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenResponse _$$_TokenResponseFromJson(Map<String, dynamic> json) =>
    _$_TokenResponse(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiryDate: json['expires_in'] as int?,
    );

Map<String, dynamic> _$$_TokenResponseToJson(_$_TokenResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_token', instance.accessToken);
  writeNotNull('token_type', instance.tokenType);
  writeNotNull('expires_in', instance.expiryDate);
  return val;
}
