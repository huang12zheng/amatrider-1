// GENERATED CODE - DO NOT MODIFY BY HAND

part of journey_detail_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JourneyDetailDTO _$$_JourneyDetailDTOFromJson(Map<String, dynamic> json) =>
    _$_JourneyDetailDTO(
      distance: json['distance'] == null
          ? null
          : JourneyInfoDTO<int?>.fromJson(
              json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : JourneyInfoDTO<int?>.fromJson(
              json['duration'] as Map<String, dynamic>),
      status: const PlaceStatusSerializer().fromJson(json['status'] as String?),
    );

Map<String, dynamic> _$$_JourneyDetailDTOToJson(_$_JourneyDetailDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('distance', instance.distance);
  writeNotNull('duration', instance.duration);
  val['status'] = const PlaceStatusSerializer().toJson(instance.status);
  return val;
}

_$_JourneyInfoDTO<B> _$$_JourneyInfoDTOFromJson<B>(Map<String, dynamic> json) =>
    _$_JourneyInfoDTO<B>(
      text: json['text'] as String?,
      value: JourneyInfoValueSerializer<B?>().fromJson(json['value'] as Object),
    );

Map<String, dynamic> _$$_JourneyInfoDTOToJson<B>(
    _$_JourneyInfoDTO<B> instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull(
      'value', JourneyInfoValueSerializer<B?>().toJson(instance.value));
  return val;
}
