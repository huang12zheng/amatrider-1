library notification_type.dart;

import 'package:freezed_annotation/freezed_annotation.dart';

class NotificationType {
  static const String cart_order = 'order';
  static const String send_package = 'package';
  static const String request_anything = 'request';

  static const NotificationType ORDER = _$ORDER;
  static const NotificationType PACKAGE = _$PACKAGE;
  static const NotificationType REQUEST = _$REQUEST;

  final String name;

  const NotificationType._(this.name);

  static NotificationType valueOf(String name) => _$valueOf(name);

  @override
  String toString() => '$name';
}

const NotificationType _$REQUEST = NotificationType._('${NotificationType.request_anything}');
const NotificationType _$PACKAGE = NotificationType._('${NotificationType.send_package}');
const NotificationType _$ORDER = NotificationType._('${NotificationType.cart_order}');

NotificationType _$valueOf(String name) {
  switch (name) {
    case '${NotificationType.request_anything}':
      return _$REQUEST;
    case '${NotificationType.send_package}':
      return _$PACKAGE;
    case '${NotificationType.cart_order}':
      return _$ORDER;
    default:
      throw ArgumentError(name);
  }
}

class NotificationTypeSerializer implements JsonConverter<NotificationType, String> {
  const NotificationTypeSerializer();

  @override
  NotificationType fromJson(String value) => NotificationType.valueOf(value);

  @override
  String toJson(NotificationType instance) => instance.name;
}

extension NotificationTypeX on NotificationType {
  T maybeWhen<T>({
    T Function()? request,
    T Function()? package,
    T Function()? order,
    required T Function() orElse,
  }) {
    if (this == NotificationType.REQUEST) return request?.call() ?? orElse.call();
    if (this == NotificationType.PACKAGE) return package?.call() ?? orElse.call();
    if (this == NotificationType.ORDER)
      return order?.call() ?? orElse.call();
    else
      return orElse.call();
  }

  T when<T>({
    // required T Function() request,
    required T Function() package,
    required T Function() order,
  }) {
    switch (this) {
      case NotificationType.ORDER:
        return order.call();
      case NotificationType.PACKAGE:
        return package.call();
      // case NotificationType.REQUEST:
      //   return request.call();
      default:
        throw ArgumentError(name);
    }
  }
}
