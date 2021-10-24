// GENERATED CODE - DO NOT MODIFY BY HAND

part of registered_user_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisteredUserDTO _$$_RegisteredUserDTOFromJson(Map<String, dynamic> json) =>
    _$_RegisteredUserDTO(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : UserDTO.fromJson(json['data'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisteredUserDTOToJson(
    _$_RegisteredUserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('data', instance.data);
  writeNotNull('user', instance.user);
  return val;
}
