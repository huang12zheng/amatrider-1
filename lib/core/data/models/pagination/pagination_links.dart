library pagination_links;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_links.g.dart';
part 'pagination_links.freezed.dart';

@freezed
@immutable
class PaginationLinks with _$PaginationLinks {
  const PaginationLinks._();

  const factory PaginationLinks({
    @JsonKey(includeIfNull: false) String? first,
    @JsonKey(includeIfNull: false) String? last,
    @JsonKey(includeIfNull: false) String? prev,
    @JsonKey(includeIfNull: false) String? next,
    @JsonKey(includeIfNull: false) String? url,
    @JsonKey(includeIfNull: false) String? label,
    @JsonKey(includeIfNull: false) @Default(false) bool active,
  }) = _PaginationLinks;

  factory PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksFromJson(json);
}
