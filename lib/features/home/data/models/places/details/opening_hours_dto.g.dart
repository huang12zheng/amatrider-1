// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpeningHoursDTO _$$_OpeningHoursDTOFromJson(Map<String, dynamic> json) =>
    _$_OpeningHoursDTO(
      openNow: json['open_now'] as bool?,
      periods: (json['periods'] as List<dynamic>?)
              ?.map((e) => PeriodDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      weekdayText: (json['weekday_text'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OpeningHoursDTOToJson(_$_OpeningHoursDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('open_now', instance.openNow);
  val['periods'] = instance.periods.map((e) => e.toJson()).toList();
  val['weekday_text'] = instance.weekdayText;
  return val;
}

_$_PeriodDTO _$$_PeriodDTOFromJson(Map<String, dynamic> json) => _$_PeriodDTO(
      close: json['close'] == null
          ? null
          : HoursDTO.fromJson(json['close'] as Map<String, dynamic>),
      open: json['open'] == null
          ? null
          : HoursDTO.fromJson(json['open'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PeriodDTOToJson(_$_PeriodDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('close', instance.close?.toJson());
  writeNotNull('open', instance.open?.toJson());
  return val;
}

_$_HoursDTO _$$_HoursDTOFromJson(Map<String, dynamic> json) => _$_HoursDTO(
      day: json['day'] as int?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$_HoursDTOToJson(_$_HoursDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('day', instance.day);
  writeNotNull('time', instance.time);
  return val;
}
