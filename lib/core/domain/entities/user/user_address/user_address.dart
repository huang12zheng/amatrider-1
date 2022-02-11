library user_address.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_address.freezed.dart';

@freezed
@immutable
class UserAddress extends BaseEntity with _$UserAddress {
  const UserAddress._();

  const factory UserAddress({
    required UniqueId<String?> id,
    required BasicTextField<double?> lat,
    required BasicTextField<double?> lng,
    required BasicTextField<String?> zip,
    Country? country,
    required BasicTextField<String?> alias,
    required BasicTextField<String?> additionalInfo,
    required BasicTextField<String?> apartment,
    required BasicTextField<String?> street,
    required BasicTextField<String?> address,
    required BasicTextField<String?> city,
    required BasicTextField<String?> landmark,
    required BasicTextField<String?> state,
    required BasicTextField<String?> entrance,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _UserAddress;

  BasicTextField<String?> get fullAddress =>
      address.isNotNull((it) => it as BasicTextField<String?>,
          orElse: (_) => BasicTextField('${street.getOrEmpty} ${city.getOrEmpty} ${state.getOrEmpty} ${zip.getOrEmpty}')) ??
      street;

  factory UserAddress.blank({double? lat, double? lng, String? address}) {
    return UserAddress(
      id: UniqueId.fromExternal(null),
      lat: BasicTextField(lat),
      lng: BasicTextField(lng),
      address: BasicTextField(address),
      zip: BasicTextField(null),
      alias: BasicTextField(null),
      additionalInfo: BasicTextField(null, validate: false),
      apartment: BasicTextField(null, validate: false),
      street: BasicTextField(null),
      city: BasicTextField(null),
      landmark: BasicTextField(null, validate: false),
      state: BasicTextField(null),
      entrance: BasicTextField(null, validate: false),
    );
  }

  factory UserAddress.fromStoreLocation(StoreLocation? location) => UserAddress(
        id: location?.id ?? UniqueId.fromExternal(null),
        lat: location?.lat ?? BasicTextField(null),
        lng: location?.lng ?? BasicTextField(null),
        zip: location?.zip ?? BasicTextField(null),
        alias: BasicTextField(null),
        additionalInfo: BasicTextField(null),
        apartment: BasicTextField(null),
        street: location?.street ?? BasicTextField(null),
        address: location?.fullAddress ?? BasicTextField(null),
        city: location?.city ?? BasicTextField(null),
        landmark: BasicTextField(null),
        state: location?.state ?? BasicTextField(null),
        entrance: BasicTextField(null),
      );

  factory UserAddress.fromLocation(RiderLocation location) => UserAddress(
        id: UniqueId.fromExternal(null),
        lat: location.lat,
        lng: location.lng,
        zip: BasicTextField(null),
        alias: BasicTextField(null),
        additionalInfo: BasicTextField(null),
        apartment: BasicTextField(null),
        street: BasicTextField(null),
        address: location.address,
        city: BasicTextField(null),
        landmark: BasicTextField(null),
        state: BasicTextField(null),
        entrance: BasicTextField(null),
      );

  Option<FieldObjectException<dynamic>> get failure => street.mapped
      .andThen(lat.mapped)
      .andThen(lng.mapped)
      .andThen(zip.mapped)
      .andThen(alias.mapped)
      .andThen(city.mapped)
      .andThen(state.mapped)
      .fold((f) => some(f), (_) => none());
}
