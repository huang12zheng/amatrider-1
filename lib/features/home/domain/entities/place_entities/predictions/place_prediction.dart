library place_prediction.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'place_prediction.freezed.dart';

@freezed
@immutable
class PlacePrediction with _$PlacePrediction {
  const PlacePrediction._();

  const factory PlacePrediction({
    required UniqueId<String?> placeId,
    required UniqueId<String?> reference,
    required BasicTextField<String?> description,
    required ImmutableStrings types,
    required KtList<MatchedSubstrings?> matched,
  }) = _PlacePrediction;

  factory PlacePrediction.fromQuery(String? query) => PlacePrediction(
        placeId: UniqueId.fromExternal(null),
        reference: UniqueId.fromExternal(null),
        description: BasicTextField(query),
        types: ImmutableStrings(null),
        matched: const KtList.empty(),
      );
}

@freezed
@immutable
class MatchedSubstrings with _$MatchedSubstrings {
  const MatchedSubstrings._();

  const factory MatchedSubstrings({
    required BasicTextField<int?> length,
    required BasicTextField<int?> offset,
  }) = _MatchedSubstrings;
}
