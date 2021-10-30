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
        _$_PlacePredictionDTO instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'reference': instance.reference,
      'description': instance.description,
      'types': instance.types,
      'matched_substrings': instance.matchedSubstrings,
      'predictions': instance.predictions,
      'status': const PlaceStatusSerializer().toJson(instance.status),
      'error': instance.error,
    };

_$_MatchedStringsDTO _$$_MatchedStringsDTOFromJson(Map<String, dynamic> json) =>
    _$_MatchedStringsDTO(
      length: json['length'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$$_MatchedStringsDTOToJson(
        _$_MatchedStringsDTO instance) =>
    <String, dynamic>{
      'length': instance.length,
      'offset': instance.offset,
    };
