import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:amatrider/core/data/index.dart';

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
  /// If provided, this function which will be invoked when a response exception
  /// occurs, allowing the response exception to be mapped to a custom
  /// exception class which extends [AppHttpClientException].
  final ResponseExceptionMapper? _mapper;

  /// Create AppHttpClient instance with default [BaseOptions] and an optional [mapper].
  /// It is recommended that an application use only the same AppHttpClient singleton.
  AppHttpClient({required Dio client, ResponseExceptionMapper? mapper})
      : _client = client,
        _mapper = mapper,
        super(client.options);

  @override
  Future<Response<T>> fetch<T>(RequestOptions requestOptions) async =>
      _mapException(() => _client.fetch(requestOptions));

  /// An instance of the dio http client
  final Dio _client;

  AppHttpClient copyWith(ResponseExceptionMapper? mapper) =>
      AppHttpClient(client: _client, mapper: mapper);

  /// HTTP GET request.
  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) =>
      _mapException(
        () => _client.get(
          path,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
        ),
      );

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
  }) =>
      _mapException(
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
  }) =>
      _mapException(
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

  /// HTTP HEAD request.
  @override
  Future<Response<T>> head<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) =>
      _mapException(
        () => _client.head(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        ),
      );

  /// HTTP DELETE request.
  @override
  Future<Response<T>> delete<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) =>
      _mapException(
        () => _client.delete(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        ),
      );

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
  }) =>
      _mapException(
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

  Future<Response<T>> _mapException<T>(HttpLibraryMethod<T> method) async {
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
}
