library meta_field;

import 'package:amatrider/core/data/models/pagination/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_field.g.dart';
part 'meta_field.freezed.dart';

@freezed
@immutable
class MetaField with _$MetaField {
  const MetaField._();

  const factory MetaField({
    @JsonKey(name: 'current_page') int? currentPage,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(defaultValue: []) required List<PaginationLinks> links,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    int? to,
    int? total,
  }) = _MetaField;

  factory MetaField.fromJson(Map<String, dynamic> json) =>
      _$MetaFieldFromJson(json);
}
