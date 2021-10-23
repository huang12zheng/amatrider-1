// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of network_failure.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkFailureTearOff {
  const _$NetworkFailureTearOff();

  _NoInternetConnectivity notConnected(
      {String message = NetworkFailure._OFFLINE_MSG, bool show = true}) {
    return _NoInternetConnectivity(
      message: message,
      show: show,
    );
  }

  _PoorInternetConnection poorInternet(
      {String message = NetworkFailure._POOR_INTERNET_MSG, bool show = true}) {
    return _PoorInternetConnection(
      message: message,
      show: show,
    );
  }

  _NetworkFailureReceiveTimeout receiveTimeout(
      {String message = NetworkFailure._RECEIVE_TIMEOUT_MSG,
      bool show = true}) {
    return _NetworkFailureReceiveTimeout(
      message: message,
      show: show,
    );
  }

  _NetworkFailureTimeout timeout(
      {String message = NetworkFailure._CONNECT_TIMEOUT_MSG,
      bool show = true}) {
    return _NetworkFailureTimeout(
      message: message,
      show: show,
    );
  }
}

/// @nodoc
const $NetworkFailure = _$NetworkFailureTearOff();

/// @nodoc
mixin _$NetworkFailure {
  String get message => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool show) notConnected,
    required TResult Function(String message, bool show) poorInternet,
    required TResult Function(String message, bool show) receiveTimeout,
    required TResult Function(String message, bool show) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value) poorInternet,
    required TResult Function(_NetworkFailureReceiveTimeout value)
        receiveTimeout,
    required TResult Function(_NetworkFailureTimeout value) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
  $Res call({String message, bool show});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  final NetworkFailure _value;
  // ignore: unused_field
  final $Res Function(NetworkFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NoInternetConnectivityCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$NoInternetConnectivityCopyWith(_NoInternetConnectivity value,
          $Res Function(_NoInternetConnectivity) then) =
      __$NoInternetConnectivityCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool show});
}

/// @nodoc
class __$NoInternetConnectivityCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$NoInternetConnectivityCopyWith<$Res> {
  __$NoInternetConnectivityCopyWithImpl(_NoInternetConnectivity _value,
      $Res Function(_NoInternetConnectivity) _then)
      : super(_value, (v) => _then(v as _NoInternetConnectivity));

  @override
  _NoInternetConnectivity get _value => super._value as _NoInternetConnectivity;

  @override
  $Res call({
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_NoInternetConnectivity(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NoInternetConnectivity extends _NoInternetConnectivity {
  const _$_NoInternetConnectivity(
      {this.message = NetworkFailure._OFFLINE_MSG, this.show = true})
      : super._();

  @JsonKey(defaultValue: NetworkFailure._OFFLINE_MSG)
  @override
  final String message;
  @JsonKey(defaultValue: true)
  @override
  final bool show;

  @override
  String toString() {
    return 'NetworkFailure.notConnected(message: $message, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoInternetConnectivity &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, show);

  @JsonKey(ignore: true)
  @override
  _$NoInternetConnectivityCopyWith<_NoInternetConnectivity> get copyWith =>
      __$NoInternetConnectivityCopyWithImpl<_NoInternetConnectivity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool show) notConnected,
    required TResult Function(String message, bool show) poorInternet,
    required TResult Function(String message, bool show) receiveTimeout,
    required TResult Function(String message, bool show) timeout,
  }) {
    return notConnected(message, show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
  }) {
    return notConnected?.call(message, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(message, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value) poorInternet,
    required TResult Function(_NetworkFailureReceiveTimeout value)
        receiveTimeout,
    required TResult Function(_NetworkFailureTimeout value) timeout,
  }) {
    return notConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
  }) {
    return notConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnectivity extends NetworkFailure {
  const factory _NoInternetConnectivity({String message, bool show}) =
      _$_NoInternetConnectivity;
  const _NoInternetConnectivity._() : super._();

  @override
  String get message;
  @override
  bool get show;
  @override
  @JsonKey(ignore: true)
  _$NoInternetConnectivityCopyWith<_NoInternetConnectivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PoorInternetConnectionCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$PoorInternetConnectionCopyWith(_PoorInternetConnection value,
          $Res Function(_PoorInternetConnection) then) =
      __$PoorInternetConnectionCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool show});
}

/// @nodoc
class __$PoorInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$PoorInternetConnectionCopyWith<$Res> {
  __$PoorInternetConnectionCopyWithImpl(_PoorInternetConnection _value,
      $Res Function(_PoorInternetConnection) _then)
      : super(_value, (v) => _then(v as _PoorInternetConnection));

