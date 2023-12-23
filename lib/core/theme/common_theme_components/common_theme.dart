part of app_theme;

/// A collection of theme data for various common UI elements used throughout the application.
class CommonComponentsTheme {
  /// Returns the text theme styles used throughout the application.
  ///
  /// The [colorScheme] parameter is used to adapt text colors based on the overall color scheme.
  static TextTheme textTheme(ColorScheme colorScheme) =>
      TextThemes.textTheme(colorScheme);

  /// The theme data for elevated buttons used in the application.
  ///
  /// This includes configurations such as button padding, shape, and color.
  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemes.elevatedButtonTheme;

  /// The theme data for dividers used in the application.
  ///
  /// This includes configurations for divider thickness, color, and indentation.
  static DividerThemeData dividerThemeData = DividerThemes.dividerTheme;

  /// The theme data for radio buttons used in the application.
  ///
  /// This includes configurations for radio button color, splash color, and visual density.
  static RadioThemeData radioThemeData = RadioThemes.radioTheme;

  /// The theme data for page transitions used in the application.
  ///
  /// This includes custom animations for page transitions on different platforms.
  static PageTransitionsTheme pageTransitionsTheme =
      PageTransitionsThemes.pageTransitionsTheme;

  /// The theme data for floating action buttons used in the application.
  ///
  /// This includes configurations for button elevation, background color, and shape.
  static FloatingActionButtonThemeData floatingActionButtonThemeData =
      FloatingActionButtonTheme.floatingActionButtonThemeData;

  /// The theme data for outlined buttons used in the application.
  ///
  /// This includes configurations such as button padding, shape, and color.
  static OutlinedButtonThemeData outlinedButtonThemeData =
      OutlinedButtonTheme.outlinedButtonThemeData;
}
