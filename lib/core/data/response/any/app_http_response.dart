library app_http_response.dart;

import 'package:amatrider/core/data/http_client/index.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:dio/dio.dart' as _d;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_http_response.gen.dart';
part 'app_http_response.freezed.dart';

AppHttpResponse deserializeAppHttpResponse(Map<String, dynamic> json) => AppHttpResponse.fromJson(json);
Map<String, dynamic> serializeAppHttpResponse(AppHttpResponse object) => object.toJson();

@freezed
@immutable
class AppHttpResponse extends AppNetworkResponseException<DioError, dynamic> with _$AppHttpResponse implements Failure, Response {
  const factory AppHttpResponse(
    @AnyResponseSerializer() AnyResponse response, {
    @JsonKey(ignore: true) dynamic data,
    @JsonKey(ignore: true) DioError? exception,
    @JsonKey(ignore: true) AppNetworkExceptionReason? failureReason,
  }) = _AppHttpResponse;

  const AppHttpResponse._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory AppHttpResponse.fromJson(Map<String, dynamic> json) => _$AppHttpResponseFromJson(json);

  factory AppHttpResponse.successful(String? message, {bool pop = true}) =>
      AppHttpResponse(AnyResponse.success(pop: pop, messageTxt: message ?? 'Successful!'));

  factory AppHttpResponse.info(String? message, [bool pop = false]) => AppHttpResponse(AnyResponse.info(messageTxt: message));

  factory AppHttpResponse.failure(String? message, {int? code}) =>
      AppHttpResponse(AnyResponse.error(code: code, messageTxt: message ?? 'Whoops! An error occurred.'));

  static AppHttpResponse get endOfList => AppHttpResponse(AnyResponse.fromInfo(InfoResponse.endOfList()));

  @override
  int? get code => response.maybeMap(error: (e) => e.code, orElse: () => null);

  @override
  AppNetworkExceptionReason get reason => failureReason ?? super.reason;

  @override
  bool get hasData => data != null;

  @override
  String? get details => response.maybeMap(orElse: () => null, success: (s) => s.details);

  @override
  String? get error => response.maybeMap(error: (e) => e.error, orElse: () => null);

  @override
  ServerFieldErrors? get errors => response.maybeMap(error: (e) => e.errors, orElse: () => null);

  @override
  String get message => response.message;

  @override
  bool get show => response.maybeMap(orElse: () => true, error: (e) => e.show);

  @override
  String? get status => response.status;

  static AppHttpResponse? fromDioResponse<T>(_d.Response<T>? response) {
    final data = response?.data;
    if (data != null && data is Map<String, dynamic>) {
      final _value = AppHttpResponse.fromJson(data);

      final _return = _value.copyWith(
        data: data,
        response: _value.response.maybeMap(
          error: (e) => AnyResponse.error(
            code: e.code ?? response?.statusCode,
            messageTxt: e.message,
            errors: e.errors,
            details: response?.data?.toString(),
            error: e.error,
            status: e.status,
            exception: e.exception,
            pop: e.pop,
            show: e.show,
          ),
          orElse: () => _value.response,
        ),
      );

      _return.fold(
        is401: () => getIt<AuthFacade>().sink(left(_return)),
        orElse: () => null,
      );

      return _return;
    }
    return null;
  }
}
