// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceDetailDTO _$PlaceDetailDTOFromJson(Map<String, dynamic> json) {
  return _PlaceDetailDTO.fromJson(json);
}

/// @nodoc
class _$PlaceDetailDTOTearOff {
  const _$PlaceDetailDTOTearOff();

  _PlaceDetailDTO call(
      {@JsonKey(name: 'address_components', defaultValue: [])
          List<AddressComponentDTO> addressComponents = const [],
      @JsonKey(name: 'formatted_address')
          String? formattedAddress,
      @JsonKey(name: 'formatted_phone_number')
          String? formattedPhoneNumber,
      String? icon,
      @JsonKey(name: 'icon_background_color')
          String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri')
          String? iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
          String? internationalPhoneNumber,
      String? name,
      @JsonKey(name: 'place_id')
          String? placeId,
      @JsonKey(name: 'plus_code')
          PlusCodeDTO? plusCode,
      String? reference,
      @JsonKey(defaultValue: [])
          List<String> types = const [],
      String? url,
      String? website,
      GeometryDTO? geometry,
      @JsonKey(name: 'opening_hours')
          OpeningHoursDTO? openingHours,
      PlaceDetailDTO? result,
      @JsonKey(name: 'results')
          List<PlaceDetailDTO>? geocodingResults,
      @PlaceStatusSerializer()
          required PlaceStatus status}) {
    return _PlaceDetailDTO(
      addressComponents: addressComponents,
      formattedAddress: formattedAddress,
      formattedPhoneNumber: formattedPhoneNumber,
      icon: icon,
      iconBackgroundColor: iconBackgroundColor,
      iconMaskBaseUri: iconMaskBaseUri,
      internationalPhoneNumber: internationalPhoneNumber,
      name: name,
      placeId: placeId,
      plusCode: plusCode,
      reference: reference,
      types: types,
      url: url,
      website: website,
      geometry: geometry,
      openingHours: openingHours,
      result: result,
      geocodingResults: geocodingResults,
      status: status,
    );
  }

  PlaceDetailDTO fromJson(Map<String, Object?> json) {
    return PlaceDetailDTO.fromJson(json);
  }
}

/// @nodoc
const $PlaceDetailDTO = _$PlaceDetailDTOTearOff();

/// @nodoc
mixin _$PlaceDetailDTO {
  @JsonKey(name: 'address_components', defaultValue: [])
  List<AddressComponentDTO> get addressComponents =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_address')
  String? get formattedAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_phone_number')
  String? get formattedPhoneNumber => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_background_color')
  String? get iconBackgroundColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_mask_base_uri')
  String? get iconMaskBaseUri => throw _privateConstructorUsedError;
  @JsonKey(name: 'international_phone_number')
  String? get internationalPhoneNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'plus_code')
  PlusCodeDTO? get plusCode => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get types => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  GeometryDTO? get geometry => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_hours')
  OpeningHoursDTO? get openingHours => throw _privateConstructorUsedError; //
  PlaceDetailDTO? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<PlaceDetailDTO>? get geocodingResults =>
      throw _privateConstructorUsedError;
  @PlaceStatusSerializer()
  PlaceStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDetailDTOCopyWith<PlaceDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailDTOCopyWith<$Res> {
  factory $PlaceDetailDTOCopyWith(
          PlaceDetailDTO value, $Res Function(PlaceDetailDTO) then) =
      _$PlaceDetailDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'address_components', defaultValue: [])
          List<AddressComponentDTO> addressComponents,
      @JsonKey(name: 'formatted_address')
          String? formattedAddress,
      @JsonKey(name: 'formatted_phone_number')
          String? formattedPhoneNumber,
      String? icon,
      @JsonKey(name: 'icon_background_color')
          String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri')
          String? iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
          String? internationalPhoneNumber,
      String? name,
      @JsonKey(name: 'place_id')
          String? placeId,
      @JsonKey(name: 'plus_code')
          PlusCodeDTO? plusCode,
      String? reference,
      @JsonKey(defaultValue: [])
          List<String> types,
      String? url,
      String? website,
      GeometryDTO? geometry,
      @JsonKey(name: 'opening_hours')
          OpeningHoursDTO? openingHours,
      PlaceDetailDTO? result,
      @JsonKey(name: 'results')
          List<PlaceDetailDTO>? geocodingResults,
      @PlaceStatusSerializer()
          PlaceStatus status});

  $PlusCodeDTOCopyWith<$Res>? get plusCode;
  $GeometryDTOCopyWith<$Res>? get geometry;
  $OpeningHoursDTOCopyWith<$Res>? get openingHours;
  $PlaceDetailDTOCopyWith<$Res>? get result;
}

