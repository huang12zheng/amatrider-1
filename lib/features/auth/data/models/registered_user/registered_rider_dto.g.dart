// GENERATED CODE - DO NOT MODIFY BY HAND

part of registered_rider_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisteredRiderDTO _$$_RegisteredRiderDTOFromJson(
        Map<String, dynamic> json) =>
    _$_RegisteredRiderDTO(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : RiderDTO.fromJson(json['data'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : RiderDTO.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisteredRiderDTOToJson(
    _$_RegisteredRiderDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}
