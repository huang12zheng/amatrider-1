import 'dart:async';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:rxdart/rxdart.dart';

enum PositionAccuracy { balanced, high, low, navigation, powerSave, reduced }

class LocationService {
  final Location _location = Location();
  bool _isServiceEnabled = false;
  bool _isPermissionGranted = false;
  bool _isBackgroundModeEnabled = false;

  Future<bool> get isServiceEnabled async => await _location.serviceEnabled();

  Future<bool> get hasPermission async =>
      (await _location.hasPermission()) == PermissionStatus.granted;

  Future<bool> get backgroundEnabled async =>
      await _location.isBackgroundModeEnabled();

  Future<bool> requestService() async {
    _isServiceEnabled = await isServiceEnabled;

    if (!_isServiceEnabled) {
      _isServiceEnabled = await _location.requestService();
    }

    return _isServiceEnabled;
  }

  Future<bool> requestPermissions() async {
    var _permissionStatus = await _location.hasPermission();

    _isPermissionGranted = _permissionStatus == PermissionStatus.granted;

    if (_permissionStatus == PermissionStatus.deniedForever)
      _isPermissionGranted = false;

    if (_permissionStatus == PermissionStatus.denied) {
      _permissionStatus = await _location.requestPermission();
      _isPermissionGranted = false;
      if (_permissionStatus != PermissionStatus.granted ||
          _permissionStatus != PermissionStatus.grantedLimited)
        _isPermissionGranted = true;
    }

    return _isPermissionGranted;
  }

  Future<bool> requestBackgroundMode(bool enable) async {
    _isBackgroundModeEnabled = await _location.isBackgroundModeEnabled();

    if (enable && !_isBackgroundModeEnabled) {
      _isBackgroundModeEnabled =
          await _location.enableBackgroundMode(enable: enable);
    }

    return _isBackgroundModeEnabled;
  }

  Future<bool> changeSettings({
    PositionAccuracy accuracy = PositionAccuracy.high,
    int interval = 800,
    double distanceFilter = 0,
  }) async {
    return _location.changeSettings(
      interval: interval,
      distanceFilter: distanceFilter,
      accuracy: accuracy.fold(
        balanced: LocationAccuracy.balanced,
        high: LocationAccuracy.high,
        low: LocationAccuracy.low,
        navigation: LocationAccuracy.navigation,
        powerSave: LocationAccuracy.powerSave,
        reduced: LocationAccuracy.reduced,
      ),
    );
  }

  Future<Either<AnyResponse, UserLocation?>> getLocation({
    bool enforce = false,
    void Function(UserLocation)? callback,
  }) async {
    if (enforce) {
      while (!(await hasPermission)) await requestPermissions();
      while (!(await isServiceEnabled)) await requestService();
    }

    try {
      final _result = await _location.getLocation();

      final location = UserLocation.fromLocation(_result);

      callback?.call(location);

      return right(location);
    } on PlatformException catch (e, trace) {
      return _handleException(e, trace);
    }
  }

  Stream<Either<AnyResponse, UserLocation?>> liveLocation([
    bool enforce = false,
  ]) async* {
    if (enforce) {
      while (!(await hasPermission)) await requestPermissions();
      while (!(await isServiceEnabled)) await requestService();
    }

    yield* _location.onLocationChanged
        .transform(
          StreamTransformer<LocationData,
              Either<AnyResponse, UserLocation?>>.fromHandlers(
            handleData: (data, event) => event.add(
              right(UserLocation.fromLocation(data)),
            ),
          ),
        )
        .onErrorReturnWith(_handleException);
  }

  Either<AnyResponse, R> _handleException<R>(Object? e, StackTrace trace) {
    if (e is PlatformException) {
      return left(AnyResponse.error(
        messageTxt: '${e.code}: ${e.message}',
        details: '${e.details}',
      ));
    }
    return left(const AnyResponse.error(messageTxt: 'Invalid type returned!'));
  }
}

extension on PositionAccuracy {
  T fold<T>({
    required T balanced,
    required T high,
    required T low,
    required T navigation,
    required T powerSave,
    required T reduced,
  }) {
    switch (this) {
      case PositionAccuracy.balanced:
        return balanced;
      case PositionAccuracy.high:
        return high;
      case PositionAccuracy.low:
        return low;
      case PositionAccuracy.navigation:
        return navigation;
      case PositionAccuracy.powerSave:
        return powerSave;
      case PositionAccuracy.reduced:
        return reduced;
    }
  }
}
