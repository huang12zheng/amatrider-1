part of 'send_package_cubit.dart';

@freezed
@immutable
class SendPackageState extends BaseState with _$SendPackageState {
  const SendPackageState._();

  const factory SendPackageState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    required JourneyDetail journey,
    required SendPackage package,
    @Default(true) bool isOtherReason,
    required BasicTextField<String?> cancelReason,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _SendPackageState;

  factory SendPackageState.initial() => SendPackageState(
        package: SendPackage.blank(),
        journey: JourneyDetail.blank(),
        cancelReason: BasicTextField(null),
      );
}
