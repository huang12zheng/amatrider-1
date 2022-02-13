library notification_meta.dataclass.dart;

import 'package:amatrider/features/home/data/data.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_meta.dataclass.freezed.dart';
part 'notification_meta.dataclass.g.dart';

NotificationMetaDTO deserializeNotificationMetaDTO(Map<String, dynamic> json) => NotificationMetaDTO.fromJson(json);
Map<String, dynamic> serializeNotificationMetaDTO(NotificationMetaDTO object) => object.toJson();

@immutable
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.none)
class NotificationMetaDTO with _$NotificationMetaDTO {
  const NotificationMetaDTO._();

  @FreezedUnionValue('${NotificationType.cart_order}')
  const factory NotificationMetaDTO.order({
    @NotificationTypeSerializer() required NotificationType type,
    required UserOrderDTO order,
  }) = _NotificationOrderMeta;

  @FreezedUnionValue('${NotificationType.send_package}')
  const factory NotificationMetaDTO.package({
    @NotificationTypeSerializer() required NotificationType type,
    required SendPackageDTO package,
  }) = _NotificationPackageMeta;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory NotificationMetaDTO.fromJson(Map<String, dynamic> json) => _$NotificationMetaDTOFromJson(json);

  /// Maps the Data Transfer Object to a NotificationMeta Object.
  NotificationMeta get domain {
    return type.when(
      order: () => NotificationMeta.order(mapOrNull(order: (o) => o.order.domain)!),
      package: () => NotificationMeta.package(mapOrNull(package: (o) => o.package.domain)!),
    );
  }
}
