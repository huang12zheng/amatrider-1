import 'package:json_annotation/json_annotation.dart';

class BooleanSerializer implements JsonConverter<bool?, dynamic> {
  const BooleanSerializer();

  bool _fromJson(dynamic value) {
    if (value == null)
      return false;
    else if (value is int)
      return (int.tryParse(value as String) == 0 ? false : true);
    else if (value is String) return value.contains('true');

    return value as bool;
  }

  @override
  bool fromJson(dynamic value) => _fromJson(value);

  @override
  dynamic toJson(bool? instance) => instance;
}
