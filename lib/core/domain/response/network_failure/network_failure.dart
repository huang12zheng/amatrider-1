library network_failure.dart;

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

@freezed
@immutable
class NetworkFailure with _$NetworkFailure implements Failure {
  static const String _CONNECT_TIMEOUT_MSG =
      'Connection Timeout! Please try again later.';
  static const String _OFFLINE_MSG = 'You are offline!';
  static const String _POOR_INTERNET_MSG = 'Poor Internet Connection!';
  static const String _RECEIVE_TIMEOUT_MSG =
      'Receive Timeout! Please try again after 10seconds.';

  const NetworkFailure._();

  const factory NetworkFailure.notConnected({
    @Default(NetworkFailure._OFFLINE_MSG) String message,
    @Default(true) bool show,
  }) = _NoInternetConnectivity;

  const factory NetworkFailure.poorInternet({
    @Default(NetworkFailure._POOR_INTERNET_MSG) String message,
    @Default(true) bool show,
  }) = _PoorInternetConnection;

  const factory NetworkFailure.receiveTimeout({
    @Default(NetworkFailure._RECEIVE_TIMEOUT_MSG) String message,
    @Default(true) bool show,
  }) = _NetworkFailureReceiveTimeout;

  const factory NetworkFailure.timeout({
    @Default(NetworkFailure._CONNECT_TIMEOUT_MSG) String message,
    @Default(true) bool show,
  }) = _NetworkFailureTimeout;

  @override
  int? get code => 200;

  @override
  String? get details => null;

  @override
  String? get error => null;

  @override
  ServerFieldErrors? get errors => null;

  @override
  Exception? get exception => Exception(message);

  @override
  String? get status => null;
}
