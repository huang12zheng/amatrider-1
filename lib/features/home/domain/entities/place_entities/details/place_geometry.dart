import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_geometry.freezed.dart';

@freezed
@immutable
class PlaceGeometry with _$PlaceGeometry {
  const factory PlaceGeometry({
    PlaceCoordinate? location,
    PlaceViewport? viewport,
  }) = _GeometryDTO;
}

@freezed
@immutable
class PlaceViewport with _$PlaceViewport {
  const factory PlaceViewport({
    PlaceCoordinate? northeast,
    PlaceCoordinate? southwest,
  }) = _PlaceViewport;
}

@freezed
@immutable
class PlaceCoordinate with _$PlaceCoordinate {
  const factory PlaceCoordinate({
    required BasicTextField<double?> lat,
    required BasicTextField<double?> lng,
  }) = _PlaceCoordinate;
}
