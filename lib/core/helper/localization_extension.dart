// 🌎 Project imports:
import 'package:stylish_ecommerce/core/localization/app_localization.dart';

/// Extension method to localize strings conveniently
extension LocalizationExtension on String {
  /// Getter method 'tr' to access localized strings.
  ///
  /// Returns the localized string corresponding to the provided key.
  String get tr =>
      AppLocalization.of().getString(this);
}