/// @nodoc
class _$PlaceDetailDTOCopyWithImpl<$Res>
    implements $PlaceDetailDTOCopyWith<$Res> {
  _$PlaceDetailDTOCopyWithImpl(this._value, this._then);

  final PlaceDetailDTO _value;
  // ignore: unused_field
  final $Res Function(PlaceDetailDTO) _then;

  @override
  $Res call({
    Object? addressComponents = freezed,
    Object? formattedAddress = freezed,
    Object? formattedPhoneNumber = freezed,
    Object? icon = freezed,
    Object? iconBackgroundColor = freezed,
    Object? iconMaskBaseUri = freezed,
    Object? internationalPhoneNumber = freezed,
    Object? name = freezed,
    Object? placeId = freezed,
    Object? plusCode = freezed,
    Object? reference = freezed,
    Object? types = freezed,
    Object? url = freezed,
    Object? website = freezed,
    Object? geometry = freezed,
    Object? openingHours = freezed,
    Object? result = freezed,
    Object? geocodingResults = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      addressComponents: addressComponents == freezed
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponentDTO>,
      formattedAddress: formattedAddress == freezed
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedPhoneNumber: formattedPhoneNumber == freezed
          ? _value.formattedPhoneNumber
          : formattedPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackgroundColor: iconBackgroundColor == freezed
          ? _value.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconMaskBaseUri: iconMaskBaseUri == freezed
          ? _value.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalPhoneNumber: internationalPhoneNumber == freezed
          ? _value.internationalPhoneNumber
          : internationalPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      plusCode: plusCode == freezed
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCodeDTO?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as GeometryDTO?,
      openingHours: openingHours == freezed
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHoursDTO?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PlaceDetailDTO?,
      geocodingResults: geocodingResults == freezed
          ? _value.geocodingResults
          : geocodingResults // ignore: cast_nullable_to_non_nullable
              as List<PlaceDetailDTO>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
    ));
  }

  @override
  $PlusCodeDTOCopyWith<$Res>? get plusCode {
    if (_value.plusCode == null) {
      return null;
    }

    return $PlusCodeDTOCopyWith<$Res>(_value.plusCode!, (value) {
      return _then(_value.copyWith(plusCode: value));
    });
  }

  @override
  $GeometryDTOCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryDTOCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }

  @override
  $OpeningHoursDTOCopyWith<$Res>? get openingHours {
    if (_value.openingHours == null) {
      return null;
    }

    return $OpeningHoursDTOCopyWith<$Res>(_value.openingHours!, (value) {
      return _then(_value.copyWith(openingHours: value));
    });
  }

  @override
  $PlaceDetailDTOCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $PlaceDetailDTOCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceDetailDTOCopyWith<$Res>
    implements $PlaceDetailDTOCopyWith<$Res> {
  factory _$PlaceDetailDTOCopyWith(
          _PlaceDetailDTO value, $Res Function(_PlaceDetailDTO) then) =
      __$PlaceDetailDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'address_components', defaultValue: [])
          List<AddressComponentDTO> addressComponents,
      @JsonKey(name: 'formatted_address')
          String? formattedAddress,
      @JsonKey(name: 'formatted_phone_number')
          String? formattedPhoneNumber,
      String? icon,
      @JsonKey(name: 'icon_background_color')
          String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri')
          String? iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
          String? internationalPhoneNumber,
      String? name,
      @JsonKey(name: 'place_id')
          String? placeId,
      @JsonKey(name: 'plus_code')
          PlusCodeDTO? plusCode,
      String? reference,
      @JsonKey(defaultValue: [])
          List<String> types,
      String? url,
      String? website,
      GeometryDTO? geometry,
      @JsonKey(name: 'opening_hours')
          OpeningHoursDTO? openingHours,
      PlaceDetailDTO? result,
      @JsonKey(name: 'results')
          List<PlaceDetailDTO>? geocodingResults,
      @PlaceStatusSerializer()
          PlaceStatus status});

  @override
  $PlusCodeDTOCopyWith<$Res>? get plusCode;
  @override
  $GeometryDTOCopyWith<$Res>? get geometry;
  @override
  $OpeningHoursDTOCopyWith<$Res>? get openingHours;
  @override
  $PlaceDetailDTOCopyWith<$Res>? get result;
}

