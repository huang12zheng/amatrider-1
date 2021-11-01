library address_component.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'address_component.freezed.dart';
part 'address_component.g.dart';

@freezed
@immutable
class AddressComponent with _$AddressComponent {
  const AddressComponent._();

  const factory AddressComponent({
    required BasicTextField<String?> longName,
    required BasicTextField<String?> shortName,
    @Default(KtList.empty()) KtList<AddressComponentType> types,
  }) = _AddressComponent;
}

class AddressComponentType extends EnumClass {
  static const AddressComponentType administrative_area_level_1 =
      _$administrative_area_level_1;
  static const AddressComponentType administrative_area_level_2 =
      _$administrative_area_level_2;
  static const AddressComponentType administrative_area_level_3 =
      _$administrative_area_level_3;
  static const AddressComponentType administrative_area_level_4 =
      _$administrative_area_level_4;
  static const AddressComponentType administrative_area_level_5 =
      _$administrative_area_level_5;
  static const AddressComponentType country = _$country;
  static const AddressComponentType geocode = _$geocode;
  static const AddressComponentType landmark = _$landmark;
  static const AddressComponentType locality = _$locality;
  static const AddressComponentType plus_code = _$plus_code;
  static const AddressComponentType point_of_interest = _$point_of_interest;
  static const AddressComponentType political = _$political;
  static const AddressComponentType postal_town = _$postal_town;
  static const AddressComponentType postal_code = _$postal_code;
  static const AddressComponentType route = _$route;
  static const AddressComponentType street_number = _$street_number;
  static const AddressComponentType street_address = _$street_address;
  static const AddressComponentType sublocality = _$sublocality;
  static const AddressComponentType town_square = _$town_square;
  static const AddressComponentType neighborhood = _$neighborhood;
  static const AddressComponentType sublocality_level_1 = _$sublocality_level_1;
  static const AddressComponentType sublocality_level_2 = _$sublocality_level_2;
  static const AddressComponentType sublocality_level_3 = _$sublocality_level_3;
  static const AddressComponentType sublocality_level_4 = _$sublocality_level_4;
  static const AddressComponentType sublocality_level_5 = _$sublocality_level_5;
  @BuiltValueEnumConst(fallback: true)
  static const AddressComponentType unspecified = _$unspecified;

  const AddressComponentType._(String name) : super(name);

  static BuiltSet<AddressComponentType> get values => _$values;

  static KtList<AddressComponentType> get list =>
      KtList.from(values.toBuiltList().toList());

  static AddressComponentType valueOf(String name) => _$valueOf(name);
}
