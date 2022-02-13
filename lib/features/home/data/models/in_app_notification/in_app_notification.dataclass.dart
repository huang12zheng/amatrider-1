library in_app_notification.dataclass.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/data.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:amatrider/core/data/models/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';

part 'in_app_notification.dataclass.g.dart';
part 'in_app_notification.dataclass.freezed.dart';

InAppNotificationDTO deserializeInAppNotificationDTO(Map<String, dynamic> json) => InAppNotificationDTO.fromJson(json);
Map<String, dynamic> serializeInAppNotificationDTO(InAppNotificationDTO object) => object.toJson();

@freezed
@immutable
class InAppNotificationDTO with _$InAppNotificationDTO {
  const InAppNotificationDTO._();

  const factory InAppNotificationDTO({
    String? id,
    String? title,
    String? body,
    NotificationMetaDTO? meta,
    @JsonKey(name: 'date') @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? deletedAt,
  }) = _InAppNotificationDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory InAppNotificationDTO.fromJson(Map<String, dynamic> json) => _$InAppNotificationDTOFromJson(json);

  /// Maps the Data Transfer Object to a InAppNotification Object.
  InAppNotification get domain {
    return InAppNotification(
      id: UniqueId.fromExternal(id),
      title: BasicTextField(title),
      description: BasicTextField(body),
      meta: meta?.domain,
      createdAt: createdAt ?? DateTime.now(),
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

InAppNotificationListDTO deserializeInAppNotificationListDTO(Map<String, dynamic> json) => InAppNotificationListDTO.fromJson(json);
Map<String, dynamic> serializeInAppNotificationListDTO(InAppNotificationListDTO object) => object.toJson();

@freezed
@immutable
class InAppNotificationListDTO with _$InAppNotificationListDTO {
  const InAppNotificationListDTO._();

  const factory InAppNotificationListDTO({
    @Default([]) List<InAppNotificationDTO> data,
    PaginationLinks? links,
    MetaField? meta,
  }) = _InAppNotificationListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory InAppNotificationListDTO.fromJson(Map<String, dynamic> json) => _$InAppNotificationListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<InAppNotification> Object.
  KtList<InAppNotification> get domain => KtList.from(data.map((e) => e.domain));
}
