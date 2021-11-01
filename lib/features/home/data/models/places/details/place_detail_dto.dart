import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/place_entities/index.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'address_component_dto.dart';
import 'geometry_dto.dart';
import 'opening_hours_dto.dart';

part 'place_detail_dto.freezed.dart';
part 'place_detail_dto.g.dart';

@freezed
@immutable
class PlaceDetailDTO with _$PlaceDetailDTO {
  const factory PlaceDetailDTO({
    @JsonKey(name: 'address_components')
    @Default([])
        List<AddressComponentDTO> addressComponents,
    @JsonKey(name: 'formatted_address') String? formattedAddress,
    @JsonKey(name: 'formatted_phone_number') String? formattedPhoneNumber,
    String? icon,
    @JsonKey(name: 'icon_background_color') String? iconBackgroundColor,
    @JsonKey(name: 'icon_mask_base_uri') String? iconMaskBaseUri,
    @JsonKey(name: 'international_phone_number')
        String? internationalPhoneNumber,
    String? name,
    @JsonKey(name: 'place_id') String? placeId,
    @JsonKey(name: 'plus_code') PlusCodeDTO? plusCode,
    String? reference,
    @Default([]) List<String> types,
    String? url,
    String? website,
    GeometryDTO? geometry,
    @JsonKey(name: 'opening_hours') OpeningHoursDTO? openingHours,
    //
    PlaceDetailDTO? result,
    @JsonKey(name: 'results') List<PlaceDetailDTO>? geocodingResults,
    @PlaceStatusSerializer() required PlaceStatus status,
  }) = _PlaceDetailDTO;

  const PlaceDetailDTO._();

  factory PlaceDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailDTOFromJson(json);

  /// Maps the Data Transfer Object to a PlaceDetail Object.
  PlaceDetail get domain => PlaceDetail(
        addressComponents: KtList.from(addressComponents.map((e) => e.domain)),
        formattedAddress: BasicTextField(formattedAddress),
        formattedPhoneNumber: BasicTextField(formattedPhoneNumber),
        icon: BasicTextField(icon),
        iconBackgroundColor: BasicTextField(iconBackgroundColor),
        iconMaskBaseUri: BasicTextField(iconMaskBaseUri),
        internationalPhoneNumber: BasicTextField(internationalPhoneNumber),
        name: BasicTextField(name),
        placeId: BasicTextField(placeId),
        reference: BasicTextField(reference),
        url: BasicTextField(url),
        website: BasicTextField(website),
        types: KtList.from(types.map((e) => BasicTextField(e))),
        geometry: geometry?.domain,
        openingHours: openingHours?.domain,
        plusCode: plusCode?.domain,
      );

  KtList<PlaceDetail?> get geocodes =>
      KtList.from(geocodingResults?.map((e) => e.domain) ?? []);
}

@freezed
@immutable
class PlusCodeDTO with _$PlusCodeDTO {
  const PlusCodeDTO._();

  const factory PlusCodeDTO({
    @JsonKey(name: 'compound_code') String? compoundCode,
    @JsonKey(name: 'global_code') String? globalCode,
  }) = _PlusCodeDTO;

  factory PlusCodeDTO.fromJson(Map<String, dynamic> json) =>
      _$PlusCodeDTOFromJson(json);

  /// Maps the Data Transfer Object to a PlacePlusCode Object.
  PlacePlusCode get domain => PlacePlusCode(
        compoundCode: BasicTextField(compoundCode),
        globalCode: BasicTextField(globalCode),
      );
}
