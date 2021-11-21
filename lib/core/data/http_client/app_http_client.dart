import 'dart:async';
import 'dart:convert';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/services.dart';

/// A callback that returns a Dio response, presumably from a Dio method
/// it has called which performs an HTTP request, such as `dio.get()`,
/// `dio.post()`, etc.
typedef HttpLibraryMethod<T> = Future<Response<T>> Function();

/// Function which takes a Dio response object and an exception and returns
/// an optional [AppHttpClientException], optionally mapping the response
/// to a custom exception.
typedef ResponseExceptionMapper
    = AppNetworkResponseException<DioError, dynamic>? Function<T>(Response<T>);

/// A Http client which inmplements Dio.
///
/// You can create a AppHttpClient instance and config it by two ways:
/// 1. create first , then config it
///
///   ```dart
///    var client = AppHttpClient();
///    client.options.baseUrl = "http://www.dtworkroom.com/doris/1/2.0.0/";
///    client.options.connectTimeout = 5000; //5s
///    client.options.receiveTimeout = 5000;
///    client.options.headers = {HttpHeaders.userAgentHeader: 'dio', 'common-header': 'xx'};
///   ```
/// 2. create and config it:
///
/// ```dart
///   var client = AppHttpClient(BaseOptions(
///    baseUrl: "http://www.dtworkroom.com/doris/1/2.0.0/",
///    connectTimeout: 5000,
///    receiveTimeout: 5000,
///    headers: {HttpHeaders.userAgentHeader: 'dio', 'common-header': 'xx'},
///   ));
///  ```
class AppHttpClient extends DioForNative {
  /// An instance of the dio http client
  final Dio _client;

  /// If provided, this function which will be invoked when a response exception
  /// occurs, allowing the response exception to be mapped to a custom
  /// exception class which extends [AppHttpClientException].
  final ResponseExceptionMapper? _mapper;

  late String _method;
  String? _path;

  /// Create AppHttpClient instance with default [BaseOptions] and an optional [mapper].
  /// It is recommended that an application use only the same AppHttpClient singleton.
  AppHttpClient({required Dio client, ResponseExceptionMapper? mapper})
      : _client = client,
        _mapper = mapper,
        super(client.options);

