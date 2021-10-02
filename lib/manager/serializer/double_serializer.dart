import 'package:json_annotation/json_annotation.dart';

class DoubleSerializer implements JsonConverter<double?, dynamic> {
  const DoubleSerializer();

  @override
  double? fromJson(dynamic value) {
    return value == null
        ? null
        : value is double
            ? value
            : value is int
                ? value.toDouble()
                : double.tryParse(value as String);
  }

  @override
  dynamic toJson(double? instance) => instance;
}