/// @nodoc
class __$PlaceDetailDTOCopyWithImpl<$Res>
    extends _$PlaceDetailDTOCopyWithImpl<$Res>
    implements _$PlaceDetailDTOCopyWith<$Res> {
  __$PlaceDetailDTOCopyWithImpl(
      _PlaceDetailDTO _value, $Res Function(_PlaceDetailDTO) _then)
      : super(_value, (v) => _then(v as _PlaceDetailDTO));

  @override
  _PlaceDetailDTO get _value => super._value as _PlaceDetailDTO;

  @override
  $Res call({
    Object? addressComponents = freezed,
    Object? formattedAddress = freezed,
    Object? formattedPhoneNumber = freezed,
    Object? icon = freezed,
    Object? iconBackgroundColor = freezed,
    Object? iconMaskBaseUri = freezed,
    Object? internationalPhoneNumber = freezed,
    Object? name = freezed,
    Object? placeId = freezed,
    Object? plusCode = freezed,
    Object? reference = freezed,
    Object? types = freezed,
    Object? url = freezed,
    Object? website = freezed,
    Object? geometry = freezed,
    Object? openingHours = freezed,
    Object? result = freezed,
    Object? geocodingResults = freezed,
    Object? status = freezed,
  }) {
    return _then(_PlaceDetailDTO(
      addressComponents: addressComponents == freezed
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponentDTO>,
      formattedAddress: formattedAddress == freezed
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedPhoneNumber: formattedPhoneNumber == freezed
          ? _value.formattedPhoneNumber
          : formattedPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackgroundColor: iconBackgroundColor == freezed
          ? _value.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconMaskBaseUri: iconMaskBaseUri == freezed
          ? _value.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalPhoneNumber: internationalPhoneNumber == freezed
          ? _value.internationalPhoneNumber
          : internationalPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      plusCode: plusCode == freezed
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCodeDTO?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as GeometryDTO?,
      openingHours: openingHours == freezed
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHoursDTO?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PlaceDetailDTO?,
      geocodingResults: geocodingResults == freezed
          ? _value.geocodingResults
          : geocodingResults // ignore: cast_nullable_to_non_nullable
              as List<PlaceDetailDTO>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceDetailDTO extends _PlaceDetailDTO with DiagnosticableTreeMixin {
  const _$_PlaceDetailDTO(
      {@JsonKey(name: 'address_components', defaultValue: [])
          this.addressComponents = const [],
      @JsonKey(name: 'formatted_address')
          this.formattedAddress,
      @JsonKey(name: 'formatted_phone_number')
          this.formattedPhoneNumber,
      this.icon,
      @JsonKey(name: 'icon_background_color')
          this.iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri')
          this.iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
          this.internationalPhoneNumber,
      this.name,
      @JsonKey(name: 'place_id')
          this.placeId,
      @JsonKey(name: 'plus_code')
          this.plusCode,
      this.reference,
      @JsonKey(defaultValue: [])
          this.types = const [],
      this.url,
      this.website,
      this.geometry,
      @JsonKey(name: 'opening_hours')
          this.openingHours,
      this.result,
      @JsonKey(name: 'results')
          this.geocodingResults,
      @PlaceStatusSerializer()
          required this.status})
      : super._();

  factory _$_PlaceDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceDetailDTOFromJson(json);

  @override
  @JsonKey(name: 'address_components', defaultValue: [])
  final List<AddressComponentDTO> addressComponents;
  @override
  @JsonKey(name: 'formatted_address')
  final String? formattedAddress;
  @override
  @JsonKey(name: 'formatted_phone_number')
  final String? formattedPhoneNumber;
  @override
  final String? icon;
  @override
  @JsonKey(name: 'icon_background_color')
  final String? iconBackgroundColor;
  @override
  @JsonKey(name: 'icon_mask_base_uri')
  final String? iconMaskBaseUri;
  @override
  @JsonKey(name: 'international_phone_number')
  final String? internationalPhoneNumber;
  @override
  final String? name;
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  @JsonKey(name: 'plus_code')
  final PlusCodeDTO? plusCode;
  @override
  final String? reference;
  @override
  @JsonKey(defaultValue: [])
  final List<String> types;
  @override
  final String? url;
  @override
  final String? website;
  @override
  final GeometryDTO? geometry;
  @override
  @JsonKey(name: 'opening_hours')
  final OpeningHoursDTO? openingHours;
  @override //
  final PlaceDetailDTO? result;
  @override
  @JsonKey(name: 'results')
  final List<PlaceDetailDTO>? geocodingResults;
  @override
  @PlaceStatusSerializer()
  final PlaceStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceDetailDTO(addressComponents: $addressComponents, formattedAddress: $formattedAddress, formattedPhoneNumber: $formattedPhoneNumber, icon: $icon, iconBackgroundColor: $iconBackgroundColor, iconMaskBaseUri: $iconMaskBaseUri, internationalPhoneNumber: $internationalPhoneNumber, name: $name, placeId: $placeId, plusCode: $plusCode, reference: $reference, types: $types, url: $url, website: $website, geometry: $geometry, openingHours: $openingHours, result: $result, geocodingResults: $geocodingResults, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceDetailDTO'))
      ..add(DiagnosticsProperty('addressComponents', addressComponents))
      ..add(DiagnosticsProperty('formattedAddress', formattedAddress))
      ..add(DiagnosticsProperty('formattedPhoneNumber', formattedPhoneNumber))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('iconBackgroundColor', iconBackgroundColor))
      ..add(DiagnosticsProperty('iconMaskBaseUri', iconMaskBaseUri))
      ..add(DiagnosticsProperty(
          'internationalPhoneNumber', internationalPhoneNumber))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('placeId', placeId))
      ..add(DiagnosticsProperty('plusCode', plusCode))
      ..add(DiagnosticsProperty('reference', reference))
      ..add(DiagnosticsProperty('types', types))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('website', website))
      ..add(DiagnosticsProperty('geometry', geometry))
      ..add(DiagnosticsProperty('openingHours', openingHours))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('geocodingResults', geocodingResults))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDetailDTO &&
            const DeepCollectionEquality()
                .equals(other.addressComponents, addressComponents) &&
            const DeepCollectionEquality()
                .equals(other.formattedAddress, formattedAddress) &&
            const DeepCollectionEquality()
                .equals(other.formattedPhoneNumber, formattedPhoneNumber) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality()
                .equals(other.iconBackgroundColor, iconBackgroundColor) &&
            const DeepCollectionEquality()
                .equals(other.iconMaskBaseUri, iconMaskBaseUri) &&
            const DeepCollectionEquality().equals(
                other.internationalPhoneNumber, internationalPhoneNumber) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.plusCode, plusCode) &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.geometry, geometry) &&
            const DeepCollectionEquality()
                .equals(other.openingHours, openingHours) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality()
                .equals(other.geocodingResults, geocodingResults) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(addressComponents),
        const DeepCollectionEquality().hash(formattedAddress),
        const DeepCollectionEquality().hash(formattedPhoneNumber),
        const DeepCollectionEquality().hash(icon),
        const DeepCollectionEquality().hash(iconBackgroundColor),
        const DeepCollectionEquality().hash(iconMaskBaseUri),
        const DeepCollectionEquality().hash(internationalPhoneNumber),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(placeId),
        const DeepCollectionEquality().hash(plusCode),
        const DeepCollectionEquality().hash(reference),
        const DeepCollectionEquality().hash(types),
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(website),
        const DeepCollectionEquality().hash(geometry),
        const DeepCollectionEquality().hash(openingHours),
        const DeepCollectionEquality().hash(result),
        const DeepCollectionEquality().hash(geocodingResults),
        const DeepCollectionEquality().hash(status)
      ]);

  @JsonKey(ignore: true)
  @override
  _$PlaceDetailDTOCopyWith<_PlaceDetailDTO> get copyWith =>
      __$PlaceDetailDTOCopyWithImpl<_PlaceDetailDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceDetailDTOToJson(this);
  }
}

