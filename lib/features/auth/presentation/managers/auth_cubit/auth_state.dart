part of auth_cubit.dart;

@freezed
class AuthState extends BaseState with _$AuthState {
  static const int OTP_CODE_LENGTH = 5;
  static final GlobalKey loginFormKey = GlobalKey<FormState>();
  static final GlobalKey signupFormKey = GlobalKey<FormState>();
  static final FocusNode firstNameFocus = FocusNode();
  static final FocusNode lastNameFocus = FocusNode();
  static final FocusNode newEmailFocus = FocusNode();
  static final FocusNode emailFocus = FocusNode();
  static final FocusNode phoneFocus = FocusNode();
  static final FocusNode newPhoneFocus = FocusNode();
  static final FocusNode tokenFocus = FocusNode();
  static final FocusNode resetPasswordFocus = FocusNode();
  static final FocusNode oldPasswordFocus = FocusNode();
  static final FocusNode newPasswordFocus = FocusNode();
  static final FocusNode passwordFocus = FocusNode();
  static final FocusNode passwordConfirmationFocus = FocusNode();
  static final FocusNode bankNameFocus = FocusNode();
  static final FocusNode accountNameFocus = FocusNode();
  static final FocusNode accountNumberFocus = FocusNode();
  static final FocusNode sortCodeFocus = FocusNode();

  const factory AuthState({
    required Password oldPassword,
    required Password confirmPassword,
    required OTPCode code,
    required Rider rider,
    File? selectedPhoto,
    required TextEditingController phoneTextController,
    @Default(0.0) double passwordStrength,
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(true) bool isOldPasswordHidden,
    @Default(true) bool isPasswordHidden,
    @Default(false) bool passwordMatches,
    CountryCode? selectedCountry,
    required BankAccount bankAccount,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _AuthState;

  const AuthState._();

  factory AuthState.initial() => AuthState(
        rider: Rider.blank(),
        code: OTPCode(null),
        oldPassword: Password(null),
        confirmPassword: Password(null),
        phoneTextController: TextEditingController(),
        bankAccount: BankAccount.blank(),
      );
}

extension XPasswordStrength on AuthState {
  T? strength<T>({
    T? low,
    T? medium,
    T? perfect,
  }) {
    if (passwordStrength < 0.3) return low;
    if (passwordStrength > 0.3 && passwordStrength < 0.7) return medium;
    return perfect;
  }
}
