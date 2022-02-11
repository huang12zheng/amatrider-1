// GENERATED CODE - DO NOT MODIFY BY HAND

part of store_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreDTO _$$_StoreDTOFromJson(Map<String, dynamic> json) => _$_StoreDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      speciality: json['speciality'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      location: json['restaurant_location'] == null
          ? null
          : StoreLocationDTO.fromJson(
              json['restaurant_location'] as Map<String, dynamic>),
      isOpen: const IntToBoolSerializer().fromJson(json['is_open']),
      allowWeekendOrders:
          const IntToBoolSerializer().fromJson(json['allow_weekend_orders']),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      deletedAt: const TimestampConverter().fromJson(json['deleted_at']),
    );

Map<String, dynamic> _$$_StoreDTOToJson(_$_StoreDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('speciality', instance.speciality);
  writeNotNull('phone', instance.phone);
  writeNotNull('image', instance.image);
  writeNotNull('restaurant_location', instance.location?.toJson());
  writeNotNull('is_open', const IntToBoolSerializer().toJson(instance.isOpen));
  writeNotNull('allow_weekend_orders',
      const IntToBoolSerializer().toJson(instance.allowWeekendOrders));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}

_$_StoreListDTO _$$_StoreListDTOFromJson(Map<String, dynamic> json) =>
    _$_StoreListDTO(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => StoreDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      links: json['links'] == null
          ? null
          : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StoreListDTOToJson(_$_StoreListDTO instance) {
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
