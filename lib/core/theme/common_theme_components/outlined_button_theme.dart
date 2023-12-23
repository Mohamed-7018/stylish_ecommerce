part of app_theme;

/// A class containing theme data for OutlinedButton in the application.
class OutlinedButtonTheme {
  /// Theme data for the OutlinedButton in the application.
  ///
  /// This [OutlinedButtonThemeData] instance defines the visual appearance
  /// of the OutlinedButton. It includes configurations such as the
  /// background color, side (border), shape, visual density, and padding.
  static OutlinedButtonThemeData outlinedButtonThemeData =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent, // Background color of the button
      side: BorderSide(
        color: GlobalAppColors.whiteA70001, // Border color
        width: 1.horizontal, // Border width
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.horizontal), // Button border radius
      ),
      visualDensity: const VisualDensity(
        vertical: -4, // Vertical density for spacing
        horizontal: -4, // Horizontal density for spacing
      ),
      padding: EdgeInsets.zero, // Padding around the button's content
    ),
  );
}
