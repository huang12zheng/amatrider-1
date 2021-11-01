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
    _$_AddressComponentDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('long_name', instance.longName);
  writeNotNull('short_name', instance.shortName);
  val['types'] = instance.types
      .map(const AddressComponentTypeSerializer().toJson)
      .toList();
  return val;
}
