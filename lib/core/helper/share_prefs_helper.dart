// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:shared_preferences/shared_preferences.dart';

/// Utility class for managing preferences using SharedPreferences.
class PrefUtils {
   SharedPreferences? sharedPreferences;

  /// Constructor to initialize SharedPreferences instance.
  PrefUtils() {
    // init();
    SharedPreferences.getInstance().then((value) {
      sharedPreferences = value;
    });
  }

  /// Initializes the SharedPreferences instance asynchronously.
  ///
  /// If SharedPreferences is not initialized, this method initializes it and prints a log message.
  Future<void> init() async {
    sharedPreferences ??= await SharedPreferences.getInstance();
    if (kDebugMode) {
      print('SharedPreference Initialized');
    }
  }

  /// Clears all the data stored in preferences.
  void clearPreferencesData() async {
    sharedPreferences!.clear();
  }

}
    
