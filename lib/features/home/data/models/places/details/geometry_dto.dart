import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geometry_dto.freezed.dart';
part 'geometry_dto.g.dart';

@freezed
@immutable
class GeometryDTO with _$GeometryDTO {
  const GeometryDTO._();

  const factory GeometryDTO({
    CoordintateDTO? location,
    ViewportDTO? viewport,
  }) = _GeometryDTO;

  factory GeometryDTO.fromJson(Map<String, dynamic> json) =>
      _$GeometryDTOFromJson(json);

  /// Maps the Data Transfer Object to a PlaceGeometry Object.
  PlaceGeometry get domain => PlaceGeometry(
        location: PlaceCoordinate(
          lat: BasicTextField(location?.lat),
          lng: BasicTextField(location?.lng),
        ),
        viewport: PlaceViewport(
          northeast: PlaceCoordinate(
            lat: BasicTextField(viewport?.northeast?.lat),
            lng: BasicTextField(viewport?.northeast?.lng),
          ),
          southwest: PlaceCoordinate(
            lat: BasicTextField(viewport?.southwest?.lat),
            lng: BasicTextField(viewport?.southwest?.lng),
          ),
        ),
      );
}

@freezed
@immutable
class ViewportDTO with _$ViewportDTO {
  const factory ViewportDTO({
    CoordintateDTO? northeast,
    CoordintateDTO? southwest,
  }) = _ViewportDTO;

  factory ViewportDTO.fromJson(Map<String, dynamic> json) =>
      _$ViewportDTOFromJson(json);
}

@freezed
@immutable
class CoordintateDTO with _$CoordintateDTO {
  const factory CoordintateDTO({
    double? lat,
    double? lng,
  }) = _CoordintateDTO;

  factory CoordintateDTO.fromJson(Map<String, dynamic> json) =>
      _$CoordintateDTOFromJson(json);
}
