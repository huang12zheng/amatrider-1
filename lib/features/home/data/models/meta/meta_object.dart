library meta_object.dart;

import 'package:amatrider/features/home/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_object.g.dart';
part 'meta_object.freezed.dart';

@immutable
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal, maybeMap: false, maybeWhen: false)
class MetaObjectDTO with _$MetaObjectDTO {
  const MetaObjectDTO._();

  @FreezedUnionValue('${MetaType.newPackage}')
  const factory MetaObjectDTO.package(SendPackageDTO package) = _MetaObjectSendPackageDTO;

  @FreezedUnionValue('${MetaType.newOrder}')
  const factory MetaObjectDTO.order(UserOrderDTO order) = _MetaObjectUserOrderDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory MetaObjectDTO.fromJson(Map<String, dynamic> json) => _$MetaObjectDTOFromJson(json);
}
