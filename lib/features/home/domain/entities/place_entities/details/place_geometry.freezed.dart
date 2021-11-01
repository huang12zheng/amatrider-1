// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_geometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceGeometryTearOff {
  const _$PlaceGeometryTearOff();

  _GeometryDTO call({PlaceCoordinate? location, PlaceViewport? viewport}) {
    return _GeometryDTO(
      location: location,
      viewport: viewport,
    );
  }
}

/// @nodoc
const $PlaceGeometry = _$PlaceGeometryTearOff();

/// @nodoc
mixin _$PlaceGeometry {
  PlaceCoordinate? get location => throw _privateConstructorUsedError;
  PlaceViewport? get viewport => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceGeometryCopyWith<PlaceGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceGeometryCopyWith<$Res> {
  factory $PlaceGeometryCopyWith(
          PlaceGeometry value, $Res Function(PlaceGeometry) then) =
      _$PlaceGeometryCopyWithImpl<$Res>;
  $Res call({PlaceCoordinate? location, PlaceViewport? viewport});

  $PlaceCoordinateCopyWith<$Res>? get location;
  $PlaceViewportCopyWith<$Res>? get viewport;
}

/// @nodoc
class _$PlaceGeometryCopyWithImpl<$Res>
    implements $PlaceGeometryCopyWith<$Res> {
  _$PlaceGeometryCopyWithImpl(this._value, this._then);

  final PlaceGeometry _value;
  // ignore: unused_field
  final $Res Function(PlaceGeometry) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? viewport = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
      viewport: viewport == freezed
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as PlaceViewport?,
    ));
  }

  @override
  $PlaceCoordinateCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $PlaceCoordinateCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $PlaceViewportCopyWith<$Res>? get viewport {
    if (_value.viewport == null) {
      return null;
    }

    return $PlaceViewportCopyWith<$Res>(_value.viewport!, (value) {
      return _then(_value.copyWith(viewport: value));
    });
  }
}

/// @nodoc
abstract class _$GeometryDTOCopyWith<$Res>
    implements $PlaceGeometryCopyWith<$Res> {
  factory _$GeometryDTOCopyWith(
          _GeometryDTO value, $Res Function(_GeometryDTO) then) =
      __$GeometryDTOCopyWithImpl<$Res>;
  @override
  $Res call({PlaceCoordinate? location, PlaceViewport? viewport});

  @override
  $PlaceCoordinateCopyWith<$Res>? get location;
  @override
  $PlaceViewportCopyWith<$Res>? get viewport;
}

/// @nodoc
class __$GeometryDTOCopyWithImpl<$Res> extends _$PlaceGeometryCopyWithImpl<$Res>
    implements _$GeometryDTOCopyWith<$Res> {
  __$GeometryDTOCopyWithImpl(
      _GeometryDTO _value, $Res Function(_GeometryDTO) _then)
      : super(_value, (v) => _then(v as _GeometryDTO));

  @override
  _GeometryDTO get _value => super._value as _GeometryDTO;

  @override
  $Res call({
    Object? location = freezed,
    Object? viewport = freezed,
  }) {
    return _then(_GeometryDTO(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
      viewport: viewport == freezed
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as PlaceViewport?,
    ));
  }
}

/// @nodoc

class _$_GeometryDTO with DiagnosticableTreeMixin implements _GeometryDTO {
  const _$_GeometryDTO({this.location, this.viewport});

  @override
  final PlaceCoordinate? location;
  @override
  final PlaceViewport? viewport;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceGeometry(location: $location, viewport: $viewport)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceGeometry'))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('viewport', viewport));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeometryDTO &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.viewport, viewport) ||
                other.viewport == viewport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, viewport);

  @JsonKey(ignore: true)
  @override
  _$GeometryDTOCopyWith<_GeometryDTO> get copyWith =>
      __$GeometryDTOCopyWithImpl<_GeometryDTO>(this, _$identity);
}

abstract class _GeometryDTO implements PlaceGeometry {
  const factory _GeometryDTO(
      {PlaceCoordinate? location, PlaceViewport? viewport}) = _$_GeometryDTO;

