library country_dto.dart;

import 'dart:convert';

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'country_dto.g.dart';
part 'country_dto.freezed.dart';

@freezed
@immutable
class CountryDTO with _$CountryDTO {
  const CountryDTO._();

  const factory CountryDTO({
    String? id,
    String? name,
    String? iso2,
    String? iso3,
    @JsonKey(name: 'phone_code') String? dialCode,
  }) = _CountryDTO;

  factory CountryDTO.fromJson(Map<String, dynamic> json) =>
      _$CountryDTOFromJson(json);

  factory CountryDTO.fromDomain(Country? instance) => CountryDTO(
        id: instance?.id?.value,
        iso2: instance?.iso?.getOrNull,
        iso3: instance?.iso3?.getOrNull,
        name: instance?.name?.getOrNull,
        dialCode: instance?.dialCode?.getOrNull,
      );

  Country get domain => Country(
        id: UniqueId.fromExternal(id),
        iso: BasicTextField(iso2?.toLowerCase()),
        iso3: BasicTextField(iso3),
        name: BasicTextField(name),
        dialCode: BasicTextField(dialCode),
      );
}

class CountryDTOFloorConverter extends TypeConverter<CountryDTO?, String> {
  @override
  CountryDTO? decode(String databaseValue) =>
      CountryDTO.fromJson(jsonDecode(databaseValue) as Map<String, dynamic>);

  @override
  String encode(CountryDTO? value) => jsonEncode(value?.toJson());
}

extension CountryDTOListX on List<CountryDTO> {
  KtList<Country> get domain => KtList.from(map((e) => e.domain).toList());
}
