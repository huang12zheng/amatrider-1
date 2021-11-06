library review.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'review.freezed.dart';

@freezed
@immutable
class Review with _$Review {
  const Review._();

  const factory Review({
    required KtList<CustomerFeedback> feedbacks,
    required BasicTextField<int?> totalReviews,
    required BasicTextField<double?> avgRating,
    required KtList<ReviewGroup> reviewGroups,
  }) = _Review;

  static Review blank() => Review(
        feedbacks: const KtList.empty(),
        totalReviews: BasicTextField(null),
        avgRating: BasicTextField(null),
        reviewGroups: const KtList.empty(),
      );
}

@freezed
@immutable
class CustomerFeedback with _$CustomerFeedback {
  const CustomerFeedback._();

  const factory CustomerFeedback({
    required UniqueId<String?> id,
    required UniqueId<String?> userId,
    required UniqueId<String?> orderId,
    required UniqueId<String?> riderId,
    required BasicTextField<int?> rate,
    required BasicTextField<String?> review,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CustomerFeedback;
}

@freezed
@immutable
class ReviewGroup with _$ReviewGroup {
  const ReviewGroup._();

  const factory ReviewGroup({
    required BasicTextField<int?> group,
    required BasicTextField<int?> count,
  }) = _ReviewGroup;
}
