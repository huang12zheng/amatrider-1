import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'place_opening_hours.freezed.dart';

@freezed
@immutable
class PlaceOpeningHours with _$PlaceOpeningHours {
  const factory PlaceOpeningHours({
    bool? openNow,
    @Default(KtList.empty()) KtList<PlaceOpeningPeriod> periods,
    @Default(KtList.empty()) KtList<BasicTextField<String?>?> weekdayText,
  }) = _PlaceOpeningHours;
}

@freezed
@immutable
class PlaceOpeningPeriod with _$PlaceOpeningPeriod {
  const factory PlaceOpeningPeriod({
    PlaceHours? close,
    PlaceHours? open,
  }) = _PlaceOpeningPeriod;
}

@freezed
@immutable
class PlaceHours with _$PlaceHours {
  const factory PlaceHours({
    BasicTextField<int?>? day,
    BasicTextField<String?>? time,
  }) = _PlaceHours;
}
