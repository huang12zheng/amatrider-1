import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:dio/dio.dart';

enum AppNetworkExceptionReason { cancelled, timedOut, responseError }

class AppNetworkException<OriginalException extends Exception>
    extends AppHttpClientException<OriginalException> {
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
            : AnyResponse.error(
                messageTxt: 'Request was cancelled!', exception: exception),
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
}
