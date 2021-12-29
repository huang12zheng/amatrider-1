// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of country_list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDTOList _$CountryDTOListFromJson(Map<String, dynamic> json) {
  return _CountryDTOList.fromJson(json);
}

/// @nodoc
class _$CountryDTOListTearOff {
  const _$CountryDTOListTearOff();

  _CountryDTOList call(
      {@JsonKey(defaultValue: []) List<CountryDTO> data = const []}) {
    return _CountryDTOList(
      data: data,
    );
  }

  CountryDTOList fromJson(Map<String, Object?> json) {
    return CountryDTOList.fromJson(json);
  }
}

/// @nodoc
const $CountryDTOList = _$CountryDTOListTearOff();

/// @nodoc
mixin _$CountryDTOList {
  @JsonKey(defaultValue: [])
  List<CountryDTO> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDTOListCopyWith<CountryDTOList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDTOListCopyWith<$Res> {
  factory $CountryDTOListCopyWith(
          CountryDTOList value, $Res Function(CountryDTOList) then) =
      _$CountryDTOListCopyWithImpl<$Res>;
  $Res call({@JsonKey(defaultValue: []) List<CountryDTO> data});
}

/// @nodoc
class _$CountryDTOListCopyWithImpl<$Res>
    implements $CountryDTOListCopyWith<$Res> {
  _$CountryDTOListCopyWithImpl(this._value, this._then);

  final CountryDTOList _value;
  // ignore: unused_field
  final $Res Function(CountryDTOList) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryDTO>,
    ));
  }
}

/// @nodoc
abstract class _$CountryDTOListCopyWith<$Res>
    implements $CountryDTOListCopyWith<$Res> {
  factory _$CountryDTOListCopyWith(
          _CountryDTOList value, $Res Function(_CountryDTOList) then) =
      __$CountryDTOListCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(defaultValue: []) List<CountryDTO> data});
}

/// @nodoc
class __$CountryDTOListCopyWithImpl<$Res>
    extends _$CountryDTOListCopyWithImpl<$Res>
    implements _$CountryDTOListCopyWith<$Res> {
  __$CountryDTOListCopyWithImpl(
      _CountryDTOList _value, $Res Function(_CountryDTOList) _then)
      : super(_value, (v) => _then(v as _CountryDTOList));

  @override
  _CountryDTOList get _value => super._value as _CountryDTOList;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_CountryDTOList(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDTOList extends _CountryDTOList {
  const _$_CountryDTOList({@JsonKey(defaultValue: []) this.data = const []})
      : super._();

  factory _$_CountryDTOList.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDTOListFromJson(json);

  @override
  @JsonKey(defaultValue: [])
  final List<CountryDTO> data;

  @override
  String toString() {
    return 'CountryDTOList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountryDTOList &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$CountryDTOListCopyWith<_CountryDTOList> get copyWith =>
      __$CountryDTOListCopyWithImpl<_CountryDTOList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDTOListToJson(this);
  }
}

abstract class _CountryDTOList extends CountryDTOList {
  const factory _CountryDTOList(
      {@JsonKey(defaultValue: []) List<CountryDTO> data}) = _$_CountryDTOList;
  const _CountryDTOList._() : super._();

  factory _CountryDTOList.fromJson(Map<String, dynamic> json) =
      _$_CountryDTOList.fromJson;

  @override
  @JsonKey(defaultValue: [])
  List<CountryDTO> get data;
  @override
  @JsonKey(ignore: true)
  _$CountryDTOListCopyWith<_CountryDTOList> get copyWith =>
      throw _privateConstructorUsedError;
}
