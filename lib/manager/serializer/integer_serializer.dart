import 'package:json_annotation/json_annotation.dart';

class IntegerSerializer implements JsonConverter<int?, dynamic> {
  const IntegerSerializer();

  @override
  int? fromJson(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is bool) return value ? 1 : 0;
    return double.tryParse('$value')?.toInt();
  }

  @override
  dynamic toJson(int? instance) => instance;
}