  @override
  PlaceCoordinate? get location;
  @override
  PlaceViewport? get viewport;
  @override
  @JsonKey(ignore: true)
  _$GeometryDTOCopyWith<_GeometryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlaceViewportTearOff {
  const _$PlaceViewportTearOff();

  _PlaceViewport call(
      {PlaceCoordinate? northeast, PlaceCoordinate? southwest}) {
    return _PlaceViewport(
      northeast: northeast,
      southwest: southwest,
    );
  }
}

/// @nodoc
const $PlaceViewport = _$PlaceViewportTearOff();

/// @nodoc
mixin _$PlaceViewport {
  PlaceCoordinate? get northeast => throw _privateConstructorUsedError;
  PlaceCoordinate? get southwest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceViewportCopyWith<PlaceViewport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceViewportCopyWith<$Res> {
  factory $PlaceViewportCopyWith(
          PlaceViewport value, $Res Function(PlaceViewport) then) =
      _$PlaceViewportCopyWithImpl<$Res>;
  $Res call({PlaceCoordinate? northeast, PlaceCoordinate? southwest});

  $PlaceCoordinateCopyWith<$Res>? get northeast;
  $PlaceCoordinateCopyWith<$Res>? get southwest;
}

/// @nodoc
class _$PlaceViewportCopyWithImpl<$Res>
    implements $PlaceViewportCopyWith<$Res> {
  _$PlaceViewportCopyWithImpl(this._value, this._then);

  final PlaceViewport _value;
  // ignore: unused_field
  final $Res Function(PlaceViewport) _then;

  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_value.copyWith(
      northeast: northeast == freezed
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
      southwest: southwest == freezed
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
    ));
  }

  @override
  $PlaceCoordinateCopyWith<$Res>? get northeast {
    if (_value.northeast == null) {
      return null;
    }

    return $PlaceCoordinateCopyWith<$Res>(_value.northeast!, (value) {
      return _then(_value.copyWith(northeast: value));
    });
  }

