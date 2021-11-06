library paginated_list_dto.dart;

import 'package:amatrider/core/data/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'paginated_list_dto.freezed.dart';
part 'paginated_list_dto.g.dart';

@freezed
@immutable
@JsonSerializable(genericArgumentFactories: true)
class PaginatedListWrapperDTO<T> with _$PaginatedListWrapperDTO<T> {
  const PaginatedListWrapperDTO._();

  const factory PaginatedListWrapperDTO({
    @JsonKey(defaultValue: []) @Default([]) List<T> data,
    @JsonKey(name: 'current_page') int? currentPage,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(defaultValue: [], name: 'links')
    @Default([])
        List<PaginationLinks> paginationLinks,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    int? to,
    int? total,
  }) = _PaginatedListWrapperDTO<T>;

  factory PaginatedListWrapperDTO.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$PaginatedListWrapperDTOFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return _$PaginatedListWrapperDTOToJson<T>(this, toJsonT);
  }

  /// Maps the Data Transfer Object to a KtList<DeliveryHistory> Object.
  KtList<U> domain<U>(U Function(T) serializer) =>
      KtList.from(data.map((e) => serializer.call(e)).toList());
}

@freezed
@immutable
@JsonSerializable(genericArgumentFactories: true)
class PaginatedListDTO<T> with _$PaginatedListDTO<T> {
  const PaginatedListDTO._();

  const factory PaginatedListDTO({
    @JsonKey(defaultValue: []) @Default([]) List<T> data,
    PaginationLinks? links,
    MetaField? meta,
  }) = _PaginatedListDTO<T>;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory PaginatedListDTO.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$PaginatedListDTOFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return _$PaginatedListDTOToJson<T>(this, toJsonT);
  }

  /// Maps the Data Transfer Object to a KtList<DeliveryHistory> Object.
  KtList<U> domain<U>(U Function(T) serializer) =>
      KtList.from(data.map((e) => serializer.call(e)).toList());
}
