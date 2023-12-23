part of app_theme;

/// A class containing theme data for radio buttons in the application.
class RadioThemes {
  /// The color scheme used for radio buttons.
  ///
  /// By default, it uses the primary color scheme from the `ColorSchemes` class.
  static ColorScheme colorScheme = ColorSchemes.primaryColorScheme;

  /// Theme data for radio buttons in the application.
  ///
  /// This [RadioThemeData] instance defines the visual appearance of radio buttons.
  /// It includes configurations such as the fill color based on the selected state
  /// and visual density for spacing.
  static RadioThemeData radioTheme = RadioThemeData(
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return colorScheme.primary; // Fill color when the radio button is selected
      }
      return colorScheme.onSurface; // Fill color when the radio button is not selected
    }),
    visualDensity: const VisualDensity(
      vertical: -4, // Vertical density for spacing
      horizontal: -4, // Horizontal density for spacing
    ),
  );
}
