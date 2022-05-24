// import 'dart:async';

// import 'package:amatrider/core/data/response/index.dart';
// import 'package:amatrider/features/home/domain/entities/index.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter/services.dart';
// import 'package:location/location.dart' hide PermissionStatus;
// import 'package:permission_handler/permission_handler.dart';
// import 'package:rxdart/rxdart.dart';

// enum PositionAccuracy { balanced, high, low, navigation, powerSave, reduced }

// class LocationServiceImpl implements LocationService {
//   final Location _location = Location();

//   Future<bool> get isServiceEnabled => Permission.locationAlways.serviceStatus.isEnabled;

//   Future<bool> get hasPermission => Permission.locationWhenInUse.isGranted;

//   Future<bool> get hasAlwaysPermission => Permission.locationAlways.isGranted;

//   Future<bool> get backgroundEnabled => _location.isBackgroundModeEnabled();

//   Future<bool> requestService() async {
//     var _serviceEnabled = await Permission.locationAlways.serviceStatus.isEnabled;

//     if (!_serviceEnabled) {
//       await _location.requestService();
//       _serviceEnabled = await Permission.locationAlways.serviceStatus.isEnabled;
//     }

//     return _serviceEnabled;
//   }

//   Future<bool> requestPermissions() async {
//     final _whenInUse = await Permission.locationWhenInUse.request();

//     // User granted access to "location when in use"
//     if (_whenInUse.isGranted) return await _requestPermissionAlways();
//     if (_whenInUse.isLimited) return await _requestPermissionAlways();
//     // "is denied", "is restricted" & "is permanently denied"
//     await openAppSettings();
//     // return false until granted
//     return false;
//   }

//   Future<bool> _requestPermissionAlways() async {
//     final _alwaysGranted = await Permission.locationAlways.isGranted;

//     if (!_alwaysGranted) {
//       final _alwaysRequest = await Permission.locationAlways.request();
//       if (_alwaysRequest.isGranted)
//         return true;
//       else if (_alwaysRequest.isPermanentlyDenied)
//         return await openAppSettings();
//       else
//         return false;
//     }

//     return true;
//   }

//   Future<bool> requestBackgroundMode([bool enable = true]) async {
//     var _isBackgroundModeEnabled = await _location.isBackgroundModeEnabled();

//     if (!enable) await _location.enableBackgroundMode(enable: enable);

//     if (enable && !_isBackgroundModeEnabled) {
//       await _location.enableBackgroundMode(enable: enable);
//       _isBackgroundModeEnabled = await _location.isBackgroundModeEnabled();
//     }

//     return _isBackgroundModeEnabled;
//   }

//   Future<LocationService> changeSettings({
//     PositionAccuracy accuracy = PositionAccuracy.high,
//     int interval = 10500,
//     double distanceFilter = 5,
//   }) async {
//     await _location.changeSettings(
//       interval: interval,
//       distanceFilter: distanceFilter,
//       accuracy: accuracy.fold(
//         balanced: LocationAccuracy.balanced,
//         high: LocationAccuracy.high,
//         low: LocationAccuracy.low,
//         navigation: LocationAccuracy.navigation,
//         powerSave: LocationAccuracy.powerSave,
//         reduced: LocationAccuracy.reduced,
//       ),
//     );
//     return this;
//   }

//   Future<Either<AnyResponse, RiderLocation?>> getLocation({
//     void Function(RiderLocation)? onData,
//   }) async {
//     try {
//       final _result = await _location.getLocation();

//       final location = RiderLocation.fromLocation(_result);

//       onData?.call(location);

//       return right(location);
//     } on PlatformException catch (e, trace) {
//       return _handleException(e, trace);
//     }
//   }

//   Stream<Either<AnyResponse, RiderLocation>> liveLocation() async* {
//     yield* _location.onLocationChanged
//         .transform(
//           StreamTransformer<LocationData, Either<AnyResponse, RiderLocation>>.fromHandlers(
//             handleData: (data, event) => event.add(
//               right(RiderLocation.fromLocation(data)),
//             ),
//           ),
//         )
//         .onErrorReturnWith(_handleException);
//   }

//   Either<AnyResponse, R> _handleException<R>(Object? e, StackTrace trace) {
//     if (e is PlatformException) {
//       return left(AnyResponse.error(
//         messageTxt: '${e.code}: ${e.message}',
//         details: '${e.details}',
//       ));
//     }
//     return left(AnyResponse.error(
//       messageTxt: 'Invalid type returned! - ${e.runtimeType}',
//     ));
//   }
// }

// extension on PositionAccuracy {
//   T fold<T>({
//     required T balanced,
//     required T high,
//     required T low,
//     required T navigation,
//     required T powerSave,
//     required T reduced,
//   }) {
//     switch (this) {
//       case PositionAccuracy.balanced:
//         return balanced;
//       case PositionAccuracy.high:
//         return high;
//       case PositionAccuracy.low:
//         return low;
//       case PositionAccuracy.navigation:
//         return navigation;
//       case PositionAccuracy.powerSave:
//         return powerSave;
//       case PositionAccuracy.reduced:
//         return reduced;
//     }
//   }
// }
