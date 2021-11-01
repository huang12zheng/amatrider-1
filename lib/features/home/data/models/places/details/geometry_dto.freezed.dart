// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geometry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeometryDTO _$GeometryDTOFromJson(Map<String, dynamic> json) {
  return _GeometryDTO.fromJson(json);
}

/// @nodoc
class _$GeometryDTOTearOff {
  const _$GeometryDTOTearOff();

  _GeometryDTO call({CoordintateDTO? location, ViewportDTO? viewport}) {
    return _GeometryDTO(
      location: location,
      viewport: viewport,
    );
  }

  GeometryDTO fromJson(Map<String, Object?> json) {
    return GeometryDTO.fromJson(json);
  }
}

/// @nodoc
const $GeometryDTO = _$GeometryDTOTearOff();

/// @nodoc
mixin _$GeometryDTO {
  CoordintateDTO? get location => throw _privateConstructorUsedError;
  ViewportDTO? get viewport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryDTOCopyWith<GeometryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryDTOCopyWith<$Res> {
  factory $GeometryDTOCopyWith(
          GeometryDTO value, $Res Function(GeometryDTO) then) =
      _$GeometryDTOCopyWithImpl<$Res>;
  $Res call({CoordintateDTO? location, ViewportDTO? viewport});

  $CoordintateDTOCopyWith<$Res>? get location;
  $ViewportDTOCopyWith<$Res>? get viewport;
}

/// @nodoc
class _$GeometryDTOCopyWithImpl<$Res> implements $GeometryDTOCopyWith<$Res> {
  _$GeometryDTOCopyWithImpl(this._value, this._then);

  final GeometryDTO _value;
  // ignore: unused_field
  final $Res Function(GeometryDTO) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? viewport = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CoordintateDTO?,
      viewport: viewport == freezed
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as ViewportDTO?,
    ));
  }

  @override
  $CoordintateDTOCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $CoordintateDTOCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $ViewportDTOCopyWith<$Res>? get viewport {
    if (_value.viewport == null) {
      return null;
    }

    return $ViewportDTOCopyWith<$Res>(_value.viewport!, (value) {
      return _then(_value.copyWith(viewport: value));
    });
  }
}

/// @nodoc
abstract class _$GeometryDTOCopyWith<$Res>
    implements $GeometryDTOCopyWith<$Res> {
  factory _$GeometryDTOCopyWith(
          _GeometryDTO value, $Res Function(_GeometryDTO) then) =
      __$GeometryDTOCopyWithImpl<$Res>;
  @override
  $Res call({CoordintateDTO? location, ViewportDTO? viewport});

  @override
  $CoordintateDTOCopyWith<$Res>? get location;
  @override
  $ViewportDTOCopyWith<$Res>? get viewport;
}

/// @nodoc
class __$GeometryDTOCopyWithImpl<$Res> extends _$GeometryDTOCopyWithImpl<$Res>
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
              as CoordintateDTO?,
      viewport: viewport == freezed
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as ViewportDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeometryDTO extends _GeometryDTO with DiagnosticableTreeMixin {
  const _$_GeometryDTO({this.location, this.viewport}) : super._();

  factory _$_GeometryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GeometryDTOFromJson(json);

  @override
  final CoordintateDTO? location;
  @override
  final ViewportDTO? viewport;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GeometryDTO(location: $location, viewport: $viewport)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GeometryDTO'))
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

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeometryDTOToJson(this);
  }
}

abstract class _GeometryDTO extends GeometryDTO {
  const factory _GeometryDTO(
      {CoordintateDTO? location, ViewportDTO? viewport}) = _$_GeometryDTO;
  const _GeometryDTO._() : super._();

  factory _GeometryDTO.fromJson(Map<String, dynamic> json) =
      _$_GeometryDTO.fromJson;

