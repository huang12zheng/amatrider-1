part of request_cubit.dart;

@freezed
@immutable
class RequestState extends BaseState with _$RequestState {
  const RequestState._();

  const factory RequestState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(false) bool isAccepting,
    @Default(false) bool isDeclining,
    @Default(false) bool isLoadingInTransit,
    @Default(false) bool isLoadingActive,
    @Default(false) bool isLoadingPotential,
    Logistics? current,
    @Default(KtList.empty()) KtList<Logistics> inTransit,
    @Default(KtList.empty()) KtList<Logistics> active,
    @Default(KtList.empty()) KtList<Logistics> potential,
    // @Default(KtList.empty()) KtList<SendPackage> packagesInTransit,
    // @Default(KtList.empty()) KtList<UserOrder> ordersInTransit,
    // @Default(KtList.empty()) KtList<SendPackage> activePackages,
    // @Default(KtList.empty()) KtList<UserOrder> activeOrders,
    // @Default(KtList.empty()) KtList<SendPackage> potentialPackages,
    // @Default(KtList.empty()) KtList<UserOrder> potentialOrders,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _RequestState;

  factory RequestState.initial() => const RequestState();
}
