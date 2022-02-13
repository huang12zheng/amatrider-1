library meta_field;

import 'package:amatrider/core/data/models/pagination/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_field.g.dart';
part 'meta_field.freezed.dart';

MetaField deserializeMetaField(Map<String, dynamic> json) => MetaField.fromJson(json);
Map<String, dynamic> serializeMetaField(MetaField object) => object.toJson();

@freezed
@immutable
class MetaField with _$MetaField {
  const MetaField._();

  const factory MetaField({
    int? currentPage,
    int? from,
    int? lastPage,
    @Default([]) List<PaginationLinks> links,
    String? path,
    int? perPage,
    int? to,
    int? total,
  }) = _MetaField;

  factory MetaField.fromJson(Map<String, dynamic> json) => _$MetaFieldFromJson(json);

  bool get endOfList => currentPage == lastPage;

  static const blank = MetaField(currentPage: 1, perPage: Const.kPerPage);
}
