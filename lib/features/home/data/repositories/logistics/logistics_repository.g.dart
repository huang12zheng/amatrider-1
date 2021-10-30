// GENERATED CODE - DO NOT MODIFY BY HAND

part of logistics_repository.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _LogisticsRepository implements LogisticsRepository {
  _LogisticsRepository(this._dio, {this.baseUrl});

  final AppHttpClient _dio;

  String? baseUrl;

  @override
  Future<SendPackageListDTO> all(
      {status = SendPackageStatus.ACTIVE, required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'status': status.toJson(),
      r'lat': lat,
      r'long': lng
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SendPackageListDTO>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/rider/package',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SendPackageListDTO.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> acceptPackageDelivery(id,
      {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/rider/package/$id/accept',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AppHttpResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> declinePackageDelivery(id,
      {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/rider/package/$id/decline',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AppHttpResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> updateLocation(id, {required location}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(location.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/rider/package/$id/confirm-pickup',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AppHttpResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> confirmPackageReceived(id,
      {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/rider/package/$id/confirm-pickup',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AppHttpResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> confirmPackageDelivered(id,
      {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/rider/package/$id/delivered',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AppHttpResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
