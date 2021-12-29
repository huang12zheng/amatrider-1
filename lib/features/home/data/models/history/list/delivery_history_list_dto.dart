library delivery_history_list_dto.dart;

import 'package:amatrider/core/data/models/pagination/index.dart';
import 'package:amatrider/features/home/data/models/history/index.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'delivery_history_list_dto.g.dart';
part 'delivery_history_list_dto.freezed.dart';

@freezed
@immutable
class DeliveryHistoryListDTO with _$DeliveryHistoryListDTO {
  const DeliveryHistoryListDTO._();

  const factory DeliveryHistoryListDTO({
    @JsonKey(defaultValue: []) @Default([]) List<DeliveryHistoryDTO> data,
    PaginationLinks? links,
    MetaField? meta,
  }) = _DeliveryHistoryListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DeliveryHistoryListDTO.fromJson(Map<String, dynamic> json) =>
      _$DeliveryHistoryListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<DeliveryHistory> Object.
  KtList<DeliveryHistory> get domain =>
      KtList.from(data.map((e) => e.domain).toList());
}
