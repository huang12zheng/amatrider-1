// GENERATED CODE - DO NOT MODIFY BY HAND

part of sender_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SenderDTO _$$_SenderDTOFromJson(Map<String, dynamic> json) => _$_SenderDTO(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['created_at'] as String?),
    );

Map<String, dynamic> _$$_SenderDTOToJson(_$_SenderDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('image', instance.image);
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  return val;
}