  @override
  _PoorInternetConnection get _value => super._value as _PoorInternetConnection;

  @override
  $Res call({
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_PoorInternetConnection(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PoorInternetConnection extends _PoorInternetConnection {
  const _$_PoorInternetConnection(
      {this.message = NetworkFailure._POOR_INTERNET_MSG, this.show = true})
      : super._();

  @JsonKey(defaultValue: NetworkFailure._POOR_INTERNET_MSG)
  @override
  final String message;
  @JsonKey(defaultValue: true)
  @override
  final bool show;

  @override
  String toString() {
    return 'NetworkFailure.poorInternet(message: $message, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PoorInternetConnection &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, show);

  @JsonKey(ignore: true)
  @override
  _$PoorInternetConnectionCopyWith<_PoorInternetConnection> get copyWith =>
      __$PoorInternetConnectionCopyWithImpl<_PoorInternetConnection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool show) notConnected,
    required TResult Function(String message, bool show) poorInternet,
    required TResult Function(String message, bool show) receiveTimeout,
    required TResult Function(String message, bool show) timeout,
  }) {
    return poorInternet(message, show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
  }) {
    return poorInternet?.call(message, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
    required TResult orElse(),
  }) {
    if (poorInternet != null) {
      return poorInternet(message, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value) poorInternet,
    required TResult Function(_NetworkFailureReceiveTimeout value)
        receiveTimeout,
    required TResult Function(_NetworkFailureTimeout value) timeout,
  }) {
    return poorInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
  }) {
    return poorInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
    required TResult orElse(),
  }) {
    if (poorInternet != null) {
      return poorInternet(this);
    }
    return orElse();
  }
}

abstract class _PoorInternetConnection extends NetworkFailure {
  const factory _PoorInternetConnection({String message, bool show}) =
      _$_PoorInternetConnection;
  const _PoorInternetConnection._() : super._();

  @override
  String get message;
  @override
  bool get show;
  @override
  @JsonKey(ignore: true)
  _$PoorInternetConnectionCopyWith<_PoorInternetConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NetworkFailureReceiveTimeoutCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$NetworkFailureReceiveTimeoutCopyWith(
          _NetworkFailureReceiveTimeout value,
          $Res Function(_NetworkFailureReceiveTimeout) then) =
      __$NetworkFailureReceiveTimeoutCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool show});
}

/// @nodoc
class __$NetworkFailureReceiveTimeoutCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$NetworkFailureReceiveTimeoutCopyWith<$Res> {
  __$NetworkFailureReceiveTimeoutCopyWithImpl(
      _NetworkFailureReceiveTimeout _value,
      $Res Function(_NetworkFailureReceiveTimeout) _then)
      : super(_value, (v) => _then(v as _NetworkFailureReceiveTimeout));

  @override
  _NetworkFailureReceiveTimeout get _value =>
      super._value as _NetworkFailureReceiveTimeout;

