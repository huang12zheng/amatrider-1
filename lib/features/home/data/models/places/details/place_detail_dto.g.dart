// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceDetailDTO _$$_PlaceDetailDTOFromJson(Map<String, dynamic> json) =>
    _$_PlaceDetailDTO(
      addressComponents: (json['address_components'] as List<dynamic>?)
              ?.map((e) =>
                  AddressComponentDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      formattedAddress: json['formatted_address'] as String?,
      formattedPhoneNumber: json['formatted_phone_number'] as String?,
      icon: json['icon'] as String?,
      iconBackgroundColor: json['icon_background_color'] as String?,
      iconMaskBaseUri: json['icon_mask_base_uri'] as String?,
      internationalPhoneNumber: json['international_phone_number'] as String?,
      name: json['name'] as String?,
      placeId: json['place_id'] as String?,
      plusCode: json['plus_code'] == null
          ? null
          : PlusCodeDTO.fromJson(json['plus_code'] as Map<String, dynamic>),
      reference: json['reference'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      url: json['url'] as String?,
      website: json['website'] as String?,
      geometry: json['geometry'] == null
          ? null
          : GeometryDTO.fromJson(json['geometry'] as Map<String, dynamic>),
      openingHours: json['opening_hours'] == null
          ? null
          : OpeningHoursDTO.fromJson(
              json['opening_hours'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : PlaceDetailDTO.fromJson(json['result'] as Map<String, dynamic>),
      geocodingResults: (json['results'] as List<dynamic>?)
          ?.map((e) => PlaceDetailDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: const PlaceStatusSerializer().fromJson(json['status'] as String?),
    );

Map<String, dynamic> _$$_PlaceDetailDTOToJson(_$_PlaceDetailDTO instance) =>
    <String, dynamic>{
      'address_components': instance.addressComponents,
      'formatted_address': instance.formattedAddress,
      'formatted_phone_number': instance.formattedPhoneNumber,
      'icon': instance.icon,
      'icon_background_color': instance.iconBackgroundColor,
      'icon_mask_base_uri': instance.iconMaskBaseUri,
      'international_phone_number': instance.internationalPhoneNumber,
      'name': instance.name,
      'place_id': instance.placeId,
      'plus_code': instance.plusCode,
      'reference': instance.reference,
      'types': instance.types,
      'url': instance.url,
      'website': instance.website,
      'geometry': instance.geometry,
      'opening_hours': instance.openingHours,
      'result': instance.result,
      'results': instance.geocodingResults,
      'status': const PlaceStatusSerializer().toJson(instance.status),
    };

_$_PlusCodeDTO _$$_PlusCodeDTOFromJson(Map<String, dynamic> json) =>
    _$_PlusCodeDTO(
      compoundCode: json['compound_code'] as String?,
      globalCode: json['global_code'] as String?,
    );

Map<String, dynamic> _$$_PlusCodeDTOToJson(_$_PlusCodeDTO instance) =>
    <String, dynamic>{
      'compound_code': instance.compoundCode,
      'global_code': instance.globalCode,
    };
