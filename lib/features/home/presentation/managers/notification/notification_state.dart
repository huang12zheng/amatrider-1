part of notification_cubit.dart;

@freezed
@immutable
class NotificationState extends BaseState with _$NotificationState {
  const NotificationState._();

  const factory NotificationState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(false) bool subscribed,
    @Default(KtMap.empty())
        KtMap<DateTime?, KtList<InAppNotification>> inAppNotificationCollection,
    @Default(KtList.empty()) KtList<InAppNotification> inAppNotifications,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _NotificationState;

  factory NotificationState.initial() => const NotificationState();
}
