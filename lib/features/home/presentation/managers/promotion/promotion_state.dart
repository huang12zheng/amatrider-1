part of 'promotion_cubit.dart';

@freezed
@immutable
class PromotionState extends BaseState with _$PromotionState {
  const factory PromotionState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMorePromotions,
    @Default(false) bool validate,
    //
    required Promotion currentPromotion,
    @Default(KtList.empty()) KtList<Promotion> promotions,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _PromotionState;

  const PromotionState._();

  factory PromotionState.initial() => PromotionState(currentPromotion: Promotion.blank());
}
