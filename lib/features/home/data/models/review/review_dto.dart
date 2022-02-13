library review_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'review_dto.g.dart';
part 'review_dto.freezed.dart';

@freezed
@immutable
class ReviewDTO with _$ReviewDTO {
  const ReviewDTO._();

  const factory ReviewDTO({
    required GenericListDTO<CustomerFeedbackDTO> data,
    @JsonKey(name: 'totalReviews') int? totalReviews,
    @JsonKey(name: 'avgRating') double? avgRating,
    @JsonKey(name: 'reviewGroups') @Default([]) List<ReviewGroupDTO> reviewGroups,
  }) = _ReviewDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ReviewDTO.fromJson(Map<String, dynamic> json) => _$ReviewDTOFromJson(json);

  /// Maps the Data Transfer Object to a Review Object.
  Review get domain => Review(
        feedbacks: data.data.map((e) => e.domain).toImmutableList(),
        totalReviews: BasicTextField(totalReviews),
        avgRating: BasicTextField(avgRating),
        reviewGroups: KtList.from(reviewGroups.map((e) => e.domain)),
      );
}

@freezed
@immutable
class CustomerFeedbackDTO with _$CustomerFeedbackDTO {
  const CustomerFeedbackDTO._();

  const factory CustomerFeedbackDTO({
    String? id,
    int? rate,
    String? review,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'rider_id') String? riderId,
    @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt,
  }) = _CustomerFeedbackDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory CustomerFeedbackDTO.fromJson(Map<String, dynamic> json) => _$CustomerFeedbackDTOFromJson(json);

  /// Maps the Data Transfer Object to a CustomerFeedback Object.
  CustomerFeedback get domain => CustomerFeedback(
        id: UniqueId.fromExternal(id),
        orderId: UniqueId.fromExternal(orderId),
        riderId: UniqueId.fromExternal(riderId),
        userId: UniqueId.fromExternal(userId),
        rate: BasicTextField(rate),
        review: BasicTextField(review),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

@freezed
@immutable
class ReviewGroupDTO with _$ReviewGroupDTO {
  const ReviewGroupDTO._();

  const factory ReviewGroupDTO({int? group, int? count}) = _ReviewGroupDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ReviewGroupDTO.fromJson(Map<String, dynamic> json) => _$ReviewGroupDTOFromJson(json);

  /// Maps the Data Transfer Object to a ReviewGroup Object.
  ReviewGroup get domain => ReviewGroup(group: BasicTextField(group), count: BasicTextField(count));
}
