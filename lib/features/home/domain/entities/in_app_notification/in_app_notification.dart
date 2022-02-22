library in_app_notification.dart;

import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:amatrider/core/domain/entities/entities.dart';

part 'in_app_notification.freezed.dart';

@freezed
@immutable
class InAppNotification extends BaseEntity with _$InAppNotification {
  const InAppNotification._();

  const factory InAppNotification({
    required UniqueId<String?> id,
    required UniqueId<String?> riderId,
    required BasicTextField<String?> title,
    required BasicTextField<String?> description,
    NotificationMeta? meta,
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _InAppNotification;
}
