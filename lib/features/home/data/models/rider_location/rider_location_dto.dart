library rider_location_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rider_location_dto.g.dart';
part 'rider_location_dto.freezed.dart';

@freezed
@immutable
class RiderLocationDTO with _$RiderLocationDTO {
  const RiderLocationDTO._();

  const factory RiderLocationDTO({
    @JsonKey(includeIfNull: false, name: 'lat') @DoubleSerializer() double? lat,
    @JsonKey(includeIfNull: false, name: 'long')
    @DoubleSerializer()
        double? lng,
    @JsonKey(includeIfNull: false) String? address,
    @JsonKey(includeIfNull: false) double? accuracy,
    @JsonKey(includeIfNull: false) double? altitude,
    @JsonKey(includeIfNull: false) double? speed,
    @JsonKey(includeIfNull: false) double? speedAccuracy,
  }) = _RiderLocationDTO;

  /// Maps RiderLocation to a Data Transfer Object.
  factory RiderLocationDTO.fromDomain(RiderLocation? instance) =>
      RiderLocationDTO(
        lat: instance?.lat.getOrNull,
        lng: instance?.lng.getOrNull,
        address: instance?.address.getOrNull,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory RiderLocationDTO.fromJson(Map<String, dynamic> json) =>
      _$RiderLocationDTOFromJson(json);

  /// Maps the Data Transfer Object to a RiderLocation Object.
  RiderLocation get domain => RiderLocation(
        lat: BasicTextField(lat),
        lng: BasicTextField(lng),
        address: BasicTextField(address),
        accuracy: accuracy,
        altitude: altitude,
        speed: speed,
        speedAccuracy: speedAccuracy,
      );
}
