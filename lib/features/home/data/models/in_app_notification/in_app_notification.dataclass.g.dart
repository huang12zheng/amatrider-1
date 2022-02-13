// GENERATED CODE - DO NOT MODIFY BY HAND

part of in_app_notification.dataclass.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InAppNotificationDTO _$$_InAppNotificationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_InAppNotificationDTO(
      id: json['id'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      meta: json['meta'] == null
          ? null
          : NotificationMetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
      createdAt: const TimestampConverter().fromJson(json['date']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      deletedAt: const TimestampConverter().fromJson(json['deleted_at']),
    );

Map<String, dynamic> _$$_InAppNotificationDTOToJson(
    _$_InAppNotificationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('body', instance.body);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('date', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}

_$_InAppNotificationListDTO _$$_InAppNotificationListDTOFromJson(
        Map<String, dynamic> json) =>
    _$_InAppNotificationListDTO(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  InAppNotificationDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      links: json['links'] == null
          ? null
          : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InAppNotificationListDTOToJson(
    _$_InAppNotificationListDTO instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('links', instance.links?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  return val;
}
