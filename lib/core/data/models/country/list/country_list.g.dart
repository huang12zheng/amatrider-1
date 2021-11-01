// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_list.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDTOList _$$_CountryDTOListFromJson(Map<String, dynamic> json) =>
    _$_CountryDTOList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CountryDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CountryDTOListToJson(_$_CountryDTOList instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
