// GENERATED CODE - DO NOT MODIFY BY HAND

part of paginated_list_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedListWrapperDTO<T> _$PaginatedListWrapperDTOFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginatedListWrapperDTO<T>(
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList() ?? [],
      currentPage: json['current_page'] as int?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      paginationLinks: (json['links'] as List<dynamic>?)
              ?.map((e) => PaginationLinks.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$PaginatedListWrapperDTOToJson<T>(
  PaginatedListWrapperDTO<T> instance,
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

  writeNotNull('current_page', instance.currentPage);
  writeNotNull('from', instance.from);
  writeNotNull('last_page', instance.lastPage);
  val['links'] = instance.paginationLinks.map((e) => e.toJson()).toList();
  writeNotNull('path', instance.path);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('to', instance.to);
  writeNotNull('total', instance.total);
  return val;
}

PaginatedListDTO<T> _$PaginatedListDTOFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginatedListDTO<T>(
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList() ?? [],
      links: json['links'] == null
          ? null
          : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaginatedListDTOToJson<T>(
  PaginatedListDTO<T> instance,
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
