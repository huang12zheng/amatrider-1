// GENERATED CODE - DO NOT MODIFY BY HAND

part of logistics_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogisticsDTO _$$_LogisticsDTOFromJson(Map<String, dynamic> json) =>
    _$_LogisticsDTO(
      order: json['order'] == null
          ? null
          : UserOrderDTO.fromJson(json['order'] as Map<String, dynamic>),
      package: json['package'] == null
          ? null
          : SendPackageDTO.fromJson(json['package'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LogisticsDTOToJson(_$_LogisticsDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('package', instance.package?.toJson());
  return val;
}

_$_LogisticsListDTO _$$_LogisticsListDTOFromJson(Map<String, dynamic> json) =>
    _$_LogisticsListDTO(
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => UserOrderDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      packages: (json['packages'] as List<dynamic>?)
              ?.map((e) => SendPackageDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LogisticsListDTOToJson(_$_LogisticsListDTO instance) =>
    <String, dynamic>{
      'orders': instance.orders.map((e) => e.toJson()).toList(),
      'packages': instance.packages.map((e) => e.toJson()).toList(),
    };
