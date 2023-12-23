part of app_theme;

/// A class containing theme data for elevated buttons in the application.
class ElevatedButtonThemes {
  /// Theme data for elevated buttons in the application.
  ///
  /// This [ElevatedButtonThemeData] instance defines the visual appearance of elevated buttons.
  /// It includes configurations such as the button's background color, shape, visual density, and padding.
  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Get.colorScheme.primary, // Background color of the button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.horizontal), // Button border radius
      ),
      visualDensity: const VisualDensity(
        vertical: -4, // Vertical density for spacing
        horizontal: -4, // Horizontal density for spacing
      ),
      padding: EdgeInsets.zero, // Padding around the button's content
    ),
  );
}
