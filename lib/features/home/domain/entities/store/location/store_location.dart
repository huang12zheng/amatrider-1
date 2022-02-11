library store_location.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'store_location.freezed.dart';

@freezed
@immutable
class StoreLocation extends LocationBase with _$StoreLocation implements BaseEntity {
  static final _county = [AddressComponentType.administrative_area_level_1, AddressComponentType.political];

  static final _state = [AddressComponentType.administrative_area_level_1, AddressComponentType.political];

  static AddressComponent? _country(PlaceDetail place) =>
      place.addressComponents.singleOrNull((it) => it.types.contains(AddressComponentType.country));

  static AddressComponent? _locality(PlaceDetail place) =>
      place.addressComponents.singleOrNull((it) => it.types.contains(AddressComponentType.locality));

  static AddressComponent? _nationState(PlaceDetail place) => place.addressComponents
      .filter((p0) => p0.types.containsAll(KtList.from(_state)) || p0.types.containsAll(KtList.from(_county)))
      .firstOrNull();

  static AddressComponent? _postalCode(PlaceDetail place) =>
      place.addressComponents.singleOrNull((it) => it.types.contains(AddressComponentType.postal_code));

  static AddressComponent? _sublocality(PlaceDetail place) =>
      place.addressComponents.singleOrNull((it) => it.types.contains(AddressComponentType.sublocality));

  const factory StoreLocation({
    required UniqueId<String?> id,
    required UniqueId<String?> restaurantId,
    required BasicTextField<double?> lat,
    required BasicTextField<double?> lng,
    required BasicTextField<String?> fullAddress,
    required BasicTextField<String?> city,
    required BasicTextField<String?> state,
    required BasicTextField<String?> country,
    required BasicTextField<String?> street,
    required BasicTextField<String?> zip,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _StoreLocation;

  factory StoreLocation.fromGooglePlace(PlaceDetail place) => StoreLocation(
        id: UniqueId.fromExternal(null),
        restaurantId: UniqueId.fromExternal(null),
        lat: place.geometry?.location?.lat ?? BasicTextField(null),
        lng: place.geometry?.location?.lng ?? BasicTextField(null),
        fullAddress: place.formattedAddress,
        city: _locality(place)?.longName ?? BasicTextField(null),
        state: _nationState(place)?.longName ?? BasicTextField(null),
        country: _country(place)?.longName ?? BasicTextField(null),
        street: _sublocality(place)?.longName ?? BasicTextField(null),
        zip: _postalCode(place)?.longName ?? BasicTextField(null),
      );

  const StoreLocation._();
}
