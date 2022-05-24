library geolocator_location_service.dart;

import 'dart:async';

import 'package:amatrider/features/home/domain/entities/rider_location/rider_location.dart';
import 'package:amatrider/core/data/response/any/any_response.dart';
import 'package:amatrider/features/home/domain/repositories/index.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart' hide ServiceStatus;
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: LocationService)
class GeolocatorLocationService extends LocationService {
  StreamSubscription<dynamic>? _serviceStatusSubscription;

  LocationSettings? locationSettings;

  @override
  Future<LocationService> changeSettings({
    PositionAccuracy accuracy = PositionAccuracy.navigation,
    Duration interval = const Duration(minutes: 2),
    int distanceFilter = 20, // in meters
    Duration timeout = const Duration(seconds: 16),
  }) async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      locationSettings = AndroidSettings(
        accuracy: accuracy.fold(
          balanced: LocationAccuracy.medium,
          high: LocationAccuracy.high,
          low: LocationAccuracy.low,
          best: LocationAccuracy.best,
          navigation: LocationAccuracy.bestForNavigation,
          powerSave: LocationAccuracy.lowest,
          reduced: LocationAccuracy.reduced,
        ),
        distanceFilter: distanceFilter,
        forceLocationManager: true,
        intervalDuration: interval,
        timeLimit: timeout,
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.macOS) {
      locationSettings = AppleSettings(
        accuracy: accuracy.fold(
          balanced: LocationAccuracy.medium,
          high: LocationAccuracy.high,
          low: LocationAccuracy.low,
          best: LocationAccuracy.best,
          navigation: LocationAccuracy.bestForNavigation,
          powerSave: LocationAccuracy.lowest,
          reduced: LocationAccuracy.reduced,
        ),
        activityType: ActivityType.fitness,
        distanceFilter: distanceFilter,
        pauseLocationUpdatesAutomatically: true,
        showBackgroundLocationIndicator: false,
      );
    } else {
      locationSettings = LocationSettings(
        distanceFilter: distanceFilter,
        accuracy: accuracy.fold(
          balanced: LocationAccuracy.medium,
          high: LocationAccuracy.high,
          low: LocationAccuracy.low,
          best: LocationAccuracy.best,
          navigation: LocationAccuracy.bestForNavigation,
          powerSave: LocationAccuracy.lowest,
          reduced: LocationAccuracy.reduced,
        ),
      );
    }
    return this;
  }

  @override
  Future<Either<AnyResponse, RiderLocation>> getLastKnownLocation({
    void Function(RiderLocation)? onData,
    void Function(AnyResponse)? onError,
  }) async {
    try {
      final _result = await Geolocator.getLastKnownPosition();

      if (_result != null) {
        final location = RiderLocation.fromService(_result);

        onData?.call(location);

        return right(location);
      } else {
        onError?.call(const AnyResponse.error(messageTxt: 'No last known location!'));
        return left(const AnyResponse.error(messageTxt: 'No last known location!'));
      }
    } on TimeoutException catch (e, trace) {
      onError?.call(_createErrorResponse(e, trace));
      return handleException(e, trace);
    } on LocationServiceDisabledException catch (e, trace) {
      onError?.call(_createErrorResponse(e, trace));
      return handleException(e, trace);
    } catch (e, trace) {
      onError?.call(_createErrorResponse(e, trace));
      return handleException(e, trace);
    }
  }

  @override
  Future<Either<AnyResponse, RiderLocation>> getLocation({
    void Function(RiderLocation)? onData,
    void Function(AnyResponse)? onError,
  }) async {
    try {
      final _result = await Geolocator.getCurrentPosition(
        desiredAccuracy: locationSettings?.accuracy ?? LocationAccuracy.bestForNavigation,
        timeLimit: locationSettings?.timeLimit ?? const Duration(seconds: 16),
      );

      final location = RiderLocation.fromService(_result);

      onData?.call(location);

      return right(location);
    } on TimeoutException catch (e, trace) {
      onError?.call(_createErrorResponse(e, trace));
      return handleException(e, trace);
    } on LocationServiceDisabledException catch (e, trace) {
      onError?.call(_createErrorResponse(e, trace));
      return handleException(e, trace);
    } catch (e, trace) {
      onError?.call(_createErrorResponse(e, trace));
      return handleException(e, trace);
    }
  }

  @override
  Either<AnyResponse, R> handleException<R>(Object? e, StackTrace trace) {
    return left(_createErrorResponse(e, trace));
  }

  @override
  Stream<Either<AnyResponse, RiderLocation>> liveLocation() async* {
    yield* Geolocator.getPositionStream(locationSettings: locationSettings)
        .transform(
          StreamTransformer<Position, Either<AnyResponse, RiderLocation>>.fromHandlers(
            handleData: (data, event) => event.add(right(RiderLocation.fromService(data))),
          ),
        )
        .onErrorReturnWith(handleException);
  }

  @override
  Future<bool> get backgroundEnabled => throw UnimplementedError();

  @override
  Future<bool> requestBackgroundMode([bool enable = true]) {
    throw UnimplementedError();
  }

  @override
  Future<bool> requestPermissions() async {
    final _whenInUse = await Permission.locationWhenInUse.request();

    // User granted access to "location when in use"
    if (_whenInUse.isGranted) return true;
    // "is denied", "is restricted" & "is permanently denied"
    await openAppSettings();
    // return false until granted
    return false;
  }

  @override
  @disposeMethod
  void dispose() {
    _serviceStatusSubscription?.cancel();
  }

  @override
  Future<bool> requestService([Future<void> Function()? prompt]) async {
    var _serviceEnabled = await isServiceEnabled;

    _serviceStatusSubscription ??= Geolocator.getServiceStatusStream().listen((status) {
      if (status == ServiceStatus.disabled) {
        prompt?.call();
      }
    });

    if (!_serviceEnabled) {
      try {
        await Geolocator.getCurrentPosition();
      } catch (e) {
        _serviceEnabled = await isServiceEnabled;
      }

      _serviceEnabled = await isServiceEnabled;
    }

    return _serviceEnabled;
  }

  AnyResponse _createErrorResponse(Object? e, StackTrace trace) {
    if (e is TimeoutException) {
      return AnyResponse.error(messageTxt: 'Location service timed out after ${e.duration?.inSeconds} seconds');
    } else if (e is LocationServiceDisabledException) {
      return const AnyResponse.error(messageTxt: 'Location service is disabled! Please enable it from settings.');
    }

    return AnyResponse.error(messageTxt: 'Unknown Location Error! => ${e.toString()}');
  }
}
