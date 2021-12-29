// GENERATED CODE - DO NOT MODIFY BY HAND

part of utilities_remote.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UtilitiesRemote implements UtilitiesRemote {
  _UtilitiesRemote(this._dio, {this.baseUrl});

  final AppHttpClient _dio;

  String? baseUrl;

  @override
  Future<List<CountryDTO>> countries() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<CountryDTO>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/utilities/countries',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => CountryDTO.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<GenericObjectDTO<BankAccountDTO?>> bankAccount() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GenericObjectDTO<BankAccountDTO>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/account-information',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GenericObjectDTO<BankAccountDTO>.fromJson(
      _result.data!,
      (json) => BankAccountDTO.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BankAccountDTO> storeBankAccount(dto) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(dto.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BankAccountDTO>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/account-information',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BankAccountDTO.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> documentVerification(
      {front,
      back,
      required countryId,
      required type,
      progressCallback,
      receiveProgress}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'content-type': 'multipart/form-data'};
    _headers.removeWhere((k, v) => v == null);
    final _data = FormData();
    if (front != null) {
      _data.files.add(MapEntry(
          'front_image',
          MultipartFile.fromFileSync(front.path,
              filename: front.path.split(Platform.pathSeparator).last)));
    }
    if (back != null) {
      _data.files.add(MapEntry(
          'back_image',
          MultipartFile.fromFileSync(back.path,
              filename: back.path.split(Platform.pathSeparator).last)));
    }
    _data.fields.add(MapEntry('country_id', countryId));
    _data.fields.add(MapEntry('type', type));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: 'multipart/form-data')
            .compose(_dio.options, '/rider/verification-document',
                queryParameters: queryParameters,
                data: _data,
                onSendProgress: progressCallback,
                onReceiveProgress: receiveProgress)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AppHttpResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ReviewDTO> getReviews() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ReviewDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/reviews',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ReviewDTO.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GenericPaginatedListDTO<InAppNotificationDTO>>
      inAppNotifications() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GenericPaginatedListDTO<InAppNotificationDTO>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rider/notifications',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GenericPaginatedListDTO<InAppNotificationDTO>.fromJson(
      _result.data!,
      (json) => InAppNotificationDTO.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<void> contactSupport(
      {required type, required message, images = const []}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('type', type));
    _data.fields.add(MapEntry('message', message));
    _data.files.addAll(images.map((i) => MapEntry(
        'images[]',
        MultipartFile.fromFileSync(
          i.path,
          filename: i.path.split(Platform.pathSeparator).last,
        ))));
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/rider/contact-support',
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
