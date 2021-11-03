library app_http_response.dart;

import 'package:amatrider/core/data/http_client/index.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/response/response.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:dio/dio.dart' as _d;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_http_response.gen.dart';
part 'app_http_response.freezed.dart';

@freezed
@immutable
class AppHttpResponse extends AppNetworkResponseException<DioError, dynamic>
    with _$AppHttpResponse
    implements Failure, Response {
  const factory AppHttpResponse(
    @AnyResponseSerializer() AnyResponse response, {
    @JsonKey(ignore: true) dynamic data,
    @JsonKey(ignore: true) DioError? exception,
  }) = _AppHttpResponse;

  const AppHttpResponse._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory AppHttpResponse.fromJson(Map<String, dynamic> json) =>
      _$AppHttpResponseFromJson(json);

  factory AppHttpResponse.successful([String? message, bool pop = true]) =>
      AppHttpResponse(
        AnyResponse.success(
          messageTxt: message ?? 'Operation was successful.',
          pop: pop,
        ),
      );

  factory AppHttpResponse.failure([String? message]) => AppHttpResponse(
        AnyResponse.error(messageTxt: message ?? 'Whoops! An error occurred.'),
      );

  @override
  int? get code => response.map(error: (e) => e.code, success: (_) => null);

  @override
  bool get hasData => data != null;

  @override
  String? get details =>
      response.map(error: (e) => null, success: (s) => s.details);

  @override
  String? get error =>
      response.map(error: (e) => e.error, success: (_) => null);

  @override
  ServerFieldErrors? get errors =>
      response.map(error: (e) => e.errors, success: (_) => null);

  @override
  String get message => response.message;

  @override
  bool get show => response.map(error: (e) => true, success: (s) => s.show);

  @override
  String? get status => response.status;

  @override
  String? get uuid => response.map(error: (e) => null, success: (s) => s.uuid);

  static AppHttpResponse? fromDioResponse<T>(_d.Response<T>? response) {
    final data = response?.data;
    if (data != null && data is Map<String, dynamic>) {
      final _value = AppHttpResponse.fromJson(data);

      return _value.copyWith(
        data: data,
        response: _value.response.maybeMap(
          error: (e) => e.copyWith(code: e.code ?? response?.statusCode),
          orElse: () => _value.response,
        ),
      );
    }
    return null;
  }
}
