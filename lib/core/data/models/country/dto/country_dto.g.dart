// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDTO _$$_CountryDTOFromJson(Map<String, dynamic> json) =>
    _$_CountryDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      iso2: json['iso2'] as String?,
      iso3: json['iso3'] as String?,
      dialCode: json['phone_code'] as String?,
    );

Map<String, dynamic> _$$_CountryDTOToJson(_$_CountryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('iso2', instance.iso2);
  writeNotNull('iso3', instance.iso3);
  writeNotNull('phone_code', instance.dialCode);
  return val;
}
