import 'package:amatrider/utils/utils.dart';
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime?, dynamic> {
  const TimestampConverter();

  @override
  DateTime? fromJson(dynamic value) =>
      value != null ? DateTime.tryParse('$value') : null;

  @override
  dynamic toJson(DateTime? instance) => instance?.toIso8601String();
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

class MillisecondsToDurationConverter
    implements JsonConverter<Duration?, dynamic> {
  const MillisecondsToDurationConverter();

  @override
  Duration? fromJson(dynamic value) {
    final _value = value is int ? value : int.tryParse('$value') ?? 0;

    var datetime = DateTime.fromMillisecondsSinceEpoch(_value);

    return DateTime.now().difference(datetime);
  }

  @override
  dynamic toJson(Duration? instance) => instance?.inMilliseconds;
}

class SecondsToDurationConverter implements JsonConverter<Duration?, dynamic> {
  const SecondsToDurationConverter();

  @override
  Duration? fromJson(dynamic value) {
    final _value = value is int ? value : int.tryParse('$value') ?? 0;
    return Duration(seconds: _value);
  }

  @override
  dynamic toJson(Duration? instance) => instance?.inMilliseconds;
}
