// GENERATED CODE - DO NOT MODIFY BY HAND

part of logistics_remote.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _LogisticsRemote implements LogisticsRemote {
  _LogisticsRemote(this._dio, {this.baseUrl});

  final AppHttpClient _dio;

  String? baseUrl;

  @override
  Future<LogisticsListDTO> allInTransit({required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LogisticsListDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/deliverable/transit',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeLogisticsListDTO, _result.data!);
    return value;
  }

  @override
  Future<LogisticsListDTO> allActive({required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LogisticsListDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/deliverable',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeLogisticsListDTO, _result.data!);
    return value;
  }

  @override
  Future<SendPackageDTO> singlePackage(id, {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SendPackageDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/package/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeSendPackageDTO, _result.data!);
    return value;
  }

  @override
  Future<UserOrderDTO> singleOrder(id, {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserOrderDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/orders/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeUserOrderDTO, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> acceptPackageDelivery(id,
      {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/package/${id}/accept',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> acceptOrderDelivery(id,
      {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/orders/${id}/accept',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> declinePackageDelivery(id,
      {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/package/${id}/decline',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> declineOrderDelivery(id,
      {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/orders/${id}/decline',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> updatePackageLocation(id,
      {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/package/${id}/location',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> updateOrderLocation(id,
      {required lat, required lng}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/orders/${id}/location',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> confirmPackagePickup(id,
      {required lat, required lng, required token}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = {'token': token};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/package/${id}/confirm-pickup',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> confirmOrderPickup(id,
      {required lat, required lng, required token}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = {'token': token};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/orders/${id}/confirm-pickup',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> confirmPackageDelivery(id,
      {required lat, required lng, required token}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = {'token': token};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/package/${id}/delivered',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> confirmOrderDelivery(id,
      {required lat, required lng, required token}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': lng};
    final _headers = <String, dynamic>{};
    final _data = {'token': token};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/orders/${id}/delivered',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<void> alertOrderArrival(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/rider/orders/${id}/rider-arrived',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<void> alertPackageArrival(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/rider/package/${id}/rider-arrived',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
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
