library user_location.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

part 'user_location.freezed.dart';

@freezed
@immutable
class UserLocation extends LocationBase with _$UserLocation {
  const UserLocation._();

  const factory UserLocation({
    required BasicTextField<double?> lat,
    required BasicTextField<double?> lng,
    double? accuracy,
    double? altitude,
    double? speed,
    double? speedAccuracy,
    double? heading,
    double? time,
    double? elapsedRealtimeNanos,
    double? elapsedRealtimeUncertaintyNanos,
    double? headingAccuracy,
    String? provider,
    int? satelliteNumber,
    double? verticalAccuracy,
    bool? isMock,
  }) = _UserLocation;

  factory UserLocation.fromLocation(LocationData data) {
    return UserLocation(
      accuracy: data.accuracy,
      altitude: data.altitude,
      heading: data.heading,
      isMock: data.isMock,
      lat: BasicTextField(data.latitude),
      lng: BasicTextField(data.longitude),
      speed: data.speed,
      speedAccuracy: data.speedAccuracy,
      time: data.time,
      elapsedRealtimeNanos: data.elapsedRealtimeNanos,
      elapsedRealtimeUncertaintyNanos: data.elapsedRealtimeUncertaintyNanos,
      headingAccuracy: data.headingAccuracy,
      provider: data.provider,
      satelliteNumber: data.satelliteNumber,
      verticalAccuracy: data.verticalAccuracy,
    );
  }
}
