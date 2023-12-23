
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/localization/app_localization.dart';

/// A LocalizationsDelegate responsible for loading AppLocalization instances.
/// This delegate is used to manage localization support for the app.
class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  /// Checks if the given locale is supported by the app.
  /// Returns [true] if the language code of the locale is supported.
  @override
  bool isSupported(Locale locale) =>
      AppLocalization.languages().contains(locale.languageCode);

  /// Loads the AppLocalization instance synchronously.
  /// Returns a SynchronousFuture containing the AppLocalization instance for the given locale.
  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture<AppLocalization>(AppLocalization(locale));
  }

  /// Returns [false] as the app should not reload the localization data once loaded.
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;
}
