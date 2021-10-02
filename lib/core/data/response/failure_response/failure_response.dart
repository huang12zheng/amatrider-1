import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_response.g.dart';
part 'failure_response.freezed.dart';

@freezed
@immutable
class FailureResponse with _$FailureResponse implements Failure {
  static const String _kAborted = 'Aborted!';
  static const String _kNotFound = 'Resource was not found on this server!';

  const factory FailureResponse({
    @JsonKey(includeIfNull: false) int? code,
    @JsonKey(includeIfNull: false, defaultValue: 'error') String? status,
    @JsonKey(includeIfNull: false) String? error,
    @JsonKey(includeIfNull: false) ServerFieldErrors? errors,
    @JsonKey(includeIfNull: false, defaultValue: '') required String message,
    @JsonKey(ignore: true) String? details,
    @JsonKey(ignore: true) @Default(true) bool pop,
    @JsonKey(ignore: true) @Default(true) bool show,
  }) = _FailureResponse;

  const FailureResponse._();

  factory FailureResponse.aborted() =>
      const FailureResponse(message: _kAborted);

  factory FailureResponse.alreadyExists(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.cancelled(String message) =>
      FailureResponse(message: message);

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory FailureResponse.fromJson(Map<String, dynamic> json) =>
      _$FailureResponseFromJson(json);

  factory FailureResponse.insufficientPermissions(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.invalidArguments(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.notFound() =>
      const FailureResponse(message: _kNotFound);

  factory FailureResponse.unImplemented(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.unknown({
    required String? message,
    int? code,
  }) =>
      FailureResponse(
        message: '${message ?? 'Unknown error! Please contact support.'}',
        code: code,
      );

  @override
  Exception? get exception => Exception(message);
}
