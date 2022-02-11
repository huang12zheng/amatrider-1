library store_dto.dart;

import 'package:amatrider/core/data/models/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'store_dto.g.dart';
part 'store_dto.freezed.dart';

StoreDTO deserializeStoreDTO(Map<String, dynamic> json) => StoreDTO.fromJson(json);
Map<String, dynamic> serializeStoreDTO(StoreDTO object) => object.toJson();

@freezed
@immutable
class StoreDTO with _$StoreDTO {
  const factory StoreDTO({
    String? id,
    String? name,
    String? speciality,
    String? phone,
    String? image,
    @JsonKey(name: 'restaurant_location') StoreLocationDTO? location,
    @JsonKey(name: 'is_open') @IntToBoolSerializer() bool? isOpen,
    @JsonKey(name: 'allow_weekend_orders') @IntToBoolSerializer() bool? allowWeekendOrders,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? deletedAt,
  }) = _StoreDTO;

  const StoreDTO._();

  factory StoreDTO.fromJson(Map<String, dynamic> json) => _$StoreDTOFromJson(json);

  /// Maps the Data Transfer Object to a Store Object.
  Store get domain => Store(
        id: UniqueId.fromExternal(id),
        name: BasicTextField(name),
        speciality: BasicTextField(speciality),
        phone: BasicTextField(phone),
        location: location?.domain,
        isStoreOpen: isOpen!,
        allowWeekendOrders: allowWeekendOrders!,
        image: MediaField(image),
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}

StoreListDTO deserializeStoreListDTO(Map<String, dynamic> json) => StoreListDTO.fromJson(json);
Map<String, dynamic> serializeStoreListDTO(StoreListDTO object) => object.toJson();

@freezed
@immutable
class StoreListDTO with _$StoreListDTO {
  const factory StoreListDTO({
    @Default([]) List<StoreDTO> data,
    PaginationLinks? links,
    MetaField? meta,
  }) = _StoreListDTO;

  const StoreListDTO._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory StoreListDTO.fromJson(Map<String, dynamic> json) => _$StoreListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Store> Object.
  KtList<Store> get domain => KtList.from(data.map((e) => e.domain));
}
