import 'package:amatrider/utils/utils.dart';
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime?, String?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(String? value) =>
      value != null ? DateTime.tryParse(value) : null;

  @override
  String? toJson(DateTime? instance) => instance?.toIso8601String();
}

class TimestampFloorConverter extends TypeConverter<DateTime?, int?> {
  @override
  DateTime? decode(int? databaseValue) {
    return databaseValue?.let((it) => DateTime.fromMillisecondsSinceEpoch(it));
  }

  @override
  int? encode(DateTime? value) {
    return value?.millisecondsSinceEpoch;
  }
}
