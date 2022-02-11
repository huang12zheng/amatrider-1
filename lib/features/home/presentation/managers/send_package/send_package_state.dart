part of 'send_package_cubit.dart';

@freezed
@immutable
class SendPackageState extends BaseState with _$SendPackageState {
  const SendPackageState._();

  const factory SendPackageState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingSingle,
    @Default(false) bool isConfirmingPickup,
    @Default(false) bool isConfirmingDelivery,
    @Default(false) bool validate,
    required BasicTextField<String?> code,
    Logistics? deliverable,
    @Default(true) bool isOtherReason,
    required BasicTextField<String?> cancelReason,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _SendPackageState;

  factory SendPackageState.initial() => SendPackageState(
        code: BasicTextField(null),
        cancelReason: BasicTextField(null),
      );
}
