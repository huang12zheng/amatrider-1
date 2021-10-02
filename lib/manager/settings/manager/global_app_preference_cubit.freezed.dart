// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global_app_preference_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GlobalPreferenceStateTearOff {
  const _$GlobalPreferenceStateTearOff();

  _GlobalPreferenceState call(
      {bool isLoading = false,
      bool isFirstLaunch = true,
      bool signedInRecently = false}) {
    return _GlobalPreferenceState(
      isLoading: isLoading,
      isFirstLaunch: isFirstLaunch,
      signedInRecently: signedInRecently,
    );
  }
}

/// @nodoc
const $GlobalPreferenceState = _$GlobalPreferenceStateTearOff();

/// @nodoc
mixin _$GlobalPreferenceState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFirstLaunch => throw _privateConstructorUsedError;
  bool get signedInRecently => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalPreferenceStateCopyWith<GlobalPreferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalPreferenceStateCopyWith<$Res> {
  factory $GlobalPreferenceStateCopyWith(GlobalPreferenceState value,
          $Res Function(GlobalPreferenceState) then) =
      _$GlobalPreferenceStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isFirstLaunch, bool signedInRecently});
}

/// @nodoc
class _$GlobalPreferenceStateCopyWithImpl<$Res>
    implements $GlobalPreferenceStateCopyWith<$Res> {
  _$GlobalPreferenceStateCopyWithImpl(this._value, this._then);

  final GlobalPreferenceState _value;
  // ignore: unused_field
  final $Res Function(GlobalPreferenceState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFirstLaunch = freezed,
    Object? signedInRecently = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstLaunch: isFirstLaunch == freezed
          ? _value.isFirstLaunch
          : isFirstLaunch // ignore: cast_nullable_to_non_nullable
              as bool,
      signedInRecently: signedInRecently == freezed
          ? _value.signedInRecently
          : signedInRecently // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GlobalPreferenceStateCopyWith<$Res>
    implements $GlobalPreferenceStateCopyWith<$Res> {
  factory _$GlobalPreferenceStateCopyWith(_GlobalPreferenceState value,
          $Res Function(_GlobalPreferenceState) then) =
      __$GlobalPreferenceStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isFirstLaunch, bool signedInRecently});
}

/// @nodoc
class __$GlobalPreferenceStateCopyWithImpl<$Res>
    extends _$GlobalPreferenceStateCopyWithImpl<$Res>
    implements _$GlobalPreferenceStateCopyWith<$Res> {
  __$GlobalPreferenceStateCopyWithImpl(_GlobalPreferenceState _value,
      $Res Function(_GlobalPreferenceState) _then)
      : super(_value, (v) => _then(v as _GlobalPreferenceState));

  @override
  _GlobalPreferenceState get _value => super._value as _GlobalPreferenceState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFirstLaunch = freezed,
    Object? signedInRecently = freezed,
  }) {
    return _then(_GlobalPreferenceState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstLaunch: isFirstLaunch == freezed
          ? _value.isFirstLaunch
          : isFirstLaunch // ignore: cast_nullable_to_non_nullable
              as bool,
      signedInRecently: signedInRecently == freezed
          ? _value.signedInRecently
          : signedInRecently // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GlobalPreferenceState implements _GlobalPreferenceState {
  const _$_GlobalPreferenceState(
      {this.isLoading = false,
      this.isFirstLaunch = true,
      this.signedInRecently = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: true)
  @override
  final bool isFirstLaunch;
  @JsonKey(defaultValue: false)
  @override
  final bool signedInRecently;

  @override
  String toString() {
    return 'GlobalPreferenceState(isLoading: $isLoading, isFirstLaunch: $isFirstLaunch, signedInRecently: $signedInRecently)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GlobalPreferenceState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isFirstLaunch, isFirstLaunch) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstLaunch, isFirstLaunch)) &&
            (identical(other.signedInRecently, signedInRecently) ||
                const DeepCollectionEquality()
                    .equals(other.signedInRecently, signedInRecently)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isFirstLaunch) ^
      const DeepCollectionEquality().hash(signedInRecently);

  @JsonKey(ignore: true)
  @override
  _$GlobalPreferenceStateCopyWith<_GlobalPreferenceState> get copyWith =>
      __$GlobalPreferenceStateCopyWithImpl<_GlobalPreferenceState>(
          this, _$identity);
}

abstract class _GlobalPreferenceState implements GlobalPreferenceState {
  const factory _GlobalPreferenceState(
      {bool isLoading,
      bool isFirstLaunch,
      bool signedInRecently}) = _$_GlobalPreferenceState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isFirstLaunch => throw _privateConstructorUsedError;
  @override
  bool get signedInRecently => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GlobalPreferenceStateCopyWith<_GlobalPreferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}
