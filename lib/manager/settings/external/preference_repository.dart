library preference_repository.dart;

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preference_repository.freezed.dart';

mixin PrefKeys {
  static const String APP_LAUNCHED_PREF_KEY = 'app_launched_pref_key';
}

@freezed
@immutable
@singleton
class PreferenceRepository with _$PreferenceRepository {
  const PreferenceRepository._();

  @factoryMethod
  const factory PreferenceRepository(
    SharedPreferences preferences,
  ) = _PreferenceRepository;

  Set<String> get keys => preferences.getKeys();

  Future<bool> setStringList({
    required String key,
    List<String> value = const [],
  }) async =>
      await preferences.setStringList(key, value);

  Future<List<String>?> getStringList(String key) async {
    try {
      return preferences.getStringList(key);
    } catch (_, __) {
      env.flavor.fold(
        dev: () {
          var msg = 'Message: List<String> not found '
              'in shared-preference cache';
          log.e(msg, _, __);
          return null;
        },
        prod: () => null,
      );
    }
  }

  Future<bool> setDouble({
    required String key,
    double value = 0.0,
  }) async =>
      await preferences.setDouble(key, value);

  Future<double?> getDouble(String key) async {
    try {
      return preferences.getDouble(key);
    } catch (_, __) {
      env.flavor.fold(
        dev: () {
          var msg = 'Message: Double not found in shared-preference cache';
          log.e(msg, _, __);
          return null;
        },
        prod: () => null,
      );
    }
  }

  Future<bool> setInt({
    required String key,
    required int value,
  }) async =>
      await preferences.setInt(key, value);

  Future<int?> getInt(String key) async {
    try {
      return preferences.getInt(key);
    } catch (_, __) {
      env.flavor.fold(
        dev: () {
          var msg = 'Message: Integer not found in shared-preference cache';
          log.e(msg, _, __);
          return null;
        },
        prod: () => null,
      );
    }
  }

  Future<bool> setString({
    required String key,
    String value = '',
  }) async =>
      await preferences.setString(key, value);

  Future<String?> getString(String key) async {
    try {
      return preferences.getString(key);
    } catch (_, __) {
      env.flavor.fold(
        dev: () {
          var msg = 'Message: String not found in shared-preference cache';
          log.e(msg, _, __);
          return null;
        },
        prod: () => null,
      );
    }
  }

  Future<bool> setBool({
    required String key,
    bool value = false,
  }) async =>
      await preferences.setBool(key, value);

  Future<bool?> getBool(String key) async {
    try {
      return preferences.getBool(key);
    } catch (_, __) {
      env.flavor.fold(
        dev: () {
          var msg = 'Message: Boolean not found in shared-preference cache';
          log.e(msg, _, __);
          return null;
        },
        prod: () => null,
      );
    }
  }

  Future<bool> remove(String key) => preferences.remove(key);

  Future<bool> clear() => preferences.clear();
}
