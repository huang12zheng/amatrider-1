library user_address.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_address.freezed.dart';

@freezed
@immutable
class UserAddress with _$UserAddress {
  const UserAddress._();

  const factory UserAddress({
    required UniqueId<String?> id,
    required BasicTextField<double?> latitude,
    required BasicTextField<double?> longitude,
    required BasicTextField<String?> zip,
    Country? country,
    @Default(false) bool isPrimary,
    required BasicTextField<String?> alias,
    required BasicTextField<String?> additionalInfo,
    required BasicTextField<String?> apartment,
    required BasicTextField<String?> street,
    required BasicTextField<String?> city,
    required BasicTextField<String?> landmark,
    required BasicTextField<String?> state,
    required BasicTextField<String?> entrance,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserAddress;

  factory UserAddress.blank() {
    return UserAddress(
      id: UniqueId.fromExternal(null),
      latitude: BasicTextField(null),
      longitude: BasicTextField(null),
      zip: BasicTextField(null),
      alias: BasicTextField(null),
      additionalInfo: BasicTextField(null),
      apartment: BasicTextField(null),
      street: BasicTextField(null),
      city: BasicTextField(null),
      landmark: BasicTextField(null),
      state: BasicTextField(null),
      entrance: BasicTextField(null),
    );
  }

  Option<FieldObjectException<dynamic>> get failure => street.mapped
      .andThen(latitude.mapped)
      .andThen(longitude.mapped)
      .andThen(zip.mapped)
      .andThen(alias.mapped)
      .andThen(city.mapped)
      .andThen(state.mapped)
      .fold((f) => some(f), (_) => none());
}
