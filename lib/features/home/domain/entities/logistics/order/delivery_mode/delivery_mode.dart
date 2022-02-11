library delivery_mode.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delivery_mode.g.dart';

class DeliveryMode extends EnumClass {
  static const DeliveryMode delivery = _$delivery;
  static const DeliveryMode pickup = _$pickup;

  const DeliveryMode._(String name) : super(name);

  static BuiltSet<DeliveryMode> get values => _$values;

  static DeliveryMode valueOf(String name) => _$valueOf(name);
}

class DeliveryModeSerializer implements JsonConverter<DeliveryMode, String> {
  const DeliveryModeSerializer();

  @override
  DeliveryMode fromJson(String value) => DeliveryMode.valueOf('${value.toLowerCase()}');

  @override
  String toJson(DeliveryMode instance) => instance.name.toUpperCase();
}

extension DeliveryModeX on DeliveryMode {
  T when<T>({
    required T Function() delivery,
    required T Function() pickup,
  }) {
    switch (this) {
      case DeliveryMode.delivery:
        return delivery.call();
      case DeliveryMode.pickup:
      default:
        return pickup.call();
    }
  }
}
