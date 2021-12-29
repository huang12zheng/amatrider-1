// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of notification_meta.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationMetaTearOff {
  const _$NotificationMetaTearOff();

  _NotificationMeta<K> call<K>(K value) {
    return _NotificationMeta<K>(
      value,
    );
  }
}

/// @nodoc
const $NotificationMeta = _$NotificationMetaTearOff();

/// @nodoc
mixin _$NotificationMeta<K> {
  K get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationMetaCopyWith<K, NotificationMeta<K>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMetaCopyWith<K, $Res> {
  factory $NotificationMetaCopyWith(
          NotificationMeta<K> value, $Res Function(NotificationMeta<K>) then) =
      _$NotificationMetaCopyWithImpl<K, $Res>;
  $Res call({K value});
}

/// @nodoc
class _$NotificationMetaCopyWithImpl<K, $Res>
    implements $NotificationMetaCopyWith<K, $Res> {
  _$NotificationMetaCopyWithImpl(this._value, this._then);

  final NotificationMeta<K> _value;
  // ignore: unused_field
  final $Res Function(NotificationMeta<K>) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as K,
    ));
  }
}

/// @nodoc
abstract class _$NotificationMetaCopyWith<K, $Res>
    implements $NotificationMetaCopyWith<K, $Res> {
  factory _$NotificationMetaCopyWith(_NotificationMeta<K> value,
          $Res Function(_NotificationMeta<K>) then) =
      __$NotificationMetaCopyWithImpl<K, $Res>;
  @override
  $Res call({K value});
}

/// @nodoc
class __$NotificationMetaCopyWithImpl<K, $Res>
    extends _$NotificationMetaCopyWithImpl<K, $Res>
    implements _$NotificationMetaCopyWith<K, $Res> {
  __$NotificationMetaCopyWithImpl(
      _NotificationMeta<K> _value, $Res Function(_NotificationMeta<K>) _then)
      : super(_value, (v) => _then(v as _NotificationMeta<K>));

  @override
  _NotificationMeta<K> get _value => super._value as _NotificationMeta<K>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_NotificationMeta<K>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as K,
    ));
  }
}

/// @nodoc

class _$_NotificationMeta<K> extends _NotificationMeta<K> {
  const _$_NotificationMeta(this.value) : super._();

  @override
  final K value;

  @override
  String toString() {
    return 'NotificationMeta<$K>(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationMeta<K> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$NotificationMetaCopyWith<K, _NotificationMeta<K>> get copyWith =>
      __$NotificationMetaCopyWithImpl<K, _NotificationMeta<K>>(
          this, _$identity);
}

abstract class _NotificationMeta<K> extends NotificationMeta<K> {
  const factory _NotificationMeta(K value) = _$_NotificationMeta<K>;
  const _NotificationMeta._() : super._();

  @override
  K get value;
  @override
  @JsonKey(ignore: true)
  _$NotificationMetaCopyWith<K, _NotificationMeta<K>> get copyWith =>
      throw _privateConstructorUsedError;
}
