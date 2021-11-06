part of history_cubit.dart;

@freezed
@immutable
class HistoryState extends BaseState with _$HistoryState {
  const HistoryState._();

  const factory HistoryState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(KtMap.empty()) KtMap<DateTime?, KtList<DeliveryHistory>> histories,
    @Default(KtList.empty()) KtList<DeliveryHistory> historyList,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _HistoryState;

  factory HistoryState.initial() => const HistoryState();
}
