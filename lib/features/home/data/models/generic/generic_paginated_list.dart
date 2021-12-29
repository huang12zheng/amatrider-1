library generic_paginated_list.dart;

import 'package:amatrider/core/data/models/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generic_paginated_list.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class GenericPaginatedListDTO<T> {
  final List<T> data;
  final PaginationLinks? links;
  final MetaField? meta;

  GenericPaginatedListDTO({required this.data, this.links, this.meta});

  factory GenericPaginatedListDTO.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$GenericPaginatedListDTOFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$GenericPaginatedListDTOToJson<T>(this, toJsonT);
}

extension GenericPaginatedListDTOCopyWith<T> on GenericPaginatedListDTO<T> {
  U domain<U>(U Function(List<T>) serializer) => serializer.call(data);

  GenericPaginatedListDTO<T> copyWith({
    List<T> data = const [],
    PaginationLinks? links,
    MetaField? meta,
  }) =>
      GenericPaginatedListDTO<T>(
        data: data,
        links: links ?? this.links,
        meta: meta ?? this.meta,
      );

  GenericPaginatedListDTO<T> copyWithNull({
    bool links = false,
    bool meta = false,
  }) =>
      GenericPaginatedListDTO<T>(
        data: data,
        links: links == true ? null : this.links,
        meta: meta == true ? null : this.meta,
      );
}
