import 'package:json_annotation/json_annotation.dart';

bool _fromJson(dynamic value) {
  if (value == null)
    return false;
  else if (value is int)
    return (int.tryParse('$value') == 0 ? false : true);
  else if (value is String) return value.contains('true');

  return value as bool;
}

class BooleanSerializer implements JsonConverter<bool?, dynamic> {
  const BooleanSerializer();

  @override
  bool fromJson(dynamic value) => _fromJson(value);

  @override
  dynamic toJson(bool? instance) => instance;
}
