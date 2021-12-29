// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of place_prediction.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlacePredictionTearOff {
  const _$PlacePredictionTearOff();

  _PlacePrediction call(
      {required UniqueId<String?> placeId,
      required UniqueId<String?> reference,
      required BasicTextField<String?> description,
      required ImmutableStrings types,
      required KtList<MatchedSubstrings?> matched}) {
    return _PlacePrediction(
      placeId: placeId,
      reference: reference,
      description: description,
      types: types,
      matched: matched,
    );
  }
}

/// @nodoc
const $PlacePrediction = _$PlacePredictionTearOff();

/// @nodoc
mixin _$PlacePrediction {
  UniqueId<String?> get placeId => throw _privateConstructorUsedError;
  UniqueId<String?> get reference => throw _privateConstructorUsedError;
  BasicTextField<String?> get description => throw _privateConstructorUsedError;
  ImmutableStrings get types => throw _privateConstructorUsedError;
  KtList<MatchedSubstrings?> get matched => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlacePredictionCopyWith<PlacePrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacePredictionCopyWith<$Res> {
  factory $PlacePredictionCopyWith(
          PlacePrediction value, $Res Function(PlacePrediction) then) =
      _$PlacePredictionCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> placeId,
      UniqueId<String?> reference,
      BasicTextField<String?> description,
      ImmutableStrings types,
      KtList<MatchedSubstrings?> matched});
}

/// @nodoc
class _$PlacePredictionCopyWithImpl<$Res>
    implements $PlacePredictionCopyWith<$Res> {
  _$PlacePredictionCopyWithImpl(this._value, this._then);

  final PlacePrediction _value;
  // ignore: unused_field
  final $Res Function(PlacePrediction) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? description = freezed,
    Object? types = freezed,
    Object? matched = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as ImmutableStrings,
      matched: matched == freezed
          ? _value.matched
          : matched // ignore: cast_nullable_to_non_nullable
              as KtList<MatchedSubstrings?>,
    ));
  }
}

/// @nodoc
abstract class _$PlacePredictionCopyWith<$Res>
    implements $PlacePredictionCopyWith<$Res> {
  factory _$PlacePredictionCopyWith(
          _PlacePrediction value, $Res Function(_PlacePrediction) then) =
      __$PlacePredictionCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> placeId,
      UniqueId<String?> reference,
      BasicTextField<String?> description,
      ImmutableStrings types,
      KtList<MatchedSubstrings?> matched});
}

/// @nodoc
class __$PlacePredictionCopyWithImpl<$Res>
    extends _$PlacePredictionCopyWithImpl<$Res>
    implements _$PlacePredictionCopyWith<$Res> {
  __$PlacePredictionCopyWithImpl(
      _PlacePrediction _value, $Res Function(_PlacePrediction) _then)
      : super(_value, (v) => _then(v as _PlacePrediction));

  @override
  _PlacePrediction get _value => super._value as _PlacePrediction;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? description = freezed,
    Object? types = freezed,
    Object? matched = freezed,
  }) {
    return _then(_PlacePrediction(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as ImmutableStrings,
      matched: matched == freezed
          ? _value.matched
          : matched // ignore: cast_nullable_to_non_nullable
              as KtList<MatchedSubstrings?>,
    ));
  }
}

/// @nodoc

class _$_PlacePrediction extends _PlacePrediction {
  const _$_PlacePrediction(
      {required this.placeId,
      required this.reference,
      required this.description,
      required this.types,
      required this.matched})
      : super._();

  @override
  final UniqueId<String?> placeId;
  @override
  final UniqueId<String?> reference;
  @override
  final BasicTextField<String?> description;
  @override
  final ImmutableStrings types;
  @override
  final KtList<MatchedSubstrings?> matched;

  @override
  String toString() {
    return 'PlacePrediction(placeId: $placeId, reference: $reference, description: $description, types: $types, matched: $matched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlacePrediction &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality().equals(other.matched, matched));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(reference),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(types),
      const DeepCollectionEquality().hash(matched));

  @JsonKey(ignore: true)
  @override
  _$PlacePredictionCopyWith<_PlacePrediction> get copyWith =>
      __$PlacePredictionCopyWithImpl<_PlacePrediction>(this, _$identity);
}

