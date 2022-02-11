library in_app_notification_dto.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_app_notification_dto.g.dart';
part 'in_app_notification_dto.freezed.dart';

@freezed
@immutable
class InAppNotificationDTO with _$InAppNotificationDTO {
  const InAppNotificationDTO._();

  const factory InAppNotificationDTO({
    String? title,
    @JsonKey(name: 'amat_notification_type') @WebsocketResponseTypeSerializer() WebsocketResponseType? type,
    dynamic meta,
    @JsonKey(name: 'date') @TimestampConverter() DateTime? createdAt,
  }) = _InAppNotificationDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory InAppNotificationDTO.fromJson(Map<String, dynamic> json) => _$InAppNotificationDTOFromJson(json);

  /// Maps the Data Transfer Object to a InAppNotification Object.
  InAppNotification get domain => InAppNotification(
        title: BasicTextField(title),
        type: type!,
        meta: NotificationMeta(meta),
        createdAt: createdAt!,
      );
}
