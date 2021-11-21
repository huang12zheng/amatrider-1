library in_app_notification.dart;

import 'package:amatrider/core/data/websocket_response_type.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_app_notification.freezed.dart';

@freezed
@immutable
class InAppNotification with _$InAppNotification {
  const InAppNotification._();

  const factory InAppNotification({
    required BasicTextField<String?> title,
    @Default(WebsocketResponseType.none) WebsocketResponseType type,
    required NotificationMeta<dynamic> meta,
    required DateTime createdAt,
  }) = _InAppNotification;
}
