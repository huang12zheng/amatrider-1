library logistics_dto.dart;

import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'logistics_dto.g.dart';
part 'logistics_dto.freezed.dart';

LogisticsDTO deserializeLogisticsDTO(Map<String, dynamic> json) => LogisticsDTO.fromJson(json);
Map<String, dynamic> serializeLogisticsDTO(LogisticsDTO object) => object.toJson();

@freezed
@immutable
class LogisticsDTO with _$LogisticsDTO {
  const LogisticsDTO._();

  const factory LogisticsDTO({
    UserOrderDTO? order,
    SendPackageDTO? package,
  }) = _LogisticsDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory LogisticsDTO.fromJson(Map<String, dynamic> json) => _$LogisticsDTOFromJson(json);

  Logistics? get deliverable =>
      (order?.id != null ? userOrder : order?.orderData?.domain) ?? (package?.id != null ? sendPackage : package?.packageData?.domain);

  /// Maps the Data Transfer Object to a SendPackage Object.
  SendPackage? get sendPackage => package?.domain;

  /// Maps the Data Transfer Object to a UserOrder Object.
  UserOrder? get userOrder => order?.domain;
}

LogisticsListDTO deserializeLogisticsListDTO(Map<String, dynamic> json) => LogisticsListDTO.fromJson(json);
Map<String, dynamic> serializeLogisticsListDTO(LogisticsListDTO object) => object.toJson();

@freezed
@immutable
class LogisticsListDTO with _$LogisticsListDTO {
  const LogisticsListDTO._();

  const factory LogisticsListDTO({
    @Default([]) List<UserOrderDTO> orders,
    @Default([]) List<SendPackageDTO> packages,
    @JsonKey(name: 'potential') @Default([]) List<UserOrderDTO> potentialOrders,
  }) = _LogisticsListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory LogisticsListDTO.fromJson(Map<String, dynamic> json) => _$LogisticsListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<DomainEntity> Object.
  KtList<Logistics> get domain => KtList.from([
        ...orders.map((e) => e.domain),
        ...packages.map((e) => e.domain),
      ]);

  /// Maps the Data Transfer Object to a KtList<DomainEntity> Object.
  KtList<Logistics> get potential => KtList.from(potentialOrders.map((e) => e.domain));
}
