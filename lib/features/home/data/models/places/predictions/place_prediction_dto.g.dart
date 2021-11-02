// GENERATED CODE - DO NOT MODIFY BY HAND

part of place_prediction_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlacePredictionDTO _$$_PlacePredictionDTOFromJson(
        Map<String, dynamic> json) =>
    _$_PlacePredictionDTO(
      placeId: json['place_id'] as String?,
      reference: json['reference'] as String?,
      description: json['description'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      matchedSubstrings: (json['matched_substrings'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : MatchedStringsDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      predictions: (json['predictions'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : PlacePredictionDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      status: const PlaceStatusSerializer().fromJson(json['status'] as String?),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_PlacePredictionDTOToJson(
    _$_PlacePredictionDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('place_id', instance.placeId);
  writeNotNull('reference', instance.reference);
  writeNotNull('description', instance.description);
  writeNotNull('types', instance.types);
  val['matched_substrings'] =
      instance.matchedSubstrings.map((e) => e?.toJson()).toList();
  val['predictions'] = instance.predictions.map((e) => e?.toJson()).toList();
  writeNotNull('status', const PlaceStatusSerializer().toJson(instance.status));
  writeNotNull('error', instance.error);
  return val;
}

_$_MatchedStringsDTO _$$_MatchedStringsDTOFromJson(Map<String, dynamic> json) =>
    _$_MatchedStringsDTO(
      length: json['length'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$$_MatchedStringsDTOToJson(
    _$_MatchedStringsDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('length', instance.length);
  writeNotNull('offset', instance.offset);
  return val;
}
