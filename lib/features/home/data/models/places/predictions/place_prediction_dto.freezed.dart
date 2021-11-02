// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of place_prediction_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlacePredictionDTO _$PlacePredictionDTOFromJson(Map<String, dynamic> json) {
  return _PlacePredictionDTO.fromJson(json);
}

/// @nodoc
class _$PlacePredictionDTOTearOff {
  const _$PlacePredictionDTOTearOff();

  _PlacePredictionDTO call(
      {@JsonKey(name: 'place_id')
          String? placeId,
      String? reference,
      String? description,
      List<String>? types,
      @JsonKey(name: 'matched_substrings')
          List<MatchedStringsDTO?> matchedSubstrings = const [],
      @JsonKey(defaultValue: [])
          List<PlacePredictionDTO?> predictions = const [],
      @PlaceStatusSerializer()
          required PlaceStatus status,
      String? error}) {
    return _PlacePredictionDTO(
      placeId: placeId,
      reference: reference,
      description: description,
      types: types,
      matchedSubstrings: matchedSubstrings,
      predictions: predictions,
      status: status,
      error: error,
    );
  }

  PlacePredictionDTO fromJson(Map<String, Object?> json) {
    return PlacePredictionDTO.fromJson(json);
  }
}

/// @nodoc
const $PlacePredictionDTO = _$PlacePredictionDTOTearOff();

/// @nodoc
mixin _$PlacePredictionDTO {
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'matched_substrings')
  List<MatchedStringsDTO?> get matchedSubstrings =>
      throw _privateConstructorUsedError; //
  @JsonKey(defaultValue: [])
  List<PlacePredictionDTO?> get predictions =>
      throw _privateConstructorUsedError;
  @PlaceStatusSerializer()
  PlaceStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacePredictionDTOCopyWith<PlacePredictionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacePredictionDTOCopyWith<$Res> {
  factory $PlacePredictionDTOCopyWith(
          PlacePredictionDTO value, $Res Function(PlacePredictionDTO) then) =
      _$PlacePredictionDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'place_id')
          String? placeId,
      String? reference,
      String? description,
      List<String>? types,
      @JsonKey(name: 'matched_substrings')
          List<MatchedStringsDTO?> matchedSubstrings,
      @JsonKey(defaultValue: [])
          List<PlacePredictionDTO?> predictions,
      @PlaceStatusSerializer()
          PlaceStatus status,
      String? error});
}

/// @nodoc
class _$PlacePredictionDTOCopyWithImpl<$Res>
    implements $PlacePredictionDTOCopyWith<$Res> {
  _$PlacePredictionDTOCopyWithImpl(this._value, this._then);

  final PlacePredictionDTO _value;
  // ignore: unused_field
  final $Res Function(PlacePredictionDTO) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? description = freezed,
    Object? types = freezed,
    Object? matchedSubstrings = freezed,
    Object? predictions = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      matchedSubstrings: matchedSubstrings == freezed
          ? _value.matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedStringsDTO?>,
      predictions: predictions == freezed
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<PlacePredictionDTO?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PlacePredictionDTOCopyWith<$Res>
    implements $PlacePredictionDTOCopyWith<$Res> {
  factory _$PlacePredictionDTOCopyWith(
          _PlacePredictionDTO value, $Res Function(_PlacePredictionDTO) then) =
      __$PlacePredictionDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'place_id')
          String? placeId,
      String? reference,
      String? description,
      List<String>? types,
      @JsonKey(name: 'matched_substrings')
          List<MatchedStringsDTO?> matchedSubstrings,
      @JsonKey(defaultValue: [])
          List<PlacePredictionDTO?> predictions,
      @PlaceStatusSerializer()
          PlaceStatus status,
      String? error});
}

