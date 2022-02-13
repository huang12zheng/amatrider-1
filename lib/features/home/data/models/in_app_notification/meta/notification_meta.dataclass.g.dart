// GENERATED CODE - DO NOT MODIFY BY HAND

part of notification_meta.dataclass.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationOrderMeta _$$_NotificationOrderMetaFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationOrderMeta(
      type: const NotificationTypeSerializer().fromJson(json['type'] as String),
      order: UserOrderDTO.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NotificationOrderMetaToJson(
    _$_NotificationOrderMeta instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'type', const NotificationTypeSerializer().toJson(instance.type));
  val['order'] = instance.order.toJson();
  return val;
}

_$_NotificationPackageMeta _$$_NotificationPackageMetaFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationPackageMeta(
      type: const NotificationTypeSerializer().fromJson(json['type'] as String),
      package: SendPackageDTO.fromJson(json['package'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NotificationPackageMetaToJson(
    _$_NotificationPackageMeta instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'type', const NotificationTypeSerializer().toJson(instance.type));
  val['package'] = instance.package.toJson();
  return val;
}
