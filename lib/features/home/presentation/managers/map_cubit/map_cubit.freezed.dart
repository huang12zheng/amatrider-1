// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of map_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

  _MapState call(
      {double maxZoom = double.maxFinite,
      double minZoom = MapState.minZoomLevel,
      double currentZoom = MapState.defaultZoomLevel,
      MapType mapType = MapType.normal,
      double tilt = MapState.mapTilt,
      double bearing = MapState.mapBearing,
      LatLng cameraTarget = MapState.istanbul,
      bool trafficEnabled = false,
      bool buildingsEnabled = true,
      required CameraPosition initialPosition,
      GoogleMapController? mapController,
      required Set<Marker> markers,
      required Set<Circle> circles,
      required Set<Polyline> polylines,
      bool isLoading = false,
      bool validate = false,
      Option<AppHttpResponse?> status = const None()}) {
    return _MapState(
      maxZoom: maxZoom,
      minZoom: minZoom,
      currentZoom: currentZoom,
      mapType: mapType,
      tilt: tilt,
      bearing: bearing,
      cameraTarget: cameraTarget,
      trafficEnabled: trafficEnabled,
      buildingsEnabled: buildingsEnabled,
      initialPosition: initialPosition,
      mapController: mapController,
      markers: markers,
      circles: circles,
      polylines: polylines,
      isLoading: isLoading,
      validate: validate,
      status: status,
    );
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  double get maxZoom => throw _privateConstructorUsedError;
  double get minZoom => throw _privateConstructorUsedError;
  double get currentZoom => throw _privateConstructorUsedError;
  MapType get mapType => throw _privateConstructorUsedError;
  double get tilt => throw _privateConstructorUsedError;
  double get bearing => throw _privateConstructorUsedError;
  LatLng get cameraTarget => throw _privateConstructorUsedError;
  bool get trafficEnabled => throw _privateConstructorUsedError;
  bool get buildingsEnabled => throw _privateConstructorUsedError;
  CameraPosition get initialPosition => throw _privateConstructorUsedError;
  GoogleMapController? get mapController => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  Set<Circle> get circles => throw _privateConstructorUsedError;
  Set<Polyline> get polylines => throw _privateConstructorUsedError; //
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call(
      {double maxZoom,
      double minZoom,
      double currentZoom,
      MapType mapType,
      double tilt,
      double bearing,
      LatLng cameraTarget,
      bool trafficEnabled,
      bool buildingsEnabled,
      CameraPosition initialPosition,
      GoogleMapController? mapController,
      Set<Marker> markers,
      Set<Circle> circles,
      Set<Polyline> polylines,
      bool isLoading,
      bool validate,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object? maxZoom = freezed,
    Object? minZoom = freezed,
    Object? currentZoom = freezed,
    Object? mapType = freezed,
    Object? tilt = freezed,
    Object? bearing = freezed,
    Object? cameraTarget = freezed,
    Object? trafficEnabled = freezed,
    Object? buildingsEnabled = freezed,
    Object? initialPosition = freezed,
    Object? mapController = freezed,
    Object? markers = freezed,
    Object? circles = freezed,
    Object? polylines = freezed,
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      maxZoom: maxZoom == freezed
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as double,
      minZoom: minZoom == freezed
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as double,
      currentZoom: currentZoom == freezed
          ? _value.currentZoom
          : currentZoom // ignore: cast_nullable_to_non_nullable
              as double,
      mapType: mapType == freezed
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
      tilt: tilt == freezed
          ? _value.tilt
          : tilt // ignore: cast_nullable_to_non_nullable
              as double,
      bearing: bearing == freezed
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double,
      cameraTarget: cameraTarget == freezed
          ? _value.cameraTarget
          : cameraTarget // ignore: cast_nullable_to_non_nullable
              as LatLng,
      trafficEnabled: trafficEnabled == freezed
          ? _value.trafficEnabled
          : trafficEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      buildingsEnabled: buildingsEnabled == freezed
          ? _value.buildingsEnabled
          : buildingsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      initialPosition: initialPosition == freezed
          ? _value.initialPosition
          : initialPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
      mapController: mapController == freezed
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      circles: circles == freezed
          ? _value.circles
          : circles // ignore: cast_nullable_to_non_nullable
              as Set<Circle>,
      polylines: polylines == freezed
          ? _value.polylines
          : polylines // ignore: cast_nullable_to_non_nullable
              as Set<Polyline>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc
abstract class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) then) =
      __$MapStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {double maxZoom,
      double minZoom,
      double currentZoom,
      MapType mapType,
      double tilt,
      double bearing,
      LatLng cameraTarget,
      bool trafficEnabled,
      bool buildingsEnabled,
      CameraPosition initialPosition,
      GoogleMapController? mapController,
      Set<Marker> markers,
      Set<Circle> circles,
      Set<Polyline> polylines,
      bool isLoading,
      bool validate,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class __$MapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(_MapState _value, $Res Function(_MapState) _then)
      : super(_value, (v) => _then(v as _MapState));

  @override
  _MapState get _value => super._value as _MapState;

  @override
  $Res call({
    Object? maxZoom = freezed,
    Object? minZoom = freezed,
    Object? currentZoom = freezed,
    Object? mapType = freezed,
    Object? tilt = freezed,
    Object? bearing = freezed,
    Object? cameraTarget = freezed,
    Object? trafficEnabled = freezed,
    Object? buildingsEnabled = freezed,
    Object? initialPosition = freezed,
    Object? mapController = freezed,
    Object? markers = freezed,
    Object? circles = freezed,
    Object? polylines = freezed,
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? status = freezed,
  }) {
    return _then(_MapState(
      maxZoom: maxZoom == freezed
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as double,
      minZoom: minZoom == freezed
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as double,
      currentZoom: currentZoom == freezed
          ? _value.currentZoom
          : currentZoom // ignore: cast_nullable_to_non_nullable
              as double,
      mapType: mapType == freezed
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
      tilt: tilt == freezed
          ? _value.tilt
          : tilt // ignore: cast_nullable_to_non_nullable
              as double,
      bearing: bearing == freezed
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double,
      cameraTarget: cameraTarget == freezed
          ? _value.cameraTarget
          : cameraTarget // ignore: cast_nullable_to_non_nullable
              as LatLng,
      trafficEnabled: trafficEnabled == freezed
          ? _value.trafficEnabled
          : trafficEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      buildingsEnabled: buildingsEnabled == freezed
          ? _value.buildingsEnabled
          : buildingsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      initialPosition: initialPosition == freezed
          ? _value.initialPosition
          : initialPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
      mapController: mapController == freezed
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      circles: circles == freezed
          ? _value.circles
          : circles // ignore: cast_nullable_to_non_nullable
              as Set<Circle>,
      polylines: polylines == freezed
          ? _value.polylines
          : polylines // ignore: cast_nullable_to_non_nullable
              as Set<Polyline>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_MapState implements _MapState {
  const _$_MapState(
      {this.maxZoom = double.maxFinite,
      this.minZoom = MapState.minZoomLevel,
      this.currentZoom = MapState.defaultZoomLevel,
      this.mapType = MapType.normal,
      this.tilt = MapState.mapTilt,
      this.bearing = MapState.mapBearing,
      this.cameraTarget = MapState.istanbul,
      this.trafficEnabled = false,
      this.buildingsEnabled = true,
      required this.initialPosition,
      this.mapController,
      required this.markers,
      required this.circles,
      required this.polylines,
      this.isLoading = false,
      this.validate = false,
      this.status = const None()});

  @JsonKey(defaultValue: double.maxFinite)
  @override
  final double maxZoom;
  @JsonKey(defaultValue: MapState.minZoomLevel)
  @override
  final double minZoom;
  @JsonKey(defaultValue: MapState.defaultZoomLevel)
  @override
  final double currentZoom;
  @JsonKey(defaultValue: MapType.normal)
  @override
  final MapType mapType;
  @JsonKey(defaultValue: MapState.mapTilt)
  @override
  final double tilt;
  @JsonKey(defaultValue: MapState.mapBearing)
  @override
  final double bearing;
  @JsonKey(defaultValue: MapState.istanbul)
  @override
  final LatLng cameraTarget;
  @JsonKey(defaultValue: false)
  @override
  final bool trafficEnabled;
  @JsonKey(defaultValue: true)
  @override
  final bool buildingsEnabled;
  @override
  final CameraPosition initialPosition;
  @override
  final GoogleMapController? mapController;
  @override
  final Set<Marker> markers;
  @override
  final Set<Circle> circles;
  @override
  final Set<Polyline> polylines;
  @JsonKey(defaultValue: false)
  @override //
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: const None())
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'MapState(maxZoom: $maxZoom, minZoom: $minZoom, currentZoom: $currentZoom, mapType: $mapType, tilt: $tilt, bearing: $bearing, cameraTarget: $cameraTarget, trafficEnabled: $trafficEnabled, buildingsEnabled: $buildingsEnabled, initialPosition: $initialPosition, mapController: $mapController, markers: $markers, circles: $circles, polylines: $polylines, isLoading: $isLoading, validate: $validate, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapState &&
            (identical(other.maxZoom, maxZoom) || other.maxZoom == maxZoom) &&
            (identical(other.minZoom, minZoom) || other.minZoom == minZoom) &&
            (identical(other.currentZoom, currentZoom) ||
                other.currentZoom == currentZoom) &&
            (identical(other.mapType, mapType) || other.mapType == mapType) &&
            (identical(other.tilt, tilt) || other.tilt == tilt) &&
            (identical(other.bearing, bearing) || other.bearing == bearing) &&
            (identical(other.cameraTarget, cameraTarget) ||
                other.cameraTarget == cameraTarget) &&
            (identical(other.trafficEnabled, trafficEnabled) ||
                other.trafficEnabled == trafficEnabled) &&
            (identical(other.buildingsEnabled, buildingsEnabled) ||
                other.buildingsEnabled == buildingsEnabled) &&
            (identical(other.initialPosition, initialPosition) ||
                other.initialPosition == initialPosition) &&
            (identical(other.mapController, mapController) ||
                other.mapController == mapController) &&
            const DeepCollectionEquality().equals(other.markers, markers) &&
            const DeepCollectionEquality().equals(other.circles, circles) &&
            const DeepCollectionEquality().equals(other.polylines, polylines) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      maxZoom,
      minZoom,
      currentZoom,
      mapType,
      tilt,
      bearing,
      cameraTarget,
      trafficEnabled,
      buildingsEnabled,
      initialPosition,
      mapController,
      const DeepCollectionEquality().hash(markers),
      const DeepCollectionEquality().hash(circles),
      const DeepCollectionEquality().hash(polylines),
      isLoading,
      validate,
      status);

  @JsonKey(ignore: true)
  @override
  _$MapStateCopyWith<_MapState> get copyWith =>
      __$MapStateCopyWithImpl<_MapState>(this, _$identity);
}

abstract class _MapState implements MapState {
  const factory _MapState(
      {double maxZoom,
      double minZoom,
      double currentZoom,
      MapType mapType,
      double tilt,
      double bearing,
      LatLng cameraTarget,
      bool trafficEnabled,
      bool buildingsEnabled,
      required CameraPosition initialPosition,
      GoogleMapController? mapController,
      required Set<Marker> markers,
      required Set<Circle> circles,
      required Set<Polyline> polylines,
      bool isLoading,
      bool validate,
      Option<AppHttpResponse?> status}) = _$_MapState;

  @override
  double get maxZoom;
  @override
  double get minZoom;
  @override
  double get currentZoom;
  @override
  MapType get mapType;
  @override
  double get tilt;
  @override
  double get bearing;
  @override
  LatLng get cameraTarget;
  @override
  bool get trafficEnabled;
  @override
  bool get buildingsEnabled;
  @override
  CameraPosition get initialPosition;
  @override
  GoogleMapController? get mapController;
  @override
  Set<Marker> get markers;
  @override
  Set<Circle> get circles;
  @override
  Set<Polyline> get polylines;
  @override //
  bool get isLoading;
  @override
  bool get validate;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$MapStateCopyWith<_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}
