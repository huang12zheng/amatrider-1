part of insights_cubit.dart;

enum DateFilter { all_time, monthly, yearly }

@freezed
@immutable
class InsightsState extends BaseState with _$InsightsState {
  const InsightsState._();

  const factory InsightsState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(DateFilter.all_time) DateFilter dateFilter,
    required DateTime? selectedDate,
    required Insight insight,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _InsightsState;

  factory InsightsState.initial() => InsightsState(
        selectedDate: DateTime.now(),
        insight: Insight.blank(),
      );
}

extension DateFilterX on DateFilter {
  String get label {
    switch (this) {
      case DateFilter.all_time:
        return '${S.current.allTime}';
      case DateFilter.monthly:
        return '${S.current.monthly}';
      case DateFilter.yearly:
        return '${S.current.yearly}';
      default:
        return '';
    }
  }

  T when<T>({
    required T allTime,
    required T monthly,
    required T yearly,
  }) {
    switch (this) {
      case DateFilter.all_time:
        return allTime;
      case DateFilter.monthly:
        return monthly;
      case DateFilter.yearly:
        return yearly;
    }
  }
}
