library logistics_type.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'logistics_type.g.dart';

class LogisticsType extends EnumClass {
  static const LogisticsType order = _$order;
  @BuiltValueEnumConst(fallback: true)
  static const LogisticsType package = _$package;

  const LogisticsType._(String name) : super(name);

  static BuiltSet<LogisticsType> get values => _$values;

  static LogisticsType valueOf(String name) => _$valueOf(name);
}

class LogisticsTypeSerializer implements JsonConverter<LogisticsType, String> {
  const LogisticsTypeSerializer();

  @override
  LogisticsType fromJson(String value) => LogisticsType.valueOf('${value.toLowerCase()}');

  @override
  String toJson(LogisticsType instance) => instance.name.toUpperCase();
}

extension LogisticsTypeX on LogisticsType {
  T when<T>({
    required T Function() order,
    required T Function() package,
  }) {
    switch (this) {
      case LogisticsType.order:
        return order.call();
      case LogisticsType.package:
      default:
        return package.call();
    }
  }
}
