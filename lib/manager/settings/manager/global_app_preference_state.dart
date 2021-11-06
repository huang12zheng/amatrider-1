part of global_app_preference_cubit.dart;

enum FeedbackType { suggestion, inquiry }

@freezed
@immutable
class GlobalPreferenceState with _$GlobalPreferenceState {
  static final FocusNode supportMsgFocus = FocusNode();

  const factory GlobalPreferenceState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(false) bool signedInRecently,
    @Default(FeedbackType.inquiry) FeedbackType feedbackType,
    required BasicTextField<String> supportMessage,
    @Default(KtList.empty()) KtList<File> supportImages,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _GlobalPreferenceState;

  factory GlobalPreferenceState.initial() => GlobalPreferenceState(
        supportMessage: BasicTextField(null),
      );
}

extension FeedbackTypeX on FeedbackType {
  String get value {
    switch (this) {
      case FeedbackType.suggestion:
        return 'suggestion';
      case FeedbackType.inquiry:
        return 'inquiry';
      default:
        return 'inquiry';
    }
  }
}
