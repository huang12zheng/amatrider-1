library journey_detail_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'journey_detail_dto.g.dart';
part 'journey_detail_dto.freezed.dart';

@freezed
@immutable
class JourneyDetailDTO with _$JourneyDetailDTO {
  const JourneyDetailDTO._();

  const factory JourneyDetailDTO({
    JourneyInfoDTO<int?>? distance,
    JourneyInfoDTO<int?>? duration,
    @PlaceStatusSerializer() required PlaceStatus status,
  }) = _JourneyDetailDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory JourneyDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$JourneyDetailDTOFromJson(json);

  /// Maps the Data Transfer Object to a JourneyDetail Object.
  JourneyDetail get domain => JourneyDetail(
        distance: distance?.domain,
        duration: duration?.domain,
        status: status,
      );
}

@freezed
@immutable
class JourneyInfoDTO<B> with _$JourneyInfoDTO<B> {
  const JourneyInfoDTO._();

  const factory JourneyInfoDTO({
    String? text,
    @JourneyInfoValueSerializer() B? value,
  }) = _JourneyInfoDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory JourneyInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$JourneyInfoDTOFromJson(json);

  /// Maps the Data Transfer Object to a JourneyInfo Object.
  JourneyInfo<B> get domain =>
      JourneyInfo(convert: BasicTextField(text), value: BasicTextField(value));
}

class JourneyInfoValueSerializer<B> implements JsonConverter<B?, Object> {
  const JourneyInfoValueSerializer();

  @override
  B? fromJson(Object value) => value as B?;

  @override
  Object toJson(B? instance) => instance as Object;
}
