// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:stylish_ecommerce/core/localization/ar_ksa/ar_ksa_translations.dart';

// 🌎 Project imports:
import 'en_us/en_us_translations.dart';

/// A class responsible for managing app localization based on the selected locale.
class AppLocalization {
  /// Constructor for AppLocalization which takes in a Locale object.
  AppLocalization(this.locale);

  /// The current locale for localization.
  Locale locale;

  /// A map containing the localized values for different languages.
  static final Map<String, Map<String, String>> _localizedValues = {
    'en': enUs,
    'ar': arKsa,
  };

  /// Retrieves the AppLocalization instance based on the current context.
  ///
  /// Returns the AppLocalization instance obtained from the current context.
  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization)!;
    // return Localizations.of<AppLocalization>(
    //     NavigatorHelper.autoRouteNavigatorKey.currentContext!, AppLocalization)!;
  }

  /// Retrieves a list of supported languages from the localized values.
  ///
  /// Returns a list containing supported language codes.
  static List<String> languages() => _localizedValues.keys.toList();
  String getString(String text) =>
      _localizedValues[locale.languageCode]![text] ?? text;
}
