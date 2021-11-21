library websocket_response_type.dart;

import 'package:json_annotation/json_annotation.dart';

class WebsocketResponseType {
  static const WebsocketResponseType packageDelivered = _$packageDelivered;
  static const WebsocketResponseType none = _$none;

  final String name;

  const WebsocketResponseType._(this.name);

  static WebsocketResponseType valueOf(String name) => _$valueOf(name);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is WebsocketResponseType && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() => '$name';
}

const WebsocketResponseType _$packageDelivered =
    WebsocketResponseType._('package.delivered');

const WebsocketResponseType _$none = WebsocketResponseType._('none');

WebsocketResponseType _$valueOf(String name) {
  switch (name) {
    // case 'App\\Notifications\\Riders\\PackageDeliveredNotification':
    case 'package.delivered':
      return _$packageDelivered;
    default:
      return _$none;
  }
}

class WebsocketResponseTypeSerializer
    implements JsonConverter<WebsocketResponseType?, String?> {
  const WebsocketResponseTypeSerializer();

  @override
  WebsocketResponseType fromJson(String? value) =>
      WebsocketResponseType.valueOf(value ?? '');

  @override
  String? toJson(WebsocketResponseType? instance) => instance?.name;
}

extension WebsocketResponseTypeX on WebsocketResponseType {
  T when<T>({
    T Function()? packageDelivered,
    required T Function() orElse,
  }) {
    if (this == _$packageDelivered)
      return packageDelivered?.call() ?? orElse.call();
    else
      return orElse.call();
  }
}
