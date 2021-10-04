// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_cubit.dart';

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
  GoogleMapController? get mapController =>
      throw _privateConstructorUsedError; //
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
    return 'MapState(maxZoom: $maxZoom, minZoom: $minZoom, currentZoom: $currentZoom, mapType: $mapType, tilt: $tilt, bearing: $bearing, cameraTarget: $cameraTarget, trafficEnabled: $trafficEnabled, buildingsEnabled: $buildingsEnabled, initialPosition: $initialPosition, mapController: $mapController, isLoading: $isLoading, validate: $validate, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapState &&
            (identical(other.maxZoom, maxZoom) ||
                const DeepCollectionEquality()
                    .equals(other.maxZoom, maxZoom)) &&
            (identical(other.minZoom, minZoom) ||
                const DeepCollectionEquality()
                    .equals(other.minZoom, minZoom)) &&
            (identical(other.currentZoom, currentZoom) ||
                const DeepCollectionEquality()
                    .equals(other.currentZoom, currentZoom)) &&
            (identical(other.mapType, mapType) ||
                const DeepCollectionEquality()
                    .equals(other.mapType, mapType)) &&
            (identical(other.tilt, tilt) ||
                const DeepCollectionEquality().equals(other.tilt, tilt)) &&
            (identical(other.bearing, bearing) ||
                const DeepCollectionEquality()
                    .equals(other.bearing, bearing)) &&
            (identical(other.cameraTarget, cameraTarget) ||
                const DeepCollectionEquality()
                    .equals(other.cameraTarget, cameraTarget)) &&
            (identical(other.trafficEnabled, trafficEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.trafficEnabled, trafficEnabled)) &&
            (identical(other.buildingsEnabled, buildingsEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.buildingsEnabled, buildingsEnabled)) &&
            (identical(other.initialPosition, initialPosition) ||
                const DeepCollectionEquality()
                    .equals(other.initialPosition, initialPosition)) &&
            (identical(other.mapController, mapController) ||
                const DeepCollectionEquality()
                    .equals(other.mapController, mapController)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(maxZoom) ^
      const DeepCollectionEquality().hash(minZoom) ^
      const DeepCollectionEquality().hash(currentZoom) ^
      const DeepCollectionEquality().hash(mapType) ^
      const DeepCollectionEquality().hash(tilt) ^
      const DeepCollectionEquality().hash(bearing) ^
      const DeepCollectionEquality().hash(cameraTarget) ^
      const DeepCollectionEquality().hash(trafficEnabled) ^
      const DeepCollectionEquality().hash(buildingsEnabled) ^
      const DeepCollectionEquality().hash(initialPosition) ^
      const DeepCollectionEquality().hash(mapController) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(status);

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
      bool isLoading,
      bool validate,
      Option<AppHttpResponse?> status}) = _$_MapState;

  @override
  double get maxZoom => throw _privateConstructorUsedError;
  @override
  double get minZoom => throw _privateConstructorUsedError;
  @override
  double get currentZoom => throw _privateConstructorUsedError;
  @override
  MapType get mapType => throw _privateConstructorUsedError;
  @override
  double get tilt => throw _privateConstructorUsedError;
  @override
  double get bearing => throw _privateConstructorUsedError;
  @override
  LatLng get cameraTarget => throw _privateConstructorUsedError;
  @override
  bool get trafficEnabled => throw _privateConstructorUsedError;
  @override
  bool get buildingsEnabled => throw _privateConstructorUsedError;
  @override
  CameraPosition get initialPosition => throw _privateConstructorUsedError;
  @override
  GoogleMapController? get mapController => throw _privateConstructorUsedError;
  @override //
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get validate => throw _privateConstructorUsedError;
  @override
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MapStateCopyWith<_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}
