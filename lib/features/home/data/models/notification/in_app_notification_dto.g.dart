// GENERATED CODE - DO NOT MODIFY BY HAND

part of in_app_notification_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InAppNotificationDTO _$$_InAppNotificationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_InAppNotificationDTO(
      title: json['title'] as String?,
      type: const WebsocketResponseTypeSerializer()
          .fromJson(json['amat_notification_type'] as String?),
      meta: json['meta'],
      createdAt: const TimestampConverter().fromJson(json['date']),
    );

Map<String, dynamic> _$$_InAppNotificationDTOToJson(
    _$_InAppNotificationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('amat_notification_type',
      const WebsocketResponseTypeSerializer().toJson(instance.type));
  writeNotNull('meta', instance.meta);
  writeNotNull('date', const TimestampConverter().toJson(instance.createdAt));
  return val;
}
