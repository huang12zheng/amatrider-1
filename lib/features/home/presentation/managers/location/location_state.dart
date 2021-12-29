part of location_cubit.dart;

@freezed
class LocationState extends BaseState with _$LocationState {
  const factory LocationState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(false) bool isRequestingPermissions,
    @Default(false) bool isRequestingService,
    @Default(false) bool hasPermissions,
    @Default(false) bool isServiceEnabled,
    @Default(false) bool isBackgroundEnabled,
    RiderLocation? position,
    @Default(KtList.empty()) KtList<Future<dynamic>> operations,
    DateTime? lastUpdate,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _LocationState;

  const LocationState._();

  factory LocationState.initial() => const LocationState();
}