  /// HTTP DELETE request.
  @override
  Future<Response<T>> delete<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) {
    _path = path;
    _method = 'DELETE';

    return _map(
      () => _client.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      ),
    );
  }

  @override
  Future<Response<T>> fetch<T>(RequestOptions requestOptions) async {
    _path = requestOptions.uri.toString();
    _method = requestOptions.method;

    return _map(() => _client.fetch(requestOptions));
  }

  /// HTTP GET request.
  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    _path = path;
    _method = 'GET';

    return _map(
      () => _client.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      ),
    );
  }

  /// HTTP HEAD request.
  @override
  Future<Response<T>> head<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) {
    _path = path;
    _method = 'HEAD';

    return _map(
      () => _client.head(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      ),
    );
  }

  /// HTTP PATCH request.
  @override
  Future<Response<T>> patch<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    _path = path;
    _method = 'PATCH';

    return _map(
      () => _client.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
    );
  }

  /// HTTP POST request.
  @override
  Future<Response<T>> post<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    _path = path;
    _method = 'POST';

    return _map(
      () => _client.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
    );
  }

  /// HTTP PUT request.
  @override
  Future<Response<T>> put<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    _path = path;
    _method = 'PUT';

    return _map(
      () => _client.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
    );
  }

  AppHttpClient copyWith(ResponseExceptionMapper? mapper) =>
      AppHttpClient(client: _client, mapper: mapper);

  Future<Response<T>> _map<T>(HttpLibraryMethod<T> method) async {
    return _mapResponse(method);
    // try {
    //   final uri = Uri.tryParse('$_path');

    //   final https =
    //       Uri.https(EndPoints.APP_DOMAIN, EndPoints.API_ENDPOINT + '$_path');

    //   final metric = getIt<FirebasePerformance>().newHttpMetric(
    //     '${uri != null && uri.isScheme('HTTPS') ? uri : https}'.toString(),
    //     _method.asHttpMethod,
    //   );

    //   return _mapWithPerformance(method, metric);
    // } on PlatformException catch (_) {
    //   return _mapResponse(method);
    // }
  }

  Future<Response<T>> _mapResponse<T>(HttpLibraryMethod<T> method) async {
    try {
      return await method.call();
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.cancel:
          throw AppNetworkException(
            reason: AppNetworkExceptionReason.timedOut,
            exception: e,
          );
        case DioErrorType.connectTimeout:
        case DioErrorType.receiveTimeout:
        case DioErrorType.sendTimeout:
          throw AppNetworkException(
            reason: AppNetworkExceptionReason.timedOut,
            exception: e,
          );
        case DioErrorType.response:
          // For DioErrorType.response, we are guaranteed to have a
          // response object present on the exception.
          final response = e.response;
          if (response == null || response is! Response) {
            // This should never happen, judging by the current source code
            // for Dio.
            throw AppNetworkResponseException(exception: e);
          }
          throw _mapper!.call(response) ??
              AppNetworkResponseException(
                exception: e,
                code: response.statusCode,
                data: response.data,
              );
        case DioErrorType.other:
        default:
          throw AppHttpClientException(exception: e);
      }
    } catch (e) {
      throw AppHttpClientException(
        exception: e is Exception ? e : Exception('Unknown exception ocurred'),
      );
    }
  }

  Future<Response<T>> _mapWithPerformance<T>(
    HttpLibraryMethod<T> method,
    HttpMetric metric,
  ) async {
    try {
      final _response = await method.call();

      metric = _mapMetric(metric, _response);

      if (_response.statusCode != null)
        metric.httpResponseCode = _response.statusCode;

      await metric.putAttribute(
          'dio_response_data', jsonEncode('${_response.data}'));

      return _response;
    } on DioError catch (e) {
      metric = _mapMetric(metric, e.response);

      switch (e.type) {
        case DioErrorType.cancel:
          throw AppNetworkException(
            reason: AppNetworkExceptionReason.timedOut,
            exception: e,
          );
        case DioErrorType.connectTimeout:
        case DioErrorType.receiveTimeout:
        case DioErrorType.sendTimeout:
          throw AppNetworkException(
            reason: AppNetworkExceptionReason.timedOut,
            exception: e,
          );
        case DioErrorType.response:
          // For DioErrorType.response, we are guaranteed to have a
          // response object present on the exception.
          final response = e.response;

          if (e.response?.statusCode != null)
            metric.httpResponseCode = response?.statusCode;
          await metric.putAttribute(
              'dio_response_data', jsonEncode('${e.response?.data}'));
          await metric.putAttribute('dio_error', jsonEncode('$e'));
          await metric.putAttribute('dio_failure_reason',
              jsonEncode('${AppNetworkExceptionReason.responseError}'));

          if (response == null || response is! Response) {
            // This should never happen, judging by the current source code
            // for Dio.
            throw AppNetworkResponseException(exception: e);
          }
          throw _mapper!.call(response) ??
              AppNetworkResponseException(
                exception: e,
                code: response.statusCode,
                data: response.data,
              );
        case DioErrorType.other:
        default:
          throw AppHttpClientException(exception: e);
      }
    } catch (e) {
      throw AppHttpClientException(
        exception: e is Exception ? e : Exception('Unknown exception ocurred'),
      );
    } finally {
      unawaited(metric.stop());
    }
  }

  HttpMetric _mapMetric<T>(HttpMetric instance, Response<T>? response) {
    if (response != null &&
        response.requestOptions.headers
            .containsKey(Headers.contentLengthHeader)) {
      // log.w('Request payload size ==> '
      //     '${response.requestOptions.headers[Headers.contentLengthHeader]}');

      instance.requestPayloadSize = int.tryParse(
          '${response.requestOptions.headers[Headers.contentLengthHeader]}');
    }

    // log.wtf('RESPONSE HEADERS ==> ${response?.headers}');

    if (response != null &&
        response.headers.value(Headers.contentLengthHeader) != null) {
      // log.wtf('RESPONSE payload size ==> ${response.headers}');

      instance.responsePayloadSize = int.tryParse(
          '${response.headers.value(Headers.contentLengthHeader)}');
    }

    if (response != null &&
        response.headers.value(Headers.contentTypeHeader) != null) {
      // log.i('RESPONSE Content Type ==> '
      //     '${response.headers.value(Headers.contentTypeHeader)}');

      instance.responseContentType =
          response.headers.value(Headers.contentTypeHeader);
    }

    return instance;
  }
}

extension on String {
  HttpMethod get asHttpMethod {
    switch (toLowerCase()) {
      case 'get':
        return HttpMethod.Get;
      case 'post':
        return HttpMethod.Get;
      case 'put':
        return HttpMethod.Put;
      case 'patch':
        return HttpMethod.Patch;
      case 'delete':
        return HttpMethod.Delete;
      case 'head':
        return HttpMethod.Head;
      case 'options':
        return HttpMethod.Options;
      case 'connect':
        return HttpMethod.Connect;
      case 'trace':
        return HttpMethod.Trace;
      default:
        return HttpMethod.Get;
    }
  }
}
