library store_location_dto.dart;

import 'dart:convert';

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:floor/floor.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_location_dto.freezed.dart';
part 'store_location_dto.g.dart';

StoreLocationDTO deserializeStoreLocationDTO(Map<String, dynamic> json) => StoreLocationDTO.fromJson(json);
Map<String, dynamic> serializeStoreLocationDTO(StoreLocationDTO object) => object.toJson();

@freezed
@immutable
class StoreLocationDTO with _$StoreLocationDTO {
  const factory StoreLocationDTO({
    String? id,
    String? restaurantId,
    @DoubleSerializer() double? lat,
    @JsonKey(name: 'long') @DoubleSerializer() double? lng,
    String? address,
    String? city,
    String? state,
    String? country,
    String? street,
    @StringSerializer() String? zip,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? deletedAt,
  }) = _StoreLocationDTO;

  const StoreLocationDTO._();

  /// Maps StoreLocation to a Data Transfer Object.
  factory StoreLocationDTO.fromDomain(StoreLocation? instance) => StoreLocationDTO(
        id: instance?.id.value,
        restaurantId: instance?.restaurantId.value,
        lat: instance?.lat.getOrNull,
        lng: instance?.lng.getOrNull,
        address: instance?.fullAddress.getOrNull,
        city: instance?.city.getOrNull,
        state: instance?.state.getOrNull,
        country: instance?.country.getOrNull,
        street: instance?.street.getOrNull,
        zip: instance?.zip.getOrNull,
        createdAt: instance?.createdAt,
        updatedAt: instance?.updatedAt,
        deletedAt: instance?.deletedAt,
      );

  factory StoreLocationDTO.fromJson(Map<String, dynamic> json) => _$StoreLocationDTOFromJson(json);

  /// Maps the Data Transfer Object to a StoreLocation Object.
  StoreLocation get domain => StoreLocation(
        id: UniqueId.fromExternal(id),
        restaurantId: UniqueId.fromExternal(restaurantId),
        lat: BasicTextField(lat),
        lng: BasicTextField(lng),
        fullAddress: BasicTextField(address),
        city: BasicTextField(city),
        state: BasicTextField(state),
        country: BasicTextField(country),
        street: BasicTextField(street),
        zip: BasicTextField(zip),
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}

class StoreLocationDTOFloorConverter extends TypeConverter<StoreLocationDTO?, String> {
  @override
  StoreLocationDTO? decode(String? databaseValue) => databaseValue?.let((it) {
        final _map = jsonDecode(it) as Map<String, dynamic>?;
        return _map?.let((it) => StoreLocationDTO.fromJson(it));
      });

  @override
  String encode(StoreLocationDTO? value) => jsonEncode(value?.toJson());
}
