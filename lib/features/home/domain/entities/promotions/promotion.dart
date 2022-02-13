library promotion.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion.freezed.dart';

@freezed
@immutable
class Promotion extends MediaDecorator with _$Promotion implements BaseEntity {
  const Promotion._();

  const factory Promotion({
    required UniqueId<String?> id,
    required MediaField url,
    required AttachmentMime mime,
    required MediaField streamUrl,
    PromotionDiscount? discount,
    required BasicTextField<String?> description,
    required Store store,
    DateTime? stopShowingAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Promotion;

  factory Promotion.blank() => Promotion(
        id: UniqueId.fromExternal(null),
        url: MediaField(null),
        mime: AttachmentMime.unknown,
        streamUrl: MediaField(null),
        description: BasicTextField(null),
        store: Store.blank(),
      );
}