abstract class _PlaceDetailDTO extends PlaceDetailDTO {
  const factory _PlaceDetailDTO(
      {@JsonKey(name: 'address_components', defaultValue: [])
          List<AddressComponentDTO> addressComponents,
      @JsonKey(name: 'formatted_address')
          String? formattedAddress,
      @JsonKey(name: 'formatted_phone_number')
          String? formattedPhoneNumber,
      String? icon,
      @JsonKey(name: 'icon_background_color')
          String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri')
          String? iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
          String? internationalPhoneNumber,
      String? name,
      @JsonKey(name: 'place_id')
          String? placeId,
      @JsonKey(name: 'plus_code')
          PlusCodeDTO? plusCode,
      String? reference,
      @JsonKey(defaultValue: [])
          List<String> types,
      String? url,
      String? website,
      GeometryDTO? geometry,
      @JsonKey(name: 'opening_hours')
          OpeningHoursDTO? openingHours,
      PlaceDetailDTO? result,
      @JsonKey(name: 'results')
          List<PlaceDetailDTO>? geocodingResults,
      @PlaceStatusSerializer()
          required PlaceStatus status}) = _$_PlaceDetailDTO;
  const _PlaceDetailDTO._() : super._();

  factory _PlaceDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_PlaceDetailDTO.fromJson;

