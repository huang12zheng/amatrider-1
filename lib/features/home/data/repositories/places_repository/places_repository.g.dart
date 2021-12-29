// GENERATED CODE - DO NOT MODIFY BY HAND

part of places_repository.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PlacesRepository implements PlacesRepository {
  _PlacesRepository(this._dio, {this.baseUrl});

  final AppHttpClient _dio;

  String? baseUrl;

  @override
  Future<PlacePredictionDTO> autocomplete(
      {required input,
      types,
      radius,
      lang,
      components,
      strictbounds,
      required sessionToken,
      required key}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'input': input,
      r'types': types,
      r'radius': radius,
      r'language': lang,
      r'components': components,
      r'strictbounds': strictbounds,
      r'sessiontoken': sessionToken,
      r'key': key
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PlacePredictionDTO>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options,
                'https://maps.googleapis.com/maps/api/place/autocomplete/json',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PlacePredictionDTO.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PlaceDetailDTO> details(
      {required placeId,
      fields,
      lang,
      required sessionToken,
      required key}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'place_id': placeId,
      r'fields': fields,
      r'language': lang,
      r'sessiontoken': sessionToken,
      r'key': key
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PlaceDetailDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options,
                    'https://maps.googleapis.com/maps/api/place/details/json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PlaceDetailDTO.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PlaceDetailDTO> geocode({required address, lang, required key}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'address': address,
      r'language': lang,
      r'key': key
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PlaceDetailDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options,
                    'https://maps.googleapis.com/maps/api/geocode/json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PlaceDetailDTO.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PlaceDetailDTO> reverseGeocode(
      {required latLng, resultType, lang, required key}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'latlng': latLng,
      r'result_type': resultType,
      r'language': lang,
      r'key': key
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PlaceDetailDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options,
                    'https://maps.googleapis.com/maps/api/geocode/json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PlaceDetailDTO.fromJson(_result.data!);
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