  @override
  CoordintateDTO? get location;
  @override
  ViewportDTO? get viewport;
  @override
  @JsonKey(ignore: true)
  _$GeometryDTOCopyWith<_GeometryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ViewportDTO _$ViewportDTOFromJson(Map<String, dynamic> json) {
  return _ViewportDTO.fromJson(json);
}

/// @nodoc
class _$ViewportDTOTearOff {
  const _$ViewportDTOTearOff();

  _ViewportDTO call({CoordintateDTO? northeast, CoordintateDTO? southwest}) {
    return _ViewportDTO(
      northeast: northeast,
      southwest: southwest,
    );
  }

  ViewportDTO fromJson(Map<String, Object?> json) {
    return ViewportDTO.fromJson(json);
  }
}

/// @nodoc
const $ViewportDTO = _$ViewportDTOTearOff();

/// @nodoc
mixin _$ViewportDTO {
  CoordintateDTO? get northeast => throw _privateConstructorUsedError;
  CoordintateDTO? get southwest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewportDTOCopyWith<ViewportDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewportDTOCopyWith<$Res> {
  factory $ViewportDTOCopyWith(
          ViewportDTO value, $Res Function(ViewportDTO) then) =
      _$ViewportDTOCopyWithImpl<$Res>;
  $Res call({CoordintateDTO? northeast, CoordintateDTO? southwest});

  $CoordintateDTOCopyWith<$Res>? get northeast;
  $CoordintateDTOCopyWith<$Res>? get southwest;
}

/// @nodoc
class _$ViewportDTOCopyWithImpl<$Res> implements $ViewportDTOCopyWith<$Res> {
  _$ViewportDTOCopyWithImpl(this._value, this._then);

  final ViewportDTO _value;
  // ignore: unused_field
  final $Res Function(ViewportDTO) _then;

  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_value.copyWith(
      northeast: northeast == freezed
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as CoordintateDTO?,
      southwest: southwest == freezed
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as CoordintateDTO?,
    ));
  }

  @override
  $CoordintateDTOCopyWith<$Res>? get northeast {
    if (_value.northeast == null) {
      return null;
    }

    return $CoordintateDTOCopyWith<$Res>(_value.northeast!, (value) {
      return _then(_value.copyWith(northeast: value));
    });
  }

  @override
  $CoordintateDTOCopyWith<$Res>? get southwest {
    if (_value.southwest == null) {
      return null;
    }

    return $CoordintateDTOCopyWith<$Res>(_value.southwest!, (value) {
      return _then(_value.copyWith(southwest: value));
    });
  }
}

/// @nodoc
abstract class _$ViewportDTOCopyWith<$Res>
    implements $ViewportDTOCopyWith<$Res> {
  factory _$ViewportDTOCopyWith(
          _ViewportDTO value, $Res Function(_ViewportDTO) then) =
      __$ViewportDTOCopyWithImpl<$Res>;
  @override
  $Res call({CoordintateDTO? northeast, CoordintateDTO? southwest});

  @override
  $CoordintateDTOCopyWith<$Res>? get northeast;
  @override
  $CoordintateDTOCopyWith<$Res>? get southwest;
}

