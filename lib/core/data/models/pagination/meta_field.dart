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
    @JsonKey(includeIfNull: false, name: 'current_page') int? currentPage,
    @JsonKey(includeIfNull: false) int? from,
    @JsonKey(includeIfNull: false, name: 'last_page') int? lastPage,
    @JsonKey(includeIfNull: false) @Default([]) List<PaginationLinks> links,
    @JsonKey(includeIfNull: false) String? path,
    @JsonKey(includeIfNull: false, name: 'per_page') int? perPage,
    @JsonKey(includeIfNull: false) int? to,
    @JsonKey(includeIfNull: false) int? total,
  }) = _MetaField;

  factory MetaField.fromJson(Map<String, dynamic> json) =>
      _$MetaFieldFromJson(json);
}
