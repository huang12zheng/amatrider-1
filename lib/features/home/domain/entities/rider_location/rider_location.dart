library rider_location.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'rider_location.freezed.dart';

@freezed
@immutable
class RiderLocation extends LocationBase with _$RiderLocation {
  const RiderLocation._();

  const factory RiderLocation({
    required BasicTextField<double?> lat,
    required BasicTextField<double?> lng,
    required BasicTextField<String?> address,
    PlaceDetail? place,
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
  }) = _RiderLocation;

  factory RiderLocation.blank() => RiderLocation(
        lat: BasicTextField(null),
        lng: BasicTextField(null),
        address: BasicTextField(null),
      );

  bool get isValid => lat.isValid && lng.isValid;

  factory RiderLocation.fromService(Position data) {
    return RiderLocation(
      accuracy: data.accuracy,
      altitude: data.altitude,
      heading: data.heading,
      isMock: data.isMocked,
      lat: BasicTextField(data.latitude),
      lng: BasicTextField(data.longitude),
      address: BasicTextField(null),
      speed: data.speed,
      speedAccuracy: data.speedAccuracy,
      time: data.timestamp?.millisecondsSinceEpoch.toDouble(),
    );
  }
}
