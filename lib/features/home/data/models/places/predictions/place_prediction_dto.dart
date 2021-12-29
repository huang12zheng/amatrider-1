library place_prediction_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'place_prediction_dto.g.dart';
part 'place_prediction_dto.freezed.dart';

@freezed
@immutable
class PlacePredictionDTO with _$PlacePredictionDTO {
  const PlacePredictionDTO._();

  const factory PlacePredictionDTO({
    @JsonKey(name: 'place_id') String? placeId,
    String? reference,
    String? description,
    List<String>? types,
    @Default([])
    @JsonKey(name: 'matched_substrings')
        List<MatchedStringsDTO?> matchedSubstrings,
    //
    @JsonKey(defaultValue: [])
    @Default([])
        List<PlacePredictionDTO?> predictions,
    @PlaceStatusSerializer() required PlaceStatus status,
    String? error,
  }) = _PlacePredictionDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory PlacePredictionDTO.fromJson(Map<String, dynamic> json) =>
      _$PlacePredictionDTOFromJson(json);

  /// Maps the Data Transfer Object to a PlacePrediction Object.
  PlacePrediction get domain => PlacePrediction(
        placeId: UniqueId.fromExternal(placeId),
        reference: UniqueId.fromExternal(reference),
        description: BasicTextField(description),
        types: ImmutableStrings(types?.toImmutableList()),
        matched: KtList.from(matchedSubstrings.map((e) => e?.domain)),
      );

  KtList<PlacePrediction?> get immutable =>
      KtList.from(predictions.map((e) => e?.domain));
}

@freezed
@immutable
class MatchedStringsDTO with _$MatchedStringsDTO {
  const MatchedStringsDTO._();

  const factory MatchedStringsDTO({
    required int? length,
    required int? offset,
  }) = _MatchedStringsDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory MatchedStringsDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchedStringsDTOFromJson(json);

  /// Maps the Data Transfer Object to a MatchedSubstrings Object.
  MatchedSubstrings get domain => MatchedSubstrings(
        length: BasicTextField(length),
        offset: BasicTextField(offset),
      );
}
