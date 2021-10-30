// GENERATED CODE - DO NOT MODIFY BY HAND

part of rider_location_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RiderLocationDTO _$$_RiderLocationDTOFromJson(Map<String, dynamic> json) =>
    _$_RiderLocationDTO(
      lat: const DoubleSerializer().fromJson(json['lat']),
      lng: const DoubleSerializer().fromJson(json['long']),
      address: json['address'] as String?,
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      altitude: (json['altitude'] as num?)?.toDouble(),
      speed: (json['speed'] as num?)?.toDouble(),
      speedAccuracy: (json['speedAccuracy'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_RiderLocationDTOToJson(_$_RiderLocationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lat', const DoubleSerializer().toJson(instance.lat));
  writeNotNull('long', const DoubleSerializer().toJson(instance.lng));
  writeNotNull('address', instance.address);
  writeNotNull('accuracy', instance.accuracy);
  writeNotNull('altitude', instance.altitude);
  writeNotNull('speed', instance.speed);
  writeNotNull('speedAccuracy', instance.speedAccuracy);
  return val;
}
