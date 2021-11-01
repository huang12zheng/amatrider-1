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
    @Default(false) bool isLoadingTransitPackages,
    @Default(false) bool isLoadingActivePackages,
    @Default(false) bool isLoadingPotentialPackages,
    SendPackage? currentPackage,
    @Default(KtList.empty()) KtList<SendPackage> packagesInTransit,
    @Default(KtList.empty()) KtList<SendPackage> activePackages,
    @Default(KtList.empty()) KtList<SendPackage> potentialPackages,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _RequestState;

  factory RequestState.initial() => const RequestState();
}
