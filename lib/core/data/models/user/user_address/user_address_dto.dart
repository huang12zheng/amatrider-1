library user_address_dto.dart;

import 'package:amatrider/core/data/models/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_address_dto.freezed.dart';
part 'user_address_dto.g.dart';

UserAddressDTO deserializeUserAddressDTO(Map<String, dynamic> json) => UserAddressDTO.fromJson(json);
Map<String, dynamic> serializeUserAddressDTO(UserAddressDTO object) => object.toJson();

@freezed
@immutable
class UserAddressDTO with _$UserAddressDTO {
  const UserAddressDTO._();

  const factory UserAddressDTO({
    String? id,
    @DoubleSerializer() double? lat,
    @DoubleSerializer() double? long,
    String? zip,
    CountryDTO? country,
    String? instructions,
    @JsonKey(name: 'country_id') String? countryId,
    String? alias,
    String? apartment,
    String? street,
    String? city,
    String? landmark,
    String? state,
    String? entrance,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? deletedAt,
  }) = _UserAddressDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserAddressDTO.fromJson(Map<String, dynamic> json) => _$UserAddressDTOFromJson(json);

  /// Maps DomainInstance to a Data Transfer Object.
  factory UserAddressDTO.fromDomain(UserAddress? instance) => UserAddressDTO(
        lat: instance?.lat.getOrNull,
        long: instance?.lng.getOrNull,
        zip: instance?.zip.getOrNull,
        countryId: instance?.country?.id?.value,
        country: CountryDTO.fromDomain(instance?.country),
        instructions: instance?.additionalInfo.getOrNull,
        apartment: instance?.apartment.getOrNull,
        street: instance?.street.getOrNull,
        city: instance?.city.getOrNull,
        landmark: instance?.landmark.getOrNull,
        state: instance?.state.getOrNull,
        alias: instance?.alias.getOrNull,
        entrance: instance?.entrance.getOrNull,
      );

  /// Maps the Data Transfer Object to a UserAddress Object.
  UserAddress get domain => UserAddress(
        id: UniqueId.fromExternal(id),
        lat: BasicTextField(lat),
        lng: BasicTextField(long),
        zip: BasicTextField(zip),
        address: BasicTextField(null),
        country: country?.domain,
        additionalInfo: BasicTextField(instructions),
        apartment: BasicTextField(apartment),
        street: BasicTextField(street),
        city: BasicTextField(city),
        landmark: BasicTextField(landmark),
        state: BasicTextField(state),
        alias: BasicTextField(alias),
        entrance: BasicTextField(entrance),
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
