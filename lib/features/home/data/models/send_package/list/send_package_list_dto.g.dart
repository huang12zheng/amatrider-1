// GENERATED CODE - DO NOT MODIFY BY HAND

part of send_package_list_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendPackageListDTO _$$_SendPackageListDTOFromJson(
        Map<String, dynamic> json) =>
    _$_SendPackageListDTO(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SendPackageDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      links: json['links'] == null
          ? null
          : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SendPackageListDTOToJson(
    _$_SendPackageListDTO instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('links', instance.links?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  return val;
}
