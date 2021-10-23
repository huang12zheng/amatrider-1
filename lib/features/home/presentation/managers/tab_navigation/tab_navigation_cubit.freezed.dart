// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tab_navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TabNavigationStateTearOff {
  const _$TabNavigationStateTearOff();

  _TabNavigationState call(
      {int currentIndex = 0, bool isLoading = false, bool isInit = true}) {
    return _TabNavigationState(
      currentIndex: currentIndex,
      isLoading: isLoading,
      isInit: isInit,
    );
  }
}

/// @nodoc
const $TabNavigationState = _$TabNavigationStateTearOff();

/// @nodoc
mixin _$TabNavigationState {
  int get currentIndex => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isInit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabNavigationStateCopyWith<TabNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabNavigationStateCopyWith<$Res> {
  factory $TabNavigationStateCopyWith(
          TabNavigationState value, $Res Function(TabNavigationState) then) =
      _$TabNavigationStateCopyWithImpl<$Res>;
  $Res call({int currentIndex, bool isLoading, bool isInit});
}

/// @nodoc
class _$TabNavigationStateCopyWithImpl<$Res>
    implements $TabNavigationStateCopyWith<$Res> {
  _$TabNavigationStateCopyWithImpl(this._value, this._then);

  final TabNavigationState _value;
  // ignore: unused_field
  final $Res Function(TabNavigationState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? isLoading = freezed,
    Object? isInit = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInit: isInit == freezed
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TabNavigationStateCopyWith<$Res>
    implements $TabNavigationStateCopyWith<$Res> {
  factory _$TabNavigationStateCopyWith(
          _TabNavigationState value, $Res Function(_TabNavigationState) then) =
      __$TabNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex, bool isLoading, bool isInit});
}

/// @nodoc
class __$TabNavigationStateCopyWithImpl<$Res>
    extends _$TabNavigationStateCopyWithImpl<$Res>
    implements _$TabNavigationStateCopyWith<$Res> {
  __$TabNavigationStateCopyWithImpl(
      _TabNavigationState _value, $Res Function(_TabNavigationState) _then)
      : super(_value, (v) => _then(v as _TabNavigationState));

  @override
  _TabNavigationState get _value => super._value as _TabNavigationState;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? isLoading = freezed,
    Object? isInit = freezed,
  }) {
    return _then(_TabNavigationState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInit: isInit == freezed
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TabNavigationState implements _TabNavigationState {
  const _$_TabNavigationState(
      {this.currentIndex = 0, this.isLoading = false, this.isInit = true});

  @JsonKey(defaultValue: 0)
  @override
  final int currentIndex;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: true)
  @override
  final bool isInit;

  @override
  String toString() {
    return 'TabNavigationState(currentIndex: $currentIndex, isLoading: $isLoading, isInit: $isInit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TabNavigationState &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isInit, isInit) || other.isInit == isInit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex, isLoading, isInit);

  @JsonKey(ignore: true)
  @override
  _$TabNavigationStateCopyWith<_TabNavigationState> get copyWith =>
      __$TabNavigationStateCopyWithImpl<_TabNavigationState>(this, _$identity);
}

abstract class _TabNavigationState implements TabNavigationState {
  const factory _TabNavigationState(
      {int currentIndex, bool isLoading, bool isInit}) = _$_TabNavigationState;

  @override
  int get currentIndex;
  @override
  bool get isLoading;
  @override
  bool get isInit;
  @override
  @JsonKey(ignore: true)
  _$TabNavigationStateCopyWith<_TabNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