abstract class _PlacePrediction extends PlacePrediction {
  const factory _PlacePrediction(
      {required UniqueId<String?> placeId,
      required UniqueId<String?> reference,
      required BasicTextField<String?> description,
      required ImmutableStrings types,
      required KtList<MatchedSubstrings?> matched}) = _$_PlacePrediction;
  const _PlacePrediction._() : super._();

  @override
  UniqueId<String?> get placeId;
  @override
  UniqueId<String?> get reference;
  @override
  BasicTextField<String?> get description;
  @override
  ImmutableStrings get types;
  @override
  KtList<MatchedSubstrings?> get matched;
  @override
  @JsonKey(ignore: true)
  _$PlacePredictionCopyWith<_PlacePrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MatchedSubstringsTearOff {
  const _$MatchedSubstringsTearOff();

  _MatchedSubstrings call(
      {required BasicTextField<int?> length,
      required BasicTextField<int?> offset}) {
    return _MatchedSubstrings(
      length: length,
      offset: offset,
    );
  }
}

/// @nodoc
const $MatchedSubstrings = _$MatchedSubstringsTearOff();

/// @nodoc
mixin _$MatchedSubstrings {
  BasicTextField<int?> get length => throw _privateConstructorUsedError;
  BasicTextField<int?> get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatchedSubstringsCopyWith<MatchedSubstrings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchedSubstringsCopyWith<$Res> {
  factory $MatchedSubstringsCopyWith(
          MatchedSubstrings value, $Res Function(MatchedSubstrings) then) =
      _$MatchedSubstringsCopyWithImpl<$Res>;
  $Res call({BasicTextField<int?> length, BasicTextField<int?> offset});
}

/// @nodoc
class _$MatchedSubstringsCopyWithImpl<$Res>
    implements $MatchedSubstringsCopyWith<$Res> {
  _$MatchedSubstringsCopyWithImpl(this._value, this._then);

  final MatchedSubstrings _value;
  // ignore: unused_field
  final $Res Function(MatchedSubstrings) _then;

  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
    ));
  }
}

/// @nodoc
abstract class _$MatchedSubstringsCopyWith<$Res>
    implements $MatchedSubstringsCopyWith<$Res> {
  factory _$MatchedSubstringsCopyWith(
          _MatchedSubstrings value, $Res Function(_MatchedSubstrings) then) =
      __$MatchedSubstringsCopyWithImpl<$Res>;
  @override
  $Res call({BasicTextField<int?> length, BasicTextField<int?> offset});
}

/// @nodoc
class __$MatchedSubstringsCopyWithImpl<$Res>
    extends _$MatchedSubstringsCopyWithImpl<$Res>
    implements _$MatchedSubstringsCopyWith<$Res> {
  __$MatchedSubstringsCopyWithImpl(
      _MatchedSubstrings _value, $Res Function(_MatchedSubstrings) _then)
      : super(_value, (v) => _then(v as _MatchedSubstrings));

  @override
  _MatchedSubstrings get _value => super._value as _MatchedSubstrings;

  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_MatchedSubstrings(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
    ));
  }
}

/// @nodoc

class _$_MatchedSubstrings extends _MatchedSubstrings {
  const _$_MatchedSubstrings({required this.length, required this.offset})
      : super._();

  @override
  final BasicTextField<int?> length;
  @override
  final BasicTextField<int?> offset;

  @override
  String toString() {
    return 'MatchedSubstrings(length: $length, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatchedSubstrings &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$MatchedSubstringsCopyWith<_MatchedSubstrings> get copyWith =>
      __$MatchedSubstringsCopyWithImpl<_MatchedSubstrings>(this, _$identity);
}

abstract class _MatchedSubstrings extends MatchedSubstrings {
  const factory _MatchedSubstrings(
      {required BasicTextField<int?> length,
      required BasicTextField<int?> offset}) = _$_MatchedSubstrings;
  const _MatchedSubstrings._() : super._();

  @override
  BasicTextField<int?> get length;
  @override
  BasicTextField<int?> get offset;
  @override
  @JsonKey(ignore: true)
  _$MatchedSubstringsCopyWith<_MatchedSubstrings> get copyWith =>
      throw _privateConstructorUsedError;
}
