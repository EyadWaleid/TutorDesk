import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  final SharedPreferences _prefs;

  AppPreferences(this._prefs);

  static const String _keyIsFirstTimeUser = 'is_first_time_user';

  /// Check if the user is opening the app for the first time.
  /// Returns `true` if it's the first time (default), or `false` if they have opened it before.
  bool isFirstTimeUser() {
    return _prefs.getBool(_keyIsFirstTimeUser) ?? true;
  }

  /// Mark that the user has completed onboarding/opened the app for the first time.
  Future<bool> setFirstTimeUserCompleted() async {
    return await _prefs.setBool(_keyIsFirstTimeUser, false);
  }

  /// Clear all stored preferences (Useful for testing or logout)
  Future<bool> clearAll() async {
    return await _prefs.clear();
  }
}