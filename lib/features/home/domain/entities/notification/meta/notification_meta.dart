library notification_meta.dart;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_meta.freezed.dart';

@freezed
@immutable
class NotificationMeta<K> with _$NotificationMeta<K> {
  const NotificationMeta._();

  const factory NotificationMeta(K value) = _NotificationMeta<K>;
}
