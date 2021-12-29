// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_list_object.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericListDTO<T> _$GenericListDTOFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GenericListDTO<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      currentPage: const IntegerSerializer().fromJson(json['current_page']),
      from: const IntegerSerializer().fromJson(json['from']),
      lastPage: const IntegerSerializer().fromJson(json['last_page']),
      paginationLinks: (json['links'] as List<dynamic>?)
              ?.map((e) => PaginationLinks.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      path: json['path'] as String?,
      perPage: const IntegerSerializer().fromJson(json['per_page']),
      to: const IntegerSerializer().fromJson(json['to']),
      total: const IntegerSerializer().fromJson(json['total']),
      meta: json['meta'] == null
          ? null
          : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenericListDTOToJson<T>(
  GenericListDTO<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'current_page', const IntegerSerializer().toJson(instance.currentPage));
  val['data'] = instance.data.map(toJsonT).toList();
  writeNotNull('from', const IntegerSerializer().toJson(instance.from));
  writeNotNull(
      'last_page', const IntegerSerializer().toJson(instance.lastPage));
  writeNotNull('meta', instance.meta?.toJson());
  val['links'] = instance.paginationLinks.map((e) => e.toJson()).toList();
  writeNotNull('path', instance.path);
  writeNotNull('per_page', const IntegerSerializer().toJson(instance.perPage));
  writeNotNull('to', const IntegerSerializer().toJson(instance.to));
  writeNotNull('total', const IntegerSerializer().toJson(instance.total));
  return val;
}
