library app_network_exception.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:dio/dio.dart';

enum AppNetworkExceptionReason { cancelled, timedOut, responseError, noInternet }

class AppNetworkException<OriginalException extends Exception> extends AppHttpClientException<OriginalException> {
  /// Create a network exception.
  const AppNetworkException({
    required this.reason,
    OriginalException? exception,
  }) : super(exception: exception);

  /// The reason the network exception ocurred.
  final AppNetworkExceptionReason reason;

  AppHttpResponse asResponse() => AppHttpResponse(
        reason == AppNetworkExceptionReason.timedOut
            ? AnyResponse.fromFailure(const NetworkFailure.timeout())
            : AnyResponse.error(messageTxt: 'Request was cancelled!', exception: exception),
      );

  @override
  String toString() {
    if (exception is DioError) {
      return 'AppNetworkException<$OriginalException>'
          '(reason: $reason, exception: ${(exception as DioError).message})';
    }
    return 'AppNetworkException<$OriginalException>'
        '(reason: $reason, exception: ${exception.toString()})';
  }

  AppNetworkException<OriginalException> rebuild2({
    AppNetworkExceptionReason? newReason,
    OriginalException? newException,
  }) =>
      AppNetworkException(
        reason: newReason ?? reason,
        exception: newException ?? exception,
      );
}

extension AppNetworkExceptionReasonX on AppNetworkExceptionReason {
  T? fold<T>({
    T Function()? cancelled,
    T Function()? timedOut,
    T Function()? response,
    T Function()? noInternet,
    T Function()? timeoutNoInternet,
  }) {
    if (timeoutNoInternet != null && (this == AppNetworkExceptionReason.timedOut || this == AppNetworkExceptionReason.noInternet)) {
      return timeoutNoInternet.call();
    }

    switch (this) {
      case AppNetworkExceptionReason.cancelled:
        return cancelled?.call();
      case AppNetworkExceptionReason.timedOut:
        return timedOut?.call();
      case AppNetworkExceptionReason.responseError:
        return response?.call();
      case AppNetworkExceptionReason.noInternet:
        return noInternet?.call();
    }
  }
}
