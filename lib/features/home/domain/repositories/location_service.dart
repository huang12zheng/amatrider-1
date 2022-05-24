import 'dart:async';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

enum PositionAccuracy { balanced, high, low, best, navigation, powerSave, reduced }

abstract class LocationService {
  Future<bool> get isServiceEnabled => Permission.locationAlways.serviceStatus.isEnabled;

  Future<bool> get hasPermission => Permission.locationWhenInUse.isGranted;

  Future<bool> get hasAlwaysPermission => Permission.locationAlways.isGranted;

  Future<bool> get backgroundEnabled;

  Future<bool> requestService([Future<void> Function()? prompt]);

  Future<bool> requestPermissions();

  Future<bool> requestBackgroundMode([bool enable = true]);

  Future<LocationService> changeSettings({
    PositionAccuracy accuracy = PositionAccuracy.high,
    Duration interval = const Duration(seconds: 5),
    int distanceFilter = 5,
    Duration timeout = const Duration(seconds: 16),
  });

  Future<Either<AnyResponse, RiderLocation>> getLastKnownLocation({
    void Function(RiderLocation)? onData,
    void Function(AnyResponse)? onError,
  });

  Future<Either<AnyResponse, RiderLocation>> getLocation({
    void Function(RiderLocation)? onData,
    void Function(AnyResponse)? onError,
  });

  Stream<Either<AnyResponse, RiderLocation>> liveLocation();

  @protected
  Either<AnyResponse, R> handleException<R>(Object? e, StackTrace trace);

  @disposeMethod
  void dispose();
}

extension PositionAccuracyX on PositionAccuracy {
  T fold<T>({
    required T balanced,
    required T high,
    required T low,
    required T best,
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
      case PositionAccuracy.best:
        return best;
      case PositionAccuracy.navigation:
        return navigation;
      case PositionAccuracy.powerSave:
        return powerSave;
      case PositionAccuracy.reduced:
        return reduced;
    }
  }
}
