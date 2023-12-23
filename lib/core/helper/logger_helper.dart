// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

/// A simple logging utility class for controlling log output based on LogMode.
class Logger {
  /// Enum defining different log modes.
  static LogMode _logMode = LogMode.debug;

  /// Initializes the log mode.
  static void init(LogMode mode) {
    Logger._logMode = mode;
  }

  /// Logs data based on the current log mode.
  static void log(dynamic data, {StackTrace? stackTrace}) {
    if (_logMode == LogMode.debug) {
      // If in debug mode, print the data and stack trace (if provided)
      if (kDebugMode) {
        print("Error: $data$stackTrace");
      }
    }
  }
}

/// Enum defining different logging modes.
enum LogMode {
  debug, // Log mode for development/debugging
  live, // Log mode for live/production
}
