// GENERATED CODE - DO NOT MODIFY BY HAND

part of social_user_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialUserDTO _$$_SocialUserDTOFromJson(Map<String, dynamic> json) =>
    _$_SocialUserDTO(
      status: json['status'] as String?,
      code: const IntegerSerializer().fromJson(json['code']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : RiderDTO.fromJson(json['data'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : RiderDTO.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SocialUserDTOToJson(_$_SocialUserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('code', const IntegerSerializer().toJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}