  @override
  $Res call({
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_NetworkFailureReceiveTimeout(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NetworkFailureReceiveTimeout extends _NetworkFailureReceiveTimeout {
  const _$_NetworkFailureReceiveTimeout(
      {this.message = NetworkFailure._RECEIVE_TIMEOUT_MSG, this.show = true})
      : super._();

  @JsonKey(defaultValue: NetworkFailure._RECEIVE_TIMEOUT_MSG)
  @override
  final String message;
  @JsonKey(defaultValue: true)
  @override
  final bool show;

  @override
  String toString() {
    return 'NetworkFailure.receiveTimeout(message: $message, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkFailureReceiveTimeout &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, show);

  @JsonKey(ignore: true)
  @override
  _$NetworkFailureReceiveTimeoutCopyWith<_NetworkFailureReceiveTimeout>
      get copyWith => __$NetworkFailureReceiveTimeoutCopyWithImpl<
          _NetworkFailureReceiveTimeout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool show) notConnected,
    required TResult Function(String message, bool show) poorInternet,
    required TResult Function(String message, bool show) receiveTimeout,
    required TResult Function(String message, bool show) timeout,
  }) {
    return receiveTimeout(message, show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
  }) {
    return receiveTimeout?.call(message, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(message, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value) poorInternet,
    required TResult Function(_NetworkFailureReceiveTimeout value)
        receiveTimeout,
    required TResult Function(_NetworkFailureTimeout value) timeout,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
  }) {
    return receiveTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailureReceiveTimeout extends NetworkFailure {
  const factory _NetworkFailureReceiveTimeout({String message, bool show}) =
      _$_NetworkFailureReceiveTimeout;
  const _NetworkFailureReceiveTimeout._() : super._();

  @override
  String get message;
  @override
  bool get show;
  @override
  @JsonKey(ignore: true)
  _$NetworkFailureReceiveTimeoutCopyWith<_NetworkFailureReceiveTimeout>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NetworkFailureTimeoutCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$NetworkFailureTimeoutCopyWith(_NetworkFailureTimeout value,
          $Res Function(_NetworkFailureTimeout) then) =
      __$NetworkFailureTimeoutCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool show});
}

/// @nodoc
class __$NetworkFailureTimeoutCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$NetworkFailureTimeoutCopyWith<$Res> {
  __$NetworkFailureTimeoutCopyWithImpl(_NetworkFailureTimeout _value,
      $Res Function(_NetworkFailureTimeout) _then)
      : super(_value, (v) => _then(v as _NetworkFailureTimeout));

  @override
  _NetworkFailureTimeout get _value => super._value as _NetworkFailureTimeout;

  @override
  $Res call({
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_NetworkFailureTimeout(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NetworkFailureTimeout extends _NetworkFailureTimeout {
  const _$_NetworkFailureTimeout(
      {this.message = NetworkFailure._CONNECT_TIMEOUT_MSG, this.show = true})
      : super._();

  @JsonKey(defaultValue: NetworkFailure._CONNECT_TIMEOUT_MSG)
  @override
  final String message;
  @JsonKey(defaultValue: true)
  @override
  final bool show;

  @override
  String toString() {
    return 'NetworkFailure.timeout(message: $message, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkFailureTimeout &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, show);

  @JsonKey(ignore: true)
  @override
  _$NetworkFailureTimeoutCopyWith<_NetworkFailureTimeout> get copyWith =>
      __$NetworkFailureTimeoutCopyWithImpl<_NetworkFailureTimeout>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool show) notConnected,
    required TResult Function(String message, bool show) poorInternet,
    required TResult Function(String message, bool show) receiveTimeout,
    required TResult Function(String message, bool show) timeout,
  }) {
    return timeout(message, show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
  }) {
    return timeout?.call(message, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(message, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value) poorInternet,
    required TResult Function(_NetworkFailureReceiveTimeout value)
        receiveTimeout,
    required TResult Function(_NetworkFailureTimeout value) timeout,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailureTimeout extends NetworkFailure {
  const factory _NetworkFailureTimeout({String message, bool show}) =
      _$_NetworkFailureTimeout;
  const _NetworkFailureTimeout._() : super._();

  @override
  String get message;
  @override
  bool get show;
  @override
  @JsonKey(ignore: true)
  _$NetworkFailureTimeoutCopyWith<_NetworkFailureTimeout> get copyWith =>
      throw _privateConstructorUsedError;
}
