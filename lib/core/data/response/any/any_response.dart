library any_response.dart;

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/response/response.dart';
import 'package:amatrider/utils/extensions/dynamic_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'any_response.g.dart';
part 'any_response.freezed.dart';

@Freezed(
  unionKey: 'status',
  unionValueCase: FreezedUnionCase.snake,
  fallbackUnion: 'error',
)
@immutable
class AnyResponse with _$AnyResponse {
  static const String _kdefaultMsg = 'Oops Bad request! No Response.';

  const AnyResponse._();

  @Implements.fromString('Failure')
  const factory AnyResponse.error({
    int? code,
    String? status,
    @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
    @JsonKey(ignore: true) String? details,
    String? error,
    ServerFieldErrors? errors,
    @JsonKey(ignore: true) @Default(false) bool pop,
    @JsonKey(ignore: true) Exception? exception,
  }) = ErrorResponse;

  factory AnyResponse.fromFailure(Failure failure) {
    return AnyResponse.error(
      code: failure.code,
      status: failure.status,
      messageTxt: failure.message,
      details: failure.details,
      error: failure.error,
      errors: failure.errors,
      exception: failure.exception,
    );
  }

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory AnyResponse.fromJson(Map<String, dynamic> json) =>
      _$AnyResponseFromJson(json);

  @With.fromString('Response, Success')
  const factory AnyResponse.success({
    @JsonKey(ignore: true) String? uuid,
    String? status,
    @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
    @JsonKey(ignore: true) String? details,
    @JsonKey(ignore: true) @Default(false) bool pop,
    @JsonKey(ignore: true) @Default(true) bool show,
  }) = SuccessfulResponse;

  String get message =>
      messageTxt?.let((m) => m.isNotEmpty ? m : _kdefaultMsg) ??
      status ??
      _kdefaultMsg;
}
