part of 'map_cubit.dart';

@freezed
@immutable
class MapState extends BaseState with _$MapState {
  static const double defaultZoomLevel = 13.151926040649414;
  static const LatLng istanbul = LatLng(41.015137, 28.979530);
  static const double mapBearing = 0.0;
  static const double mapTilt = 0.0;
  static const double minZoomLevel = 0.0;

  const factory MapState({
    @Default(double.maxFinite) double maxZoom,
    @Default(MapState.minZoomLevel) double minZoom,
    @Default(MapState.defaultZoomLevel) double currentZoom,
    @Default(MapType.normal) MapType mapType,
    @Default(MapState.mapTilt) double tilt,
    @Default(MapState.mapBearing) double bearing,
    @Default(MapState.istanbul) LatLng cameraTarget,
    @Default(false) bool trafficEnabled,
    @Default(true) bool buildingsEnabled,
    required CameraPosition initialPosition,
    GoogleMapController? mapController,
    required Set<Marker> markers,
    required Set<Polyline> polylines,
    //
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _MapState;

  factory MapState.initial() => const MapState(
        markers: <Marker>{},
        polylines: <Polyline>{},
        initialPosition: CameraPosition(
          target: MapState.istanbul,
          zoom: MapState.defaultZoomLevel,
        ),
      );
}
