library pagination_links;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_links.g.dart';
part 'pagination_links.freezed.dart';

@freezed
@immutable
class PaginationLinks with _$PaginationLinks {
  const PaginationLinks._();

  const factory PaginationLinks({
    String? first,
    String? last,
    String? prev,
    String? next,
    String? url,
    String? label,
    @JsonKey(defaultValue: false) required bool active,
  }) = _PaginationLinks;

  factory PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksFromJson(json);
}
