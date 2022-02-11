// GENERATED CODE - DO NOT MODIFY BY HAND

part of store_location_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreLocationDTO _$$_StoreLocationDTOFromJson(Map<String, dynamic> json) =>
    _$_StoreLocationDTO(
      id: json['id'] as String?,
      restaurantId: json['restaurant_id'] as String?,
      lat: const DoubleSerializer().fromJson(json['lat']),
      lng: const DoubleSerializer().fromJson(json['long']),
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      street: json['street'] as String?,
      zip: const StringSerializer().fromJson(json['zip']),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      deletedAt: const TimestampConverter().fromJson(json['deleted_at']),
    );

Map<String, dynamic> _$$_StoreLocationDTOToJson(_$_StoreLocationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('restaurant_id', instance.restaurantId);
  writeNotNull('lat', const DoubleSerializer().toJson(instance.lat));
  writeNotNull('long', const DoubleSerializer().toJson(instance.lng));
  writeNotNull('address', instance.address);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('country', instance.country);
  writeNotNull('street', instance.street);
  writeNotNull('zip', const StringSerializer().toJson(instance.zip));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
