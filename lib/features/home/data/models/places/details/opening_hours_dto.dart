import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'opening_hours_dto.freezed.dart';
part 'opening_hours_dto.g.dart';

@freezed
@immutable
class OpeningHoursDTO with _$OpeningHoursDTO {
  const OpeningHoursDTO._();

  const factory OpeningHoursDTO({
    @JsonKey(name: 'open_now') bool? openNow,
    @JsonKey(defaultValue: []) required List<PeriodDTO> periods,
    @JsonKey(name: 'weekday_text', defaultValue: [])
        required List<String?> weekdayText,
  }) = _OpeningHoursDTO;

  factory OpeningHoursDTO.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursDTOFromJson(json);

  /// Maps the Data Transfer Object to a PlaceOpeningHours Object.
  PlaceOpeningHours get domain => PlaceOpeningHours(
        openNow: openNow,
        weekdayText: KtList.from(weekdayText.map((e) => BasicTextField(e))),
        periods: KtList.from(periods.map(
          (e) => PlaceOpeningPeriod(
            close: PlaceHours(
              day: BasicTextField(e.close?.day),
              time: BasicTextField(e.close?.time),
            ),
            open: PlaceHours(
              day: BasicTextField(e.open?.day),
              time: BasicTextField(e.open?.time),
            ),
          ),
        )),
      );
}

@freezed
@immutable
class PeriodDTO with _$PeriodDTO {
  const factory PeriodDTO({
    HoursDTO? close,
    HoursDTO? open,
  }) = _PeriodDTO;

  factory PeriodDTO.fromJson(Map<String, dynamic> json) =>
      _$PeriodDTOFromJson(json);
}

@freezed
@immutable
class HoursDTO with _$HoursDTO {
  const factory HoursDTO({
    int? day,
    String? time,
  }) = _HoursDTO;

  factory HoursDTO.fromJson(Map<String, dynamic> json) =>
      _$HoursDTOFromJson(json);
}
