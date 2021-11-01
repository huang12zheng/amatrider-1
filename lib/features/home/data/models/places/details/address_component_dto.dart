library address_component_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'address_component_dto.g.dart';
part 'address_component_dto.freezed.dart';

@freezed
@immutable
class AddressComponentDTO with _$AddressComponentDTO {
  const AddressComponentDTO._();

  const factory AddressComponentDTO({
    @JsonKey(name: 'long_name') String? longName,
    @JsonKey(name: 'short_name') String? shortName,
    @AddressComponentTypeSerializer()
    @Default([])
        List<AddressComponentType> types,
  }) = _AddressComponentDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory AddressComponentDTO.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentDTOFromJson(json);

  /// Maps the Data Transfer Object to a AddressComponent Object.
  AddressComponent get domain => AddressComponent(
        shortName: BasicTextField(shortName),
        longName: BasicTextField(longName),
        types: KtList.from(types),
      );
}

class AddressComponentTypeSerializer
    implements JsonConverter<AddressComponentType, String?> {
  const AddressComponentTypeSerializer();

  @override
  AddressComponentType fromJson(String? value) =>
      AddressComponentType.valueOf(value ?? '');

  @override
  String? toJson(AddressComponentType instance) => instance.name;
}
