// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of address_component.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddressComponentTearOff {
  const _$AddressComponentTearOff();

  _AddressComponent call(
      {required BasicTextField<String?> longName,
      required BasicTextField<String?> shortName,
      KtList<AddressComponentType> types = const KtList.empty()}) {
    return _AddressComponent(
      longName: longName,
      shortName: shortName,
      types: types,
    );
  }
}

/// @nodoc
const $AddressComponent = _$AddressComponentTearOff();

/// @nodoc
mixin _$AddressComponent {
  BasicTextField<String?> get longName => throw _privateConstructorUsedError;
  BasicTextField<String?> get shortName => throw _privateConstructorUsedError;
  KtList<AddressComponentType> get types => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressComponentCopyWith<AddressComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressComponentCopyWith<$Res> {
  factory $AddressComponentCopyWith(
          AddressComponent value, $Res Function(AddressComponent) then) =
      _$AddressComponentCopyWithImpl<$Res>;
  $Res call(
      {BasicTextField<String?> longName,
      BasicTextField<String?> shortName,
      KtList<AddressComponentType> types});
}

/// @nodoc
class _$AddressComponentCopyWithImpl<$Res>
    implements $AddressComponentCopyWith<$Res> {
  _$AddressComponentCopyWithImpl(this._value, this._then);

  final AddressComponent _value;
  // ignore: unused_field
  final $Res Function(AddressComponent) _then;

  @override
  $Res call({
    Object? longName = freezed,
    Object? shortName = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      longName: longName == freezed
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as KtList<AddressComponentType>,
    ));
  }
}

/// @nodoc
abstract class _$AddressComponentCopyWith<$Res>
    implements $AddressComponentCopyWith<$Res> {
  factory _$AddressComponentCopyWith(
          _AddressComponent value, $Res Function(_AddressComponent) then) =
      __$AddressComponentCopyWithImpl<$Res>;
  @override
  $Res call(
      {BasicTextField<String?> longName,
      BasicTextField<String?> shortName,
      KtList<AddressComponentType> types});
}

/// @nodoc
class __$AddressComponentCopyWithImpl<$Res>
    extends _$AddressComponentCopyWithImpl<$Res>
    implements _$AddressComponentCopyWith<$Res> {
  __$AddressComponentCopyWithImpl(
      _AddressComponent _value, $Res Function(_AddressComponent) _then)
      : super(_value, (v) => _then(v as _AddressComponent));

  @override
  _AddressComponent get _value => super._value as _AddressComponent;

  @override
  $Res call({
    Object? longName = freezed,
    Object? shortName = freezed,
    Object? types = freezed,
  }) {
    return _then(_AddressComponent(
      longName: longName == freezed
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as KtList<AddressComponentType>,
    ));
  }
}

/// @nodoc

class _$_AddressComponent extends _AddressComponent {
  const _$_AddressComponent(
      {required this.longName,
      required this.shortName,
      this.types = const KtList.empty()})
      : super._();

  @override
  final BasicTextField<String?> longName;
  @override
  final BasicTextField<String?> shortName;
  @JsonKey()
  @override
  final KtList<AddressComponentType> types;

  @override
  String toString() {
    return 'AddressComponent(longName: $longName, shortName: $shortName, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressComponent &&
            const DeepCollectionEquality().equals(other.longName, longName) &&
            const DeepCollectionEquality().equals(other.shortName, shortName) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(longName),
      const DeepCollectionEquality().hash(shortName),
      const DeepCollectionEquality().hash(types));

  @JsonKey(ignore: true)
  @override
  _$AddressComponentCopyWith<_AddressComponent> get copyWith =>
      __$AddressComponentCopyWithImpl<_AddressComponent>(this, _$identity);
}

abstract class _AddressComponent extends AddressComponent {
  const factory _AddressComponent(
      {required BasicTextField<String?> longName,
      required BasicTextField<String?> shortName,
      KtList<AddressComponentType> types}) = _$_AddressComponent;
  const _AddressComponent._() : super._();

  @override
  BasicTextField<String?> get longName;
  @override
  BasicTextField<String?> get shortName;
  @override
  KtList<AddressComponentType> get types;
  @override
  @JsonKey(ignore: true)
  _$AddressComponentCopyWith<_AddressComponent> get copyWith =>
      throw _privateConstructorUsedError;
}
