part of app_theme;

/// The light theme configuration for the application.
///
/// This [ThemeData] instance defines the visual appearance of the application
/// in light mode. It includes configurations for fonts, colors, buttons,
/// page transitions, text styles, and more.
///
/// The [fontFamily] is set to 'Montserrat' for a consistent typography style.
///
/// The [brightness] is set to [Brightness.light] for a light theme.
///
/// The [visualDensity] determines the visual spacing of UI components and is set to standard.
///
/// The [colorScheme] is configured using [Get.colorScheme], which defines
/// the main accent color groups such as [primary], [secondary], and [tertiary].
///
/// The [scaffoldBackgroundColor] sets the main background color of the scaffold
/// to GlobalAppColors.whiteA700.
///
/// The theme data for elevated buttons is configured using [CommonComponentsTheme.elevatedButtonThemeData].
///
/// The theme data for outlined buttons is configured using [CommonComponentsTheme.outlinedButtonThemeData].
///
/// The theme data for floating action buttons is configured using [CommonComponentsTheme.floatingActionButtonThemeData].
///
/// The theme data for dividers is configured using [CommonComponentsTheme.dividerThemeData].
///
/// The [pageTransitionsTheme] defines the page transition animations for different platforms.
///
/// The [textTheme] is configured using [CommonComponentsTheme.textTheme] with the color scheme,
/// ensuring consistent and readable text throughout the application.
///
/// The theme data for radio buttons is configured using [CommonComponentsTheme.radioThemeData].
///
/// Example usage:
/// ```dart
/// MaterialApp(
///   theme: lightTheme,
///   // other configurations...
/// )
/// ```
ThemeData lightTheme = ThemeData(
  fontFamily: 'Montserrat',
  brightness: Brightness.light,
  visualDensity: VisualDensity.standard,
  colorScheme: Get.colorScheme,
  scaffoldBackgroundColor: GlobalAppColors.whiteA700,
  elevatedButtonTheme: CommonComponentsTheme.elevatedButtonThemeData,
  outlinedButtonTheme: CommonComponentsTheme.outlinedButtonThemeData,
  floatingActionButtonTheme: CommonComponentsTheme.floatingActionButtonThemeData,
  dividerTheme: CommonComponentsTheme.dividerThemeData,
  pageTransitionsTheme: CommonComponentsTheme.pageTransitionsTheme,
  textTheme: CommonComponentsTheme.textTheme(Get.colorScheme),
  radioTheme: CommonComponentsTheme.radioThemeData,
);
