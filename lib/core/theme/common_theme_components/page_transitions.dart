part of app_theme;

/// A class that provides the page transitions theme for the application.
class PageTransitionsThemes {
  /// The page transitions theme used in the application.
  ///
  /// This [PageTransitionsTheme] instance defines the animations for page
  /// transitions on different platforms. It includes builders for Android,
  /// iOS, and Fuchsia platforms using [ZoomPageTransitionsBuilder].
  static const PageTransitionsTheme pageTransitionsTheme = PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
    },
  );
}
