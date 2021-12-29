library generic_object.dart;

import 'package:amatrider/core/data/models/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generic_object.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class GenericObjectDTO<T extends Object?> {
  final T? data;
  final PaginationLinks? links;
  final MetaField? meta;

  GenericObjectDTO({required this.data, this.links, this.meta});

  factory GenericObjectDTO.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$GenericObjectDTOFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$GenericObjectDTOToJson<T>(this, toJsonT);
}

extension GenericObjectDTOCopyWith<T> on GenericObjectDTO<T> {
  U domain<U>(U Function(T?) serializer) => serializer.call(data);

  GenericObjectDTO<T> copyWith({
    T? data,
    PaginationLinks? links,
    MetaField? meta,
  }) =>
      GenericObjectDTO<T>(
        data: data ?? this.data,
        links: links ?? this.links,
        meta: meta ?? this.meta,
      );

  GenericObjectDTO<T> copyWithNull({
    bool links = false,
    bool meta = false,
  }) =>
      GenericObjectDTO<T>(
        data: data,
        links: links == true ? null : this.links,
        meta: meta == true ? null : this.meta,
      );
}
