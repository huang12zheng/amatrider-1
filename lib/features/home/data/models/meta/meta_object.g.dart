// GENERATED CODE - DO NOT MODIFY BY HAND

part of meta_object.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaObjectSendPackageDTO _$$_MetaObjectSendPackageDTOFromJson(
        Map<String, dynamic> json) =>
    _$_MetaObjectSendPackageDTO(
      SendPackageDTO.fromJson(json['package'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_MetaObjectSendPackageDTOToJson(
        _$_MetaObjectSendPackageDTO instance) =>
    <String, dynamic>{
      'package': instance.package.toJson(),
      'type': instance.$type,
    };

_$_MetaObjectUserOrderDTO _$$_MetaObjectUserOrderDTOFromJson(
        Map<String, dynamic> json) =>
    _$_MetaObjectUserOrderDTO(
      UserOrderDTO.fromJson(json['order'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_MetaObjectUserOrderDTOToJson(
        _$_MetaObjectUserOrderDTO instance) =>
    <String, dynamic>{
      'order': instance.order.toJson(),
      'type': instance.$type,
    };
