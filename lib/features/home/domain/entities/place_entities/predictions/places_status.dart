library places_status.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:kt_dart/kt.dart';
import 'package:json_annotation/json_annotation.dart';

part 'places_status.g.dart';

class PlaceStatus extends EnumClass {
  static const PlaceStatus OK = _$OK;
  static const PlaceStatus ZERO_RESULTS = _$ZERO_RESULTS;
  static const PlaceStatus INVALID_REQUEST = _$INVALID_REQUEST;
  static const PlaceStatus OVER_QUERY_LIMIT = _$OVER_QUERY_LIMIT;
  static const PlaceStatus REQUEST_DENIED = _$REQUEST_DENIED;
  @BuiltValueEnumConst(fallback: true)
  static const PlaceStatus UNKNOWN_ERROR = _$UNKNOWN_ERROR;

  const PlaceStatus._(String name) : super(name);

  static BuiltSet<PlaceStatus> get values => _$placeAutocompleteStatusValues;

  static KtList<PlaceStatus> get names => values.toList().toImmutableList();

  static PlaceStatus valueOf(String name) => _$valueOf(name);
}

class PlaceStatusSerializer implements JsonConverter<PlaceStatus, String?> {
  const PlaceStatusSerializer();

  @override
  PlaceStatus fromJson(String? value) => PlaceStatus.valueOf(value ?? '');

  @override
  String? toJson(PlaceStatus instance) => instance.name;
}

extension PlaceStatusX on PlaceStatus {
  T maybeWhen<T>({
    T Function()? ok,
    T Function()? zeroResults,
    T Function()? invalidRequest,
    T Function()? overQueryLimit,
    T Function()? requestDenied,
    T Function()? unknownError,
    required T Function() orElse,
  }) {
    switch (this) {
      case PlaceStatus.OK:
        return ok?.call() ?? orElse.call();
      case PlaceStatus.ZERO_RESULTS:
        return zeroResults?.call() ?? orElse.call();
      case PlaceStatus.INVALID_REQUEST:
        return invalidRequest?.call() ?? orElse.call();
      case PlaceStatus.OVER_QUERY_LIMIT:
        return overQueryLimit?.call() ?? orElse.call();
      case PlaceStatus.REQUEST_DENIED:
        return requestDenied?.call() ?? orElse.call();
      case PlaceStatus.UNKNOWN_ERROR:
        return unknownError?.call() ?? orElse.call();
    }

    return orElse.call();
  }
}