  @override
  @JsonKey(name: 'address_components', defaultValue: [])
  List<AddressComponentDTO> get addressComponents;
  @override
  @JsonKey(name: 'formatted_address')
  String? get formattedAddress;
  @override
  @JsonKey(name: 'formatted_phone_number')
  String? get formattedPhoneNumber;
  @override
  String? get icon;
  @override
  @JsonKey(name: 'icon_background_color')
  String? get iconBackgroundColor;
  @override
  @JsonKey(name: 'icon_mask_base_uri')
  String? get iconMaskBaseUri;
  @override
  @JsonKey(name: 'international_phone_number')
  String? get internationalPhoneNumber;
  @override
  String? get name;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  @JsonKey(name: 'plus_code')
  PlusCodeDTO? get plusCode;
  @override
  String? get reference;
  @override
  @JsonKey(defaultValue: [])
  List<String> get types;
  @override
  String? get url;
  @override
  String? get website;
  @override
  GeometryDTO? get geometry;
  @override
  @JsonKey(name: 'opening_hours')
  OpeningHoursDTO? get openingHours;
  @override //
  PlaceDetailDTO? get result;
  @override
  @JsonKey(name: 'results')
  List<PlaceDetailDTO>? get geocodingResults;
  @override
  @PlaceStatusSerializer()
  PlaceStatus get status;
  @override
  @JsonKey(ignore: true)
  _$PlaceDetailDTOCopyWith<_PlaceDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

PlusCodeDTO _$PlusCodeDTOFromJson(Map<String, dynamic> json) {
  return _PlusCodeDTO.fromJson(json);
}

/// @nodoc
class _$PlusCodeDTOTearOff {
  const _$PlusCodeDTOTearOff();

  _PlusCodeDTO call(
      {@JsonKey(name: 'compound_code') String? compoundCode,
      @JsonKey(name: 'global_code') String? globalCode}) {
    return _PlusCodeDTO(
      compoundCode: compoundCode,
      globalCode: globalCode,
    );
  }

  PlusCodeDTO fromJson(Map<String, Object?> json) {
    return PlusCodeDTO.fromJson(json);
  }
}

/// @nodoc
const $PlusCodeDTO = _$PlusCodeDTOTearOff();

/// @nodoc
mixin _$PlusCodeDTO {
  @JsonKey(name: 'compound_code')
  String? get compoundCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'global_code')
  String? get globalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlusCodeDTOCopyWith<PlusCodeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlusCodeDTOCopyWith<$Res> {
  factory $PlusCodeDTOCopyWith(
          PlusCodeDTO value, $Res Function(PlusCodeDTO) then) =
      _$PlusCodeDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'compound_code') String? compoundCode,
      @JsonKey(name: 'global_code') String? globalCode});
}

