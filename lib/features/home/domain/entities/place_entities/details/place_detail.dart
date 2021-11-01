import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'place_detail.freezed.dart';

@freezed
@immutable
class PlaceDetail with _$PlaceDetail {
  const factory PlaceDetail({
    @Default(KtList.empty()) KtList<AddressComponent> addressComponents,
    required BasicTextField<String?> formattedAddress,
    required BasicTextField<String?> formattedPhoneNumber,
    required BasicTextField<String?> icon,
    required BasicTextField<String?> iconBackgroundColor,
    required BasicTextField<String?> iconMaskBaseUri,
    required BasicTextField<String?> internationalPhoneNumber,
    required BasicTextField<String?> name,
    required BasicTextField<String?> placeId,
    required BasicTextField<String?> reference,
    @Default(KtList.empty()) KtList<BasicTextField<String?>?> types,
    required BasicTextField<String?> url,
    required BasicTextField<String?> website,
    PlacePlusCode? plusCode,
    PlaceGeometry? geometry,
    PlaceOpeningHours? openingHours,
  }) = _PlaceDetail;

  const PlaceDetail._();
}

@freezed
@immutable
class PlacePlusCode with _$PlacePlusCode {
  const factory PlacePlusCode({
    BasicTextField<String?>? compoundCode,
    BasicTextField<String?>? globalCode,
  }) = _PlacePlusCode;
}
