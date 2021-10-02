library country_list.dart;

import 'package:amatrider/core/data/models/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'country_list.g.dart';
part 'country_list.freezed.dart';

@freezed
@immutable
class CountryDTOList with _$CountryDTOList {
  const CountryDTOList._();

  const factory CountryDTOList({
    @JsonKey(includeIfNull: false) @Default([]) List<CountryDTO> data,
  }) = _CountryDTOList;

  factory CountryDTOList.fromJson(Map<String, dynamic> json) =>
      _$CountryDTOListFromJson(json);

  KtList<Country> get domain => KtList.from(data.map((e) => e.domain).toList());
}