/// @nodoc
class _$PlusCodeDTOCopyWithImpl<$Res> implements $PlusCodeDTOCopyWith<$Res> {
  _$PlusCodeDTOCopyWithImpl(this._value, this._then);

  final PlusCodeDTO _value;
  // ignore: unused_field
  final $Res Function(PlusCodeDTO) _then;

  @override
  $Res call({
    Object? compoundCode = freezed,
    Object? globalCode = freezed,
  }) {
    return _then(_value.copyWith(
      compoundCode: compoundCode == freezed
          ? _value.compoundCode
          : compoundCode // ignore: cast_nullable_to_non_nullable
              as String?,
      globalCode: globalCode == freezed
          ? _value.globalCode
          : globalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PlusCodeDTOCopyWith<$Res>
    implements $PlusCodeDTOCopyWith<$Res> {
  factory _$PlusCodeDTOCopyWith(
          _PlusCodeDTO value, $Res Function(_PlusCodeDTO) then) =
      __$PlusCodeDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'compound_code') String? compoundCode,
      @JsonKey(name: 'global_code') String? globalCode});
}

/// @nodoc
class __$PlusCodeDTOCopyWithImpl<$Res> extends _$PlusCodeDTOCopyWithImpl<$Res>
    implements _$PlusCodeDTOCopyWith<$Res> {
  __$PlusCodeDTOCopyWithImpl(
      _PlusCodeDTO _value, $Res Function(_PlusCodeDTO) _then)
      : super(_value, (v) => _then(v as _PlusCodeDTO));

  @override
  _PlusCodeDTO get _value => super._value as _PlusCodeDTO;

  @override
  $Res call({
    Object? compoundCode = freezed,
    Object? globalCode = freezed,
  }) {
    return _then(_PlusCodeDTO(
      compoundCode: compoundCode == freezed
          ? _value.compoundCode
          : compoundCode // ignore: cast_nullable_to_non_nullable
              as String?,
      globalCode: globalCode == freezed
          ? _value.globalCode
          : globalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlusCodeDTO extends _PlusCodeDTO with DiagnosticableTreeMixin {
  const _$_PlusCodeDTO(
      {@JsonKey(name: 'compound_code') this.compoundCode,
      @JsonKey(name: 'global_code') this.globalCode})
      : super._();

  factory _$_PlusCodeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PlusCodeDTOFromJson(json);

  @override
  @JsonKey(name: 'compound_code')
  final String? compoundCode;
  @override
  @JsonKey(name: 'global_code')
  final String? globalCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlusCodeDTO(compoundCode: $compoundCode, globalCode: $globalCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlusCodeDTO'))
      ..add(DiagnosticsProperty('compoundCode', compoundCode))
      ..add(DiagnosticsProperty('globalCode', globalCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlusCodeDTO &&
            const DeepCollectionEquality()
                .equals(other.compoundCode, compoundCode) &&
            const DeepCollectionEquality()
                .equals(other.globalCode, globalCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(compoundCode),
      const DeepCollectionEquality().hash(globalCode));

  @JsonKey(ignore: true)
  @override
  _$PlusCodeDTOCopyWith<_PlusCodeDTO> get copyWith =>
      __$PlusCodeDTOCopyWithImpl<_PlusCodeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlusCodeDTOToJson(this);
  }
}

abstract class _PlusCodeDTO extends PlusCodeDTO {
  const factory _PlusCodeDTO(
      {@JsonKey(name: 'compound_code') String? compoundCode,
      @JsonKey(name: 'global_code') String? globalCode}) = _$_PlusCodeDTO;
  const _PlusCodeDTO._() : super._();

  factory _PlusCodeDTO.fromJson(Map<String, dynamic> json) =
      _$_PlusCodeDTO.fromJson;

  @override
  @JsonKey(name: 'compound_code')
  String? get compoundCode;
  @override
  @JsonKey(name: 'global_code')
  String? get globalCode;
  @override
  @JsonKey(ignore: true)
  _$PlusCodeDTOCopyWith<_PlusCodeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
