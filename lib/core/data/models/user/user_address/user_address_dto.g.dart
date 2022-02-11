// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_address_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAddressDTO _$$_UserAddressDTOFromJson(Map<String, dynamic> json) =>
    _$_UserAddressDTO(
      id: json['id'] as String?,
      lat: const DoubleSerializer().fromJson(json['lat']),
      long: const DoubleSerializer().fromJson(json['long']),
      zip: json['zip'] as String?,
      country: json['country'] == null
          ? null
          : CountryDTO.fromJson(json['country'] as Map<String, dynamic>),
      instructions: json['instructions'] as String?,
      countryId: json['country_id'] as String?,
      alias: json['alias'] as String?,
      apartment: json['apartment'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      landmark: json['landmark'] as String?,
      state: json['state'] as String?,
      entrance: json['entrance'] as String?,
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      deletedAt: const TimestampConverter().fromJson(json['deleted_at']),
    );

Map<String, dynamic> _$$_UserAddressDTOToJson(_$_UserAddressDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('lat', const DoubleSerializer().toJson(instance.lat));
  writeNotNull('long', const DoubleSerializer().toJson(instance.long));
  writeNotNull('zip', instance.zip);
  writeNotNull('country', instance.country?.toJson());
  writeNotNull('instructions', instance.instructions);
  writeNotNull('country_id', instance.countryId);
  writeNotNull('alias', instance.alias);
  writeNotNull('apartment', instance.apartment);
  writeNotNull('street', instance.street);
  writeNotNull('city', instance.city);
  writeNotNull('landmark', instance.landmark);
  writeNotNull('state', instance.state);
  writeNotNull('entrance', instance.entrance);
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
