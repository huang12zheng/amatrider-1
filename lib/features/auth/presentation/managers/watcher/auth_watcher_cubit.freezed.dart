// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthWatcherStateTearOff {
  const _$AuthWatcherStateTearOff();

  _AuthWatcherState call(
      {bool isLoading = false,
      bool isAuthenticated = false,
      bool isListeningForAuthChanges = false,
      bool isListeningForUserChanges = false,
      User? user,
      Option<User?> option = const None()}) {
    return _AuthWatcherState(
      isLoading: isLoading,
      isAuthenticated: isAuthenticated,
      isListeningForAuthChanges: isListeningForAuthChanges,
      isListeningForUserChanges: isListeningForUserChanges,
      user: user,
      option: option,
    );
  }
}

/// @nodoc
const $AuthWatcherState = _$AuthWatcherStateTearOff();

/// @nodoc
mixin _$AuthWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get isListeningForAuthChanges => throw _privateConstructorUsedError;
  bool get isListeningForUserChanges => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Option<User?> get option => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthWatcherStateCopyWith<AuthWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthWatcherStateCopyWith<$Res> {
  factory $AuthWatcherStateCopyWith(
          AuthWatcherState value, $Res Function(AuthWatcherState) then) =
      _$AuthWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isAuthenticated,
      bool isListeningForAuthChanges,
      bool isListeningForUserChanges,
      User? user,
      Option<User?> option});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthWatcherStateCopyWithImpl<$Res>
    implements $AuthWatcherStateCopyWith<$Res> {
  _$AuthWatcherStateCopyWithImpl(this._value, this._then);

  final AuthWatcherState _value;
  // ignore: unused_field
  final $Res Function(AuthWatcherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isAuthenticated = freezed,
    Object? isListeningForAuthChanges = freezed,
    Object? isListeningForUserChanges = freezed,
    Object? user = freezed,
    Object? option = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isListeningForAuthChanges: isListeningForAuthChanges == freezed
          ? _value.isListeningForAuthChanges
          : isListeningForAuthChanges // ignore: cast_nullable_to_non_nullable
              as bool,
      isListeningForUserChanges: isListeningForUserChanges == freezed
          ? _value.isListeningForUserChanges
          : isListeningForUserChanges // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<User?>,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthWatcherStateCopyWith<$Res>
    implements $AuthWatcherStateCopyWith<$Res> {
  factory _$AuthWatcherStateCopyWith(
          _AuthWatcherState value, $Res Function(_AuthWatcherState) then) =
      __$AuthWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isAuthenticated,
      bool isListeningForAuthChanges,
      bool isListeningForUserChanges,
      User? user,
      Option<User?> option});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$AuthWatcherStateCopyWithImpl<$Res>
    extends _$AuthWatcherStateCopyWithImpl<$Res>
    implements _$AuthWatcherStateCopyWith<$Res> {
  __$AuthWatcherStateCopyWithImpl(
      _AuthWatcherState _value, $Res Function(_AuthWatcherState) _then)
      : super(_value, (v) => _then(v as _AuthWatcherState));

  @override
  _AuthWatcherState get _value => super._value as _AuthWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isAuthenticated = freezed,
    Object? isListeningForAuthChanges = freezed,
    Object? isListeningForUserChanges = freezed,
    Object? user = freezed,
    Object? option = freezed,
  }) {
    return _then(_AuthWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isListeningForAuthChanges: isListeningForAuthChanges == freezed
          ? _value.isListeningForAuthChanges
          : isListeningForAuthChanges // ignore: cast_nullable_to_non_nullable
              as bool,
      isListeningForUserChanges: isListeningForUserChanges == freezed
          ? _value.isListeningForUserChanges
          : isListeningForUserChanges // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<User?>,
    ));
  }
}

/// @nodoc

class _$_AuthWatcherState extends _AuthWatcherState {
  const _$_AuthWatcherState(
      {this.isLoading = false,
      this.isAuthenticated = false,
      this.isListeningForAuthChanges = false,
      this.isListeningForUserChanges = false,
      this.user,
      this.option = const None()})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isAuthenticated;
  @JsonKey(defaultValue: false)
  @override
  final bool isListeningForAuthChanges;
  @JsonKey(defaultValue: false)
  @override
  final bool isListeningForUserChanges;
  @override
  final User? user;
  @JsonKey(defaultValue: const None())
  @override
  final Option<User?> option;

  @override
  String toString() {
    return 'AuthWatcherState(isLoading: $isLoading, isAuthenticated: $isAuthenticated, isListeningForAuthChanges: $isListeningForAuthChanges, isListeningForUserChanges: $isListeningForUserChanges, user: $user, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthWatcherState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.isListeningForAuthChanges,
                    isListeningForAuthChanges) ||
                other.isListeningForAuthChanges == isListeningForAuthChanges) &&
            (identical(other.isListeningForUserChanges,
                    isListeningForUserChanges) ||
                other.isListeningForUserChanges == isListeningForUserChanges) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isAuthenticated,
      isListeningForAuthChanges, isListeningForUserChanges, user, option);

  @JsonKey(ignore: true)
  @override
  _$AuthWatcherStateCopyWith<_AuthWatcherState> get copyWith =>
      __$AuthWatcherStateCopyWithImpl<_AuthWatcherState>(this, _$identity);
}

abstract class _AuthWatcherState extends AuthWatcherState {
  const factory _AuthWatcherState(
      {bool isLoading,
      bool isAuthenticated,
      bool isListeningForAuthChanges,
      bool isListeningForUserChanges,
      User? user,
      Option<User?> option}) = _$_AuthWatcherState;
  const _AuthWatcherState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isAuthenticated;
  @override
  bool get isListeningForAuthChanges;
  @override
  bool get isListeningForUserChanges;
  @override
  User? get user;
  @override
  Option<User?> get option;
  @override
  @JsonKey(ignore: true)
  _$AuthWatcherStateCopyWith<_AuthWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