/// @nodoc
class __$PlacePredictionDTOCopyWithImpl<$Res>
    extends _$PlacePredictionDTOCopyWithImpl<$Res>
    implements _$PlacePredictionDTOCopyWith<$Res> {
  __$PlacePredictionDTOCopyWithImpl(
      _PlacePredictionDTO _value, $Res Function(_PlacePredictionDTO) _then)
      : super(_value, (v) => _then(v as _PlacePredictionDTO));

  @override
  _PlacePredictionDTO get _value => super._value as _PlacePredictionDTO;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? description = freezed,
    Object? types = freezed,
    Object? matchedSubstrings = freezed,
    Object? predictions = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_PlacePredictionDTO(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      matchedSubstrings: matchedSubstrings == freezed
          ? _value.matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedStringsDTO?>,
      predictions: predictions == freezed
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<PlacePredictionDTO?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlacePredictionDTO extends _PlacePredictionDTO {
  const _$_PlacePredictionDTO(
      {@JsonKey(name: 'place_id') this.placeId,
      this.reference,
      this.description,
      this.types,
      @JsonKey(name: 'matched_substrings') this.matchedSubstrings = const [],
      @JsonKey(defaultValue: []) this.predictions = const [],
      @PlaceStatusSerializer() required this.status,
      this.error})
      : super._();

  factory _$_PlacePredictionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PlacePredictionDTOFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  final String? reference;
  @override
  final String? description;
  @override
  final List<String>? types;
  @override
  @JsonKey(name: 'matched_substrings')
  final List<MatchedStringsDTO?> matchedSubstrings;
  @override //
  @JsonKey(defaultValue: [])
  final List<PlacePredictionDTO?> predictions;
  @override
  @PlaceStatusSerializer()
  final PlaceStatus status;
  @override
  final String? error;

  @override
  String toString() {
    return 'PlacePredictionDTO(placeId: $placeId, reference: $reference, description: $description, types: $types, matchedSubstrings: $matchedSubstrings, predictions: $predictions, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlacePredictionDTO &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality()
                .equals(other.matchedSubstrings, matchedSubstrings) &&
            const DeepCollectionEquality()
                .equals(other.predictions, predictions) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      placeId,
      reference,
      description,
      const DeepCollectionEquality().hash(types),
      const DeepCollectionEquality().hash(matchedSubstrings),
      const DeepCollectionEquality().hash(predictions),
      status,
      error);

  @JsonKey(ignore: true)
  @override
  _$PlacePredictionDTOCopyWith<_PlacePredictionDTO> get copyWith =>
      __$PlacePredictionDTOCopyWithImpl<_PlacePredictionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacePredictionDTOToJson(this);
  }
}

abstract class _PlacePredictionDTO extends PlacePredictionDTO {
  const factory _PlacePredictionDTO(
      {@JsonKey(name: 'place_id')
          String? placeId,
      String? reference,
      String? description,
      List<String>? types,
      @JsonKey(name: 'matched_substrings')
          List<MatchedStringsDTO?> matchedSubstrings,
      @JsonKey(defaultValue: [])
          List<PlacePredictionDTO?> predictions,
      @PlaceStatusSerializer()
          required PlaceStatus status,
      String? error}) = _$_PlacePredictionDTO;
  const _PlacePredictionDTO._() : super._();

  factory _PlacePredictionDTO.fromJson(Map<String, dynamic> json) =
      _$_PlacePredictionDTO.fromJson;

  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  String? get reference;
  @override
  String? get description;
  @override
  List<String>? get types;
  @override
  @JsonKey(name: 'matched_substrings')
  List<MatchedStringsDTO?> get matchedSubstrings;
  @override //
  @JsonKey(defaultValue: [])
  List<PlacePredictionDTO?> get predictions;
  @override
  @PlaceStatusSerializer()
  PlaceStatus get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$PlacePredictionDTOCopyWith<_PlacePredictionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchedStringsDTO _$MatchedStringsDTOFromJson(Map<String, dynamic> json) {
  return _MatchedStringsDTO.fromJson(json);
}

/// @nodoc
class _$MatchedStringsDTOTearOff {
  const _$MatchedStringsDTOTearOff();

  _MatchedStringsDTO call({required int? length, required int? offset}) {
    return _MatchedStringsDTO(
      length: length,
      offset: offset,
    );
  }

  MatchedStringsDTO fromJson(Map<String, Object?> json) {
    return MatchedStringsDTO.fromJson(json);
  }
}

/// @nodoc
const $MatchedStringsDTO = _$MatchedStringsDTOTearOff();

/// @nodoc
mixin _$MatchedStringsDTO {
  int? get length => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchedStringsDTOCopyWith<MatchedStringsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchedStringsDTOCopyWith<$Res> {
  factory $MatchedStringsDTOCopyWith(
          MatchedStringsDTO value, $Res Function(MatchedStringsDTO) then) =
      _$MatchedStringsDTOCopyWithImpl<$Res>;
  $Res call({int? length, int? offset});
}

/// @nodoc
class _$MatchedStringsDTOCopyWithImpl<$Res>
    implements $MatchedStringsDTOCopyWith<$Res> {
  _$MatchedStringsDTOCopyWithImpl(this._value, this._then);

  final MatchedStringsDTO _value;
  // ignore: unused_field
  final $Res Function(MatchedStringsDTO) _then;

  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MatchedStringsDTOCopyWith<$Res>
    implements $MatchedStringsDTOCopyWith<$Res> {
  factory _$MatchedStringsDTOCopyWith(
          _MatchedStringsDTO value, $Res Function(_MatchedStringsDTO) then) =
      __$MatchedStringsDTOCopyWithImpl<$Res>;
  @override
  $Res call({int? length, int? offset});
}

/// @nodoc
class __$MatchedStringsDTOCopyWithImpl<$Res>
    extends _$MatchedStringsDTOCopyWithImpl<$Res>
    implements _$MatchedStringsDTOCopyWith<$Res> {
  __$MatchedStringsDTOCopyWithImpl(
      _MatchedStringsDTO _value, $Res Function(_MatchedStringsDTO) _then)
      : super(_value, (v) => _then(v as _MatchedStringsDTO));

  @override
  _MatchedStringsDTO get _value => super._value as _MatchedStringsDTO;

  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_MatchedStringsDTO(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchedStringsDTO extends _MatchedStringsDTO {
  const _$_MatchedStringsDTO({required this.length, required this.offset})
      : super._();

  factory _$_MatchedStringsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MatchedStringsDTOFromJson(json);

  @override
  final int? length;
  @override
  final int? offset;

  @override
  String toString() {
    return 'MatchedStringsDTO(length: $length, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatchedStringsDTO &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, length, offset);

  @JsonKey(ignore: true)
  @override
  _$MatchedStringsDTOCopyWith<_MatchedStringsDTO> get copyWith =>
      __$MatchedStringsDTOCopyWithImpl<_MatchedStringsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchedStringsDTOToJson(this);
  }
}

abstract class _MatchedStringsDTO extends MatchedStringsDTO {
  const factory _MatchedStringsDTO(
      {required int? length, required int? offset}) = _$_MatchedStringsDTO;
  const _MatchedStringsDTO._() : super._();

  factory _MatchedStringsDTO.fromJson(Map<String, dynamic> json) =
      _$_MatchedStringsDTO.fromJson;

  @override
  int? get length;
  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$MatchedStringsDTOCopyWith<_MatchedStringsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
