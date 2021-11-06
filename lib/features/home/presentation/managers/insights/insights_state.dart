part of insights_cubit.dart;

enum DateFilter { monthly, yearly }

@freezed
@immutable
class InsightsState extends BaseState with _$InsightsState {
  const InsightsState._();

  const factory InsightsState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(DateFilter.monthly) DateFilter dateFilter,
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
      case DateFilter.monthly:
        return 'Monthly';
      case DateFilter.yearly:
        return 'Yearly';
      default:
        return '';
    }
  }

  T when<T>({
    required T monthly,
    required T yearly,
  }) {
    switch (this) {
      case DateFilter.monthly:
        return monthly;
      case DateFilter.yearly:
        return yearly;
    }
  }
}
