library generic_list_object.dart;

import 'package:amatrider/core/data/models/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'generic_list_object.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class GenericListDTO<T> {
  @JsonKey(name: 'current_page')
  @IntegerSerializer()
  final int? currentPage;

  final List<T> data;
  @IntegerSerializer()
  final int? from;

  @JsonKey(name: 'last_page')
  @IntegerSerializer()
  final int? lastPage;

  // final PaginationLinks? links;
  final MetaField? meta;

  @JsonKey(defaultValue: [], name: 'links')
  final List<PaginationLinks> paginationLinks;

  final String? path;

  @JsonKey(name: 'per_page')
  @IntegerSerializer()
  final int? perPage;

  @IntegerSerializer()
  final int? to;

  @IntegerSerializer()
  final int? total;

  GenericListDTO({
    required this.data,
    this.currentPage,
    this.from,
    this.lastPage,
    this.paginationLinks = const [],
    this.path,
    this.perPage,
    this.to,
    this.total,
    this.meta,
  });

  factory GenericListDTO.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$GenericListDTOFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$GenericListDTOToJson<T>(this, toJsonT);
}

extension GenericListDTOCopyWith<T> on GenericListDTO<T> {
  /// Maps the Data Transfer Object to a KtList<DeliveryHistory> Object.
  KtList<U> domain<U>(U Function(T) serializer) =>
      KtList.from(data.map((e) => serializer.call(e)).toList());

  GenericListDTO<T> copyWith({
    List<T>? data,
    int? currentPage,
    int? from,
    int? lastPage,
    List<PaginationLinks>? paginationLinks,
    String? path,
    int? perPage,
    int? to,
    int? total,
    MetaField? meta,
  }) =>
      GenericListDTO<T>(
        data: data ?? this.data,
        currentPage: currentPage ?? this.currentPage,
        from: from ?? this.from,
        lastPage: lastPage ?? this.lastPage,
        paginationLinks: paginationLinks ?? this.paginationLinks,
        path: path ?? this.path,
        perPage: perPage ?? this.perPage,
        to: to ?? this.to,
        total: total ?? this.total,
        meta: meta ?? this.meta,
      );

  GenericListDTO<T> copyWithNull({
    bool currentPage = false,
    bool from = false,
    bool lastPage = false,
    bool path = false,
    bool perPage = false,
    bool to = false,
    bool total = false,
    bool meta = false,
  }) =>
      GenericListDTO<T>(
        data: data,
        currentPage: currentPage ? null : this.currentPage,
        from: from ? null : this.from,
        lastPage: lastPage ? null : this.lastPage,
        paginationLinks: paginationLinks,
        path: path ? null : this.path,
        perPage: perPage ? null : this.perPage,
        to: to ? null : this.to,
        total: total ? null : this.total,
        meta: meta ? null : this.meta,
      );
}