/// @nodoc
class __$ViewportDTOCopyWithImpl<$Res> extends _$ViewportDTOCopyWithImpl<$Res>
    implements _$ViewportDTOCopyWith<$Res> {
  __$ViewportDTOCopyWithImpl(
      _ViewportDTO _value, $Res Function(_ViewportDTO) _then)
      : super(_value, (v) => _then(v as _ViewportDTO));

  @override
  _ViewportDTO get _value => super._value as _ViewportDTO;

  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_ViewportDTO(
      northeast: northeast == freezed
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as CoordintateDTO?,
      southwest: southwest == freezed
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as CoordintateDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViewportDTO with DiagnosticableTreeMixin implements _ViewportDTO {
  const _$_ViewportDTO({this.northeast, this.southwest});

  factory _$_ViewportDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ViewportDTOFromJson(json);

  @override
  final CoordintateDTO? northeast;
  @override
  final CoordintateDTO? southwest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewportDTO(northeast: $northeast, southwest: $southwest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewportDTO'))
      ..add(DiagnosticsProperty('northeast', northeast))
      ..add(DiagnosticsProperty('southwest', southwest));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ViewportDTO &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  @JsonKey(ignore: true)
  @override
  _$ViewportDTOCopyWith<_ViewportDTO> get copyWith =>
      __$ViewportDTOCopyWithImpl<_ViewportDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViewportDTOToJson(this);
  }
}

abstract class _ViewportDTO implements ViewportDTO {
  const factory _ViewportDTO(
      {CoordintateDTO? northeast, CoordintateDTO? southwest}) = _$_ViewportDTO;

  factory _ViewportDTO.fromJson(Map<String, dynamic> json) =
      _$_ViewportDTO.fromJson;

  @override
  CoordintateDTO? get northeast;
  @override
  CoordintateDTO? get southwest;
  @override
  @JsonKey(ignore: true)
  _$ViewportDTOCopyWith<_ViewportDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CoordintateDTO _$CoordintateDTOFromJson(Map<String, dynamic> json) {
  return _CoordintateDTO.fromJson(json);
}

/// @nodoc
class _$CoordintateDTOTearOff {
  const _$CoordintateDTOTearOff();

  _CoordintateDTO call({double? lat, double? lng}) {
    return _CoordintateDTO(
      lat: lat,
      lng: lng,
    );
  }

  CoordintateDTO fromJson(Map<String, Object?> json) {
    return CoordintateDTO.fromJson(json);
  }
}

/// @nodoc
const $CoordintateDTO = _$CoordintateDTOTearOff();

/// @nodoc
mixin _$CoordintateDTO {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordintateDTOCopyWith<CoordintateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordintateDTOCopyWith<$Res> {
  factory $CoordintateDTOCopyWith(
          CoordintateDTO value, $Res Function(CoordintateDTO) then) =
      _$CoordintateDTOCopyWithImpl<$Res>;
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$CoordintateDTOCopyWithImpl<$Res>
    implements $CoordintateDTOCopyWith<$Res> {
  _$CoordintateDTOCopyWithImpl(this._value, this._then);

  final CoordintateDTO _value;
  // ignore: unused_field
  final $Res Function(CoordintateDTO) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$CoordintateDTOCopyWith<$Res>
    implements $CoordintateDTOCopyWith<$Res> {
  factory _$CoordintateDTOCopyWith(
          _CoordintateDTO value, $Res Function(_CoordintateDTO) then) =
      __$CoordintateDTOCopyWithImpl<$Res>;
  @override
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$CoordintateDTOCopyWithImpl<$Res>
    extends _$CoordintateDTOCopyWithImpl<$Res>
    implements _$CoordintateDTOCopyWith<$Res> {
  __$CoordintateDTOCopyWithImpl(
      _CoordintateDTO _value, $Res Function(_CoordintateDTO) _then)
      : super(_value, (v) => _then(v as _CoordintateDTO));

  @override
  _CoordintateDTO get _value => super._value as _CoordintateDTO;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_CoordintateDTO(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoordintateDTO
    with DiagnosticableTreeMixin
    implements _CoordintateDTO {
  const _$_CoordintateDTO({this.lat, this.lng});

  factory _$_CoordintateDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CoordintateDTOFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoordintateDTO(lat: $lat, lng: $lng)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoordintateDTO'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoordintateDTO &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  _$CoordintateDTOCopyWith<_CoordintateDTO> get copyWith =>
      __$CoordintateDTOCopyWithImpl<_CoordintateDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordintateDTOToJson(this);
  }
}

abstract class _CoordintateDTO implements CoordintateDTO {
  const factory _CoordintateDTO({double? lat, double? lng}) = _$_CoordintateDTO;

  factory _CoordintateDTO.fromJson(Map<String, dynamic> json) =
      _$_CoordintateDTO.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$CoordintateDTOCopyWith<_CoordintateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
