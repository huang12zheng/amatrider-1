library meta_type.dart;

import 'package:json_annotation/json_annotation.dart';

class MetaType {
  static const String newPackage = 'package.new';
  static const String newOrder = 'order.new';
  static const String none = 'none';

  static String valueOf(String name) => _$valueOf(name);
}

String _$valueOf(String name) {
  switch (name) {
    case 'package.new':
      return MetaType.newPackage;
    case 'order.new':
      return MetaType.newOrder;
    default:
      return MetaType.none;
  }
}

class MetaTypeSerializer implements JsonConverter<String, String?> {
  const MetaTypeSerializer();

  @override
  String fromJson(String? value) => MetaType.valueOf('$value');

  @override
  String? toJson(String instance) => instance;
}

extension MetaTypeX on String {
  T maybeWhen<T>({
    T Function()? newPackage,
    T Function()? newOrder,
    required T Function() orElse,
  }) {
    switch (this) {
      case MetaType.newPackage:
        return newPackage?.call() ?? orElse.call();
      case MetaType.newOrder:
        return newOrder?.call() ?? orElse.call();
      default:
        return orElse.call();
    }
  }
}
