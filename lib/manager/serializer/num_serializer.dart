import 'package:json_annotation/json_annotation.dart';

class NumSerializer implements JsonConverter<num?, dynamic> {
  const NumSerializer();

  @override
  num? fromJson(dynamic value) {
    return value == null
        ? null
        : value is num
            ? value
            : num.tryParse(value as String);
  }

  @override
  dynamic toJson(num? instance) {
    return instance;
  }
}
