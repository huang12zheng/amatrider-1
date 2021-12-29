// GENERATED CODE - DO NOT MODIFY BY HAND

part of delivery_history_list_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryHistoryListDTO _$$_DeliveryHistoryListDTOFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryHistoryListDTO(
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => DeliveryHistoryDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      links: json['links'] == null
          ? null
          : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeliveryHistoryListDTOToJson(
    _$_DeliveryHistoryListDTO instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('links', instance.links?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  return val;
}
