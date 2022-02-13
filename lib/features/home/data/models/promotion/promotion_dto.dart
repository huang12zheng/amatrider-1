library promotion_dto.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/data.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_dto.freezed.dart';
part 'promotion_dto.g.dart';

PromotionDTO deserializePromotionDTO(Map<String, dynamic> json) => PromotionDTO.fromJson(json);
Map<String, dynamic> serializePromotionDTO(PromotionDTO object) => object.toJson();

@freezed
@immutable
class PromotionDTO with _$PromotionDTO {
  const PromotionDTO._();

  const factory PromotionDTO({
    String? id,
    String? media,
    PromotionDiscountDTO? discount,
    @JsonKey(name: 'media_type') @AttachmentMimeSerializer() String? mediaType,
    @JsonKey(name: 'playback_url') String? playbackUrl,
    String? description,
    @JsonKey(name: 'restaurant') StoreDTO? store,
    @JsonKey(name: 'stop_showing_at') @TimestampConverter() DateTime? shopShowingAt,
    @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt,
  }) = _PromotionDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory PromotionDTO.fromJson(Map<String, dynamic> json) => _$PromotionDTOFromJson(json);

  /// Maps the Data Transfer Object to a Promotion Object.
  Promotion get domain => Promotion(
        id: UniqueId.fromExternal(id),
        url: MediaField(media),
        discount: discount?.domain,
        mime: AttachmentMime.fromMime(mediaType),
        streamUrl: MediaField(playbackUrl),
        description: BasicTextField(description),
        store: store?.domain ?? Store.blank(),
        stopShowingAt: shopShowingAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
