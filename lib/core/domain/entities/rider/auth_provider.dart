import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_provider.g.dart';

class AuthProvider extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const AuthProvider regular = _$regular;
  static const AuthProvider google = _$google;
  static const AuthProvider apple = _$apple;

  const AuthProvider._(String name) : super(name);

  static BuiltSet<AuthProvider> get values => _$authProviderValues;

  static AuthProvider valueOf(String name) => _$authProviderValueOf(name);
}

class AuthProviderSerializer implements JsonConverter<AuthProvider?, String?> {
  const AuthProviderSerializer();

  @override
  AuthProvider fromJson(String? value) => AuthProvider.valueOf(value ?? '');

  @override
  String? toJson(AuthProvider? instance) => instance?.name;
}

class AuthProviderFloorConverter extends TypeConverter<AuthProvider?, String> {
  @override
  AuthProvider? decode(String databaseValue) => AuthProvider.valueOf(jsonDecode(databaseValue) as String);

  @override
  String encode(AuthProvider? value) => jsonEncode('${value?.name}');
}

extension AuthProviderX on AuthProvider {
  T when<T>({
    required T Function() regular,
    required T Function() google,
    required T Function() apple,
  }) {
    switch (this) {
      case AuthProvider.regular:
        return regular.call();
      case AuthProvider.google:
        return google.call();
      case AuthProvider.apple:
        return apple.call();
      default:
        return regular.call();
    }
  }
}
