part of reviews_cubit.dart;

@freezed
@immutable
class ReviewsState extends BaseState with _$ReviewsState {
  const ReviewsState._();

  const factory ReviewsState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    required Review review,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _ReviewsState;

  factory ReviewsState.initial() => ReviewsState(review: Review.blank());
}
