part of history_cubit.dart;

@freezed
@immutable
class HistoryState extends BaseState with _$HistoryState {
  const HistoryState._();

  const factory HistoryState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(KtMap.empty()) KtMap<DateTime?, KtList<Logistics>> collection,
    @Default(KtList.empty()) KtList<Logistics> histories,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _HistoryState;

  factory HistoryState.initial() => const HistoryState();
}
