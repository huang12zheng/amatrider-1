import 'package:json_annotation/json_annotation.dart';

class IntegerSerializer implements JsonConverter<int?, dynamic> {
  const IntegerSerializer();

  @override
  int? fromJson(dynamic value) {
    return value == null
        ? null
        : value is int
            ? value
            : int.tryParse(value as String);
  }

  @override
  dynamic toJson(int? instance) => instance;
}
