library journey_detail.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'journey_detail.freezed.dart';

@freezed
@immutable
class JourneyDetail with _$JourneyDetail {
  const JourneyDetail._();

  const factory JourneyDetail({
    required JourneyInfo<int?>? distance,
    required JourneyInfo<int?>? duration,
    @Default(PlaceStatus.UNKNOWN_ERROR) PlaceStatus status,
  }) = _JourneyDetail;

  Either<Unit, String?> get duration_ {
    if (duration?.value.getOrNull != null) {
      if (duration!.value.getOrNull! <= 2) return left(unit);
      return right(Utils.hoursAndMins(Duration(
        seconds: duration!.value.getOrNull!,
      )));
    }
    return right(null);
  }

  String? get distance_ {
    final _val = distance?.value.getOrNull;
    if (_val != null) return '${(_val * Utils.distanceKMConverter).ceil()} KM';
    return null;
  }

  factory JourneyDetail.blank() => JourneyDetail(
        distance: JourneyInfo(
          convert: BasicTextField(null),
          value: BasicTextField(null),
        ),
        duration: JourneyInfo(
          convert: BasicTextField(null),
          value: BasicTextField(null),
        ),
      );

  JourneyDetail merge(JourneyDetail? other) {
    return copyWith(
      distance: other?.distance ?? distance,
      duration: other?.duration ?? duration,
      status: other?.status ?? status,
    );
  }
}

@freezed
@immutable
class JourneyInfo<B> with _$JourneyInfo<B> {
  const JourneyInfo._();

  const factory JourneyInfo({
    required BasicTextField<String?> convert,
    required BasicTextField<B?> value,
  }) = _JourneyInfo;
}
