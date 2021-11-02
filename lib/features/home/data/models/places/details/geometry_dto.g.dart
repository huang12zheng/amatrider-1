// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeometryDTO _$$_GeometryDTOFromJson(Map<String, dynamic> json) =>
    _$_GeometryDTO(
      location: json['location'] == null
          ? null
          : CoordintateDTO.fromJson(json['location'] as Map<String, dynamic>),
      viewport: json['viewport'] == null
          ? null
          : ViewportDTO.fromJson(json['viewport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeometryDTOToJson(_$_GeometryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location', instance.location?.toJson());
  writeNotNull('viewport', instance.viewport?.toJson());
  return val;
}

_$_ViewportDTO _$$_ViewportDTOFromJson(Map<String, dynamic> json) =>
    _$_ViewportDTO(
      northeast: json['northeast'] == null
          ? null
          : CoordintateDTO.fromJson(json['northeast'] as Map<String, dynamic>),
      southwest: json['southwest'] == null
          ? null
          : CoordintateDTO.fromJson(json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ViewportDTOToJson(_$_ViewportDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('northeast', instance.northeast?.toJson());
  writeNotNull('southwest', instance.southwest?.toJson());
  return val;
}

_$_CoordintateDTO _$$_CoordintateDTOFromJson(Map<String, dynamic> json) =>
    _$_CoordintateDTO(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CoordintateDTOToJson(_$_CoordintateDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lat', instance.lat);
  writeNotNull('lng', instance.lng);
  return val;
}
