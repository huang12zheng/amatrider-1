// GENERATED CODE - DO NOT MODIFY BY HAND

part of address_component_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressComponentDTO _$$_AddressComponentDTOFromJson(
        Map<String, dynamic> json) =>
    _$_AddressComponentDTO(
      longName: json['long_name'] as String?,
      shortName: json['short_name'] as String?,
      types: (json['types'] as List<dynamic>?)
              ?.map((e) =>
                  const AddressComponentTypeSerializer().fromJson(e as String?))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_AddressComponentDTOToJson(
        _$_AddressComponentDTO instance) =>
    <String, dynamic>{
      'long_name': instance.longName,
      'short_name': instance.shortName,
      'types': instance.types
          .map(const AddressComponentTypeSerializer().toJson)
          .toList(),
    };
