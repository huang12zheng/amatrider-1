// GENERATED CODE - DO NOT MODIFY BY HAND

part of pagination_links;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationLinks _$$_PaginationLinksFromJson(Map<String, dynamic> json) =>
    _$_PaginationLinks(
      first: json['first'] as String?,
      last: json['last'] as String?,
      prev: json['prev'] as String?,
      next: json['next'] as String?,
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PaginationLinksToJson(_$_PaginationLinks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first', instance.first);
  writeNotNull('last', instance.last);
  writeNotNull('prev', instance.prev);
  writeNotNull('next', instance.next);
  writeNotNull('url', instance.url);
  writeNotNull('label', instance.label);
  val['active'] = instance.active;
  return val;
}
