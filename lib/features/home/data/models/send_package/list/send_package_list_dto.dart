library send_package_list_dto.dart;

import 'package:amatrider/core/data/models/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'send_package_list_dto.freezed.dart';
part 'send_package_list_dto.g.dart';

@freezed
@immutable
class SendPackageListDTO with _$SendPackageListDTO {
  const SendPackageListDTO._();

  const factory SendPackageListDTO({
    @JsonKey(defaultValue: []) @Default([]) List<SendPackageDTO> data,
    PaginationLinks? links,
    MetaField? meta,
  }) = _SendPackageListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory SendPackageListDTO.fromJson(Map<String, dynamic> json) =>
      _$SendPackageListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<SendPackage> Object.
  KtList<SendPackage> get domain =>
      KtList.from(data.map((e) => e.domain).toList());
}
