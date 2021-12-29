// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_paginated_list.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericPaginatedListDTO<T> _$GenericPaginatedListDTOFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GenericPaginatedListDTO<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      links: json['links'] == null
          ? null
          : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenericPaginatedListDTOToJson<T>(
  GenericPaginatedListDTO<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{
    'data': instance.data.map(toJsonT).toList(),
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
