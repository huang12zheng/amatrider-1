import 'package:json_annotation/json_annotation.dart';

class IntToBoolSerializer implements JsonConverter<bool?, dynamic> {
  const IntToBoolSerializer();

  @override
  bool? fromJson(dynamic value) {
    if (value is bool) return value;

    final _value = value == null
        ? null
        : value is int
            ? value
            : int.tryParse(value as String);

    if (_value == null) return false;

    switch (_value) {
      case 0:
        return false;
      case 1:
      default:
        return true;
    }
  }

  @override
  dynamic toJson(bool? instance) {
    switch (instance) {
      case false:
        return 0;
      case true:
      default:
        return 1;
    }
  }
}
