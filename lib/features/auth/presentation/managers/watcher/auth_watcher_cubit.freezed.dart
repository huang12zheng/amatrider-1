// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of auth_watcher_cubit.dart;

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
      bool isLoggingOut = false,
      bool isAuthenticated = false,
      bool isListeningForAuthChanges = false,
      bool isListeningForUserChanges = false,
      bool subscribedToChannel = false,
      bool isVerifyingOTP = false,
      Rider? rider,
      Option<Rider?> option = const None(),
      Option<AppHttpResponse?> status = const None()}) {
    return _AuthWatcherState(
      isLoading: isLoading,
      isLoggingOut: isLoggingOut,
      isAuthenticated: isAuthenticated,
      isListeningForAuthChanges: isListeningForAuthChanges,
      isListeningForUserChanges: isListeningForUserChanges,
      subscribedToChannel: subscribedToChannel,
      isVerifyingOTP: isVerifyingOTP,
      rider: rider,
      option: option,
      status: status,
    );
  }
}

/// @nodoc
const $AuthWatcherState = _$AuthWatcherStateTearOff();

/// @nodoc
mixin _$AuthWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoggingOut => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get isListeningForAuthChanges => throw _privateConstructorUsedError;
  bool get isListeningForUserChanges => throw _privateConstructorUsedError;
  bool get subscribedToChannel => throw _privateConstructorUsedError;
  bool get isVerifyingOTP => throw _privateConstructorUsedError;
  Rider? get rider => throw _privateConstructorUsedError;
  Option<Rider?> get option => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

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
      bool isLoggingOut,
      bool isAuthenticated,
      bool isListeningForAuthChanges,
      bool isListeningForUserChanges,
      bool subscribedToChannel,
      bool isVerifyingOTP,
      Rider? rider,
      Option<Rider?> option,
      Option<AppHttpResponse?> status});

  $RiderCopyWith<$Res>? get rider;
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
    Object? isLoggingOut = freezed,
    Object? isAuthenticated = freezed,
    Object? isListeningForAuthChanges = freezed,
    Object? isListeningForUserChanges = freezed,
    Object? subscribedToChannel = freezed,
    Object? isVerifyingOTP = freezed,
    Object? rider = freezed,
    Object? option = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggingOut: isLoggingOut == freezed
          ? _value.isLoggingOut
          : isLoggingOut // ignore: cast_nullable_to_non_nullable
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
      subscribedToChannel: subscribedToChannel == freezed
          ? _value.subscribedToChannel
          : subscribedToChannel // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyingOTP: isVerifyingOTP == freezed
          ? _value.isVerifyingOTP
          : isVerifyingOTP // ignore: cast_nullable_to_non_nullable
              as bool,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as Rider?,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Rider?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $RiderCopyWith<$Res>? get rider {
    if (_value.rider == null) {
      return null;
    }

    return $RiderCopyWith<$Res>(_value.rider!, (value) {
      return _then(_value.copyWith(rider: value));
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
      bool isLoggingOut,
      bool isAuthenticated,
      bool isListeningForAuthChanges,
      bool isListeningForUserChanges,
      bool subscribedToChannel,
      bool isVerifyingOTP,
      Rider? rider,
      Option<Rider?> option,
      Option<AppHttpResponse?> status});

  @override
  $RiderCopyWith<$Res>? get rider;
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
    Object? isLoggingOut = freezed,
    Object? isAuthenticated = freezed,
    Object? isListeningForAuthChanges = freezed,
    Object? isListeningForUserChanges = freezed,
    Object? subscribedToChannel = freezed,
    Object? isVerifyingOTP = freezed,
    Object? rider = freezed,
    Object? option = freezed,
    Object? status = freezed,
  }) {
    return _then(_AuthWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggingOut: isLoggingOut == freezed
          ? _value.isLoggingOut
          : isLoggingOut // ignore: cast_nullable_to_non_nullable
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
      subscribedToChannel: subscribedToChannel == freezed
          ? _value.subscribedToChannel
          : subscribedToChannel // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyingOTP: isVerifyingOTP == freezed
          ? _value.isVerifyingOTP
          : isVerifyingOTP // ignore: cast_nullable_to_non_nullable
              as bool,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as Rider?,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Rider?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_AuthWatcherState extends _AuthWatcherState {
  const _$_AuthWatcherState(
      {this.isLoading = false,
      this.isLoggingOut = false,
      this.isAuthenticated = false,
      this.isListeningForAuthChanges = false,
      this.isListeningForUserChanges = false,
      this.subscribedToChannel = false,
      this.isVerifyingOTP = false,
      this.rider,
      this.option = const None(),
      this.status = const None()})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isLoggingOut;
  @JsonKey()
  @override
  final bool isAuthenticated;
  @JsonKey()
  @override
  final bool isListeningForAuthChanges;
  @JsonKey()
  @override
  final bool isListeningForUserChanges;
  @JsonKey()
  @override
  final bool subscribedToChannel;
  @JsonKey()
  @override
  final bool isVerifyingOTP;
  @override
  final Rider? rider;
  @JsonKey()
  @override
  final Option<Rider?> option;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'AuthWatcherState(isLoading: $isLoading, isLoggingOut: $isLoggingOut, isAuthenticated: $isAuthenticated, isListeningForAuthChanges: $isListeningForAuthChanges, isListeningForUserChanges: $isListeningForUserChanges, subscribedToChannel: $subscribedToChannel, isVerifyingOTP: $isVerifyingOTP, rider: $rider, option: $option, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isLoggingOut, isLoggingOut) &&
            const DeepCollectionEquality()
                .equals(other.isAuthenticated, isAuthenticated) &&
            const DeepCollectionEquality().equals(
                other.isListeningForAuthChanges, isListeningForAuthChanges) &&
            const DeepCollectionEquality().equals(
                other.isListeningForUserChanges, isListeningForUserChanges) &&
            const DeepCollectionEquality()
                .equals(other.subscribedToChannel, subscribedToChannel) &&
            const DeepCollectionEquality()
                .equals(other.isVerifyingOTP, isVerifyingOTP) &&
            const DeepCollectionEquality().equals(other.rider, rider) &&
            const DeepCollectionEquality().equals(other.option, option) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoggingOut),
      const DeepCollectionEquality().hash(isAuthenticated),
      const DeepCollectionEquality().hash(isListeningForAuthChanges),
      const DeepCollectionEquality().hash(isListeningForUserChanges),
      const DeepCollectionEquality().hash(subscribedToChannel),
      const DeepCollectionEquality().hash(isVerifyingOTP),
      const DeepCollectionEquality().hash(rider),
      const DeepCollectionEquality().hash(option),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$AuthWatcherStateCopyWith<_AuthWatcherState> get copyWith =>
      __$AuthWatcherStateCopyWithImpl<_AuthWatcherState>(this, _$identity);
}

abstract class _AuthWatcherState extends AuthWatcherState {
  const factory _AuthWatcherState(
      {bool isLoading,
      bool isLoggingOut,
      bool isAuthenticated,
      bool isListeningForAuthChanges,
      bool isListeningForUserChanges,
      bool subscribedToChannel,
      bool isVerifyingOTP,
      Rider? rider,
      Option<Rider?> option,
      Option<AppHttpResponse?> status}) = _$_AuthWatcherState;
  const _AuthWatcherState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isLoggingOut;
  @override
  bool get isAuthenticated;
  @override
  bool get isListeningForAuthChanges;
  @override
  bool get isListeningForUserChanges;
  @override
  bool get subscribedToChannel;
  @override
  bool get isVerifyingOTP;
  @override
  Rider? get rider;
  @override
  Option<Rider?> get option;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$AuthWatcherStateCopyWith<_AuthWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
