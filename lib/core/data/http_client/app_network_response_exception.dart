import 'package:amatrider/core/data/index.dart';

class AppNetworkResponseException<OriginalException extends Exception, DataType>
    extends AppNetworkException<OriginalException> {
  final int? code;
  final DataType? data;

  const AppNetworkResponseException({
    OriginalException? exception,
    this.code,
    this.data,
  }) : super(
          reason: AppNetworkExceptionReason.responseError,
          exception: exception,
        );

  bool get hasData => data != null;

  /// If the status code is null, returns false. Otherwise, allows the
  /// given closure [evaluator] to validate the given http integer status code.
  ///
  /// Usage:
  /// ```
  /// final isValid = responseException.validatecode(
  ///   (code) => statusCode >= 200 && statusCode < 300,
  /// );
  /// ```
  bool validateStatusCode(bool Function(int code) evaluator) {
    final code = this.code;
    if (code == null) return false;
    return evaluator(code);
  }
}