  @override
  $PlaceCoordinateCopyWith<$Res>? get southwest {
    if (_value.southwest == null) {
      return null;
    }

    return $PlaceCoordinateCopyWith<$Res>(_value.southwest!, (value) {
      return _then(_value.copyWith(southwest: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceViewportCopyWith<$Res>
    implements $PlaceViewportCopyWith<$Res> {
  factory _$PlaceViewportCopyWith(
          _PlaceViewport value, $Res Function(_PlaceViewport) then) =
      __$PlaceViewportCopyWithImpl<$Res>;
  @override
  $Res call({PlaceCoordinate? northeast, PlaceCoordinate? southwest});

  @override
  $PlaceCoordinateCopyWith<$Res>? get northeast;
  @override
  $PlaceCoordinateCopyWith<$Res>? get southwest;
}

/// @nodoc
class __$PlaceViewportCopyWithImpl<$Res>
    extends _$PlaceViewportCopyWithImpl<$Res>
    implements _$PlaceViewportCopyWith<$Res> {
  __$PlaceViewportCopyWithImpl(
      _PlaceViewport _value, $Res Function(_PlaceViewport) _then)
      : super(_value, (v) => _then(v as _PlaceViewport));

  @override
  _PlaceViewport get _value => super._value as _PlaceViewport;

  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_PlaceViewport(
      northeast: northeast == freezed
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
      southwest: southwest == freezed
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
    ));
  }
}

/// @nodoc

class _$_PlaceViewport with DiagnosticableTreeMixin implements _PlaceViewport {
  const _$_PlaceViewport({this.northeast, this.southwest});

  @override
  final PlaceCoordinate? northeast;
  @override
  final PlaceCoordinate? southwest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceViewport(northeast: $northeast, southwest: $southwest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceViewport'))
      ..add(DiagnosticsProperty('northeast', northeast))
      ..add(DiagnosticsProperty('southwest', southwest));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceViewport &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  @JsonKey(ignore: true)
  @override
  _$PlaceViewportCopyWith<_PlaceViewport> get copyWith =>
      __$PlaceViewportCopyWithImpl<_PlaceViewport>(this, _$identity);
}

abstract class _PlaceViewport implements PlaceViewport {
  const factory _PlaceViewport(
      {PlaceCoordinate? northeast,
      PlaceCoordinate? southwest}) = _$_PlaceViewport;

  @override
  PlaceCoordinate? get northeast;
  @override
  PlaceCoordinate? get southwest;
  @override
  @JsonKey(ignore: true)
  _$PlaceViewportCopyWith<_PlaceViewport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlaceCoordinateTearOff {
  const _$PlaceCoordinateTearOff();

  _PlaceCoordinate call(
      {required BasicTextField<double?> lat,
      required BasicTextField<double?> lng}) {
    return _PlaceCoordinate(
      lat: lat,
      lng: lng,
    );
  }
}

/// @nodoc
const $PlaceCoordinate = _$PlaceCoordinateTearOff();

/// @nodoc
mixin _$PlaceCoordinate {
  BasicTextField<double?> get lat => throw _privateConstructorUsedError;
  BasicTextField<double?> get lng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceCoordinateCopyWith<PlaceCoordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCoordinateCopyWith<$Res> {
  factory $PlaceCoordinateCopyWith(
          PlaceCoordinate value, $Res Function(PlaceCoordinate) then) =
      _$PlaceCoordinateCopyWithImpl<$Res>;
  $Res call({BasicTextField<double?> lat, BasicTextField<double?> lng});
}

/// @nodoc
class _$PlaceCoordinateCopyWithImpl<$Res>
    implements $PlaceCoordinateCopyWith<$Res> {
  _$PlaceCoordinateCopyWithImpl(this._value, this._then);

  final PlaceCoordinate _value;
  // ignore: unused_field
  final $Res Function(PlaceCoordinate) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
    ));
  }
}

/// @nodoc
abstract class _$PlaceCoordinateCopyWith<$Res>
    implements $PlaceCoordinateCopyWith<$Res> {
  factory _$PlaceCoordinateCopyWith(
          _PlaceCoordinate value, $Res Function(_PlaceCoordinate) then) =
      __$PlaceCoordinateCopyWithImpl<$Res>;
  @override
  $Res call({BasicTextField<double?> lat, BasicTextField<double?> lng});
}

/// @nodoc
class __$PlaceCoordinateCopyWithImpl<$Res>
    extends _$PlaceCoordinateCopyWithImpl<$Res>
    implements _$PlaceCoordinateCopyWith<$Res> {
  __$PlaceCoordinateCopyWithImpl(
      _PlaceCoordinate _value, $Res Function(_PlaceCoordinate) _then)
      : super(_value, (v) => _then(v as _PlaceCoordinate));

  @override
  _PlaceCoordinate get _value => super._value as _PlaceCoordinate;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_PlaceCoordinate(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
    ));
  }
}

/// @nodoc

class _$_PlaceCoordinate
    with DiagnosticableTreeMixin
    implements _PlaceCoordinate {
  const _$_PlaceCoordinate({required this.lat, required this.lng});

  @override
  final BasicTextField<double?> lat;
  @override
  final BasicTextField<double?> lng;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceCoordinate(lat: $lat, lng: $lng)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceCoordinate'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceCoordinate &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  _$PlaceCoordinateCopyWith<_PlaceCoordinate> get copyWith =>
      __$PlaceCoordinateCopyWithImpl<_PlaceCoordinate>(this, _$identity);
}

abstract class _PlaceCoordinate implements PlaceCoordinate {
  const factory _PlaceCoordinate(
      {required BasicTextField<double?> lat,
      required BasicTextField<double?> lng}) = _$_PlaceCoordinate;

  @override
  BasicTextField<double?> get lat;
  @override
  BasicTextField<double?> get lng;
  @override
  @JsonKey(ignore: true)
  _$PlaceCoordinateCopyWith<_PlaceCoordinate> get copyWith =>
      throw _privateConstructorUsedError;
}
