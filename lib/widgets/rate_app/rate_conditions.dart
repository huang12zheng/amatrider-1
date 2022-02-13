part of rate_my_app.dart;

class AlwaysOpenCondition extends DebuggableCondition {
  /// Whether the dialog should not be opened again.
  late bool canOpenAgain;

  @override
  void readFromPreferences(SharedPreferences preferences, String preferencesPrefix) {
    canOpenAgain = preferences.getBool(preferencesPrefix + 'canOpenAgain') ?? true;
  }

  @override
  Future<void> saveToPreferences(SharedPreferences preferences, String preferencesPrefix) {
    return preferences.setBool(preferencesPrefix + 'canOpenAgain', canOpenAgain);
  }

  @override
  void reset() => canOpenAgain = true;

  @override
  bool get isMet => canOpenAgain;

  @override
  bool onEventOccurred(RateMyAppEventType eventType) {
    if (eventType == RateMyAppEventType.rateButtonPressed || eventType == RateMyAppEventType.noButtonPressed) {
      canOpenAgain = true;
      return true;
    }

    return false;
  }

  @override
  String get valuesAsString {
    return 'Always show again ? ' + (canOpenAgain ? 'Yes' : 'No');
  }
}
