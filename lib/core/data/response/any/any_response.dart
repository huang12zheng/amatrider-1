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
class AnyResponse extends Response with _$AnyResponse {
  static const String _kdefaultMsg = 'Oops Bad request! No Response.';

  const AnyResponse._();

  @With<Failure>()
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

  factory AnyResponse.fromInfo(Info info) {
    return AnyResponse.info(
      status: info.status,
      messageTxt: info.message,
      details: info.details,
      pop: info.pop,
    );
  }

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory AnyResponse.fromJson(Map<String, dynamic> json) => _$AnyResponseFromJson(json);

  @With<Info>()
  const factory AnyResponse.info({
    String? status,
    @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
    @JsonKey(ignore: true) String? details,
    @JsonKey(ignore: true) @Default(false) bool pop,
  }) = InfoResponseType;

  @With<Success>()
  const factory AnyResponse.success({
    String? status,
    @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
    @JsonKey(ignore: true) String? details,
    @JsonKey(ignore: true) @Default(false) bool pop,
  }) = SuccessfulResponse;

  @override
  String get message => messageTxt?.let((m) => m.isNotEmpty ? m : _kdefaultMsg) ?? status ?? _kdefaultMsg;
}
