library websocket_response_type.dart;

class WebsocketResponseType {
  static const WebsocketResponseType newPackage = _$newPackage;

  final String name;

  const WebsocketResponseType._(this.name);

  static WebsocketResponseType valueOf(String name) => _$valueOf(name);
}

const WebsocketResponseType _$newPackage =
    WebsocketResponseType._('newPackage');

WebsocketResponseType _$valueOf(String name) {
  switch (name) {
    case 'package.new':
      return _$newPackage;
    default:
      throw ArgumentError(name);
  }
}

extension WebsocketResponseTypeX on WebsocketResponseType {
  T? when<T>({
    T Function()? newPackage,
  }) {
    switch (this) {
      case _$newPackage:
        return newPackage?.call();
    }
  }
}
