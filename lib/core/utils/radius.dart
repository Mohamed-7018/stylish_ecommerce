part of values;

/// A class that provides global application border radius configurations.
class GlobalAppBorderRadius {}

/// A class that provides global application radius configurations.
class GlobalAppRadius {
  //!Circle borders

  /// Returns a circular border radius with a radius of 8.horizontal.
  static BorderRadius get circleBorder8 => BorderRadius.circular(
        8.horizontal,
      );

  /// Returns a circular border radius with a radius of 20.horizontal.
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.horizontal,
      );

  /// Returns a circular border radius with a radius of 24.horizontal.
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.horizontal,
      );

  /// Returns a circular border radius with a radius of 28.horizontal.
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        28.horizontal,
      );

  /// Returns a circular border radius with a radius of 48.horizontal.
  static BorderRadius get circleBorder48 => BorderRadius.circular(
        48.horizontal,
      );

  static BorderRadius get circleBorder100 => BorderRadius.circular(
        100.horizontal,
      );
  //!Custom borders

  /// Returns a custom border radius with different radii for each corner.
  ///
  /// This configuration has a top-left radius of 20.horizontal, top-right radius
  /// of 4.horizontal, bottom-left radius of 20.horizontal, and bottom-right radius
  /// of 4.horizontal.
  static BorderRadius get customBorderTL20 => BorderRadius.only(
        topLeft: Radius.circular(20.horizontal),
        topRight: Radius.circular(4.horizontal),
        bottomLeft: Radius.circular(20.horizontal),
        bottomRight: Radius.circular(4.horizontal),
      );

  /// Returns a custom border radius with a top-left radius of 8.horizontal.
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(8.horizontal),
      );

  //!Rounded borders

  /// Returns a rounded border radius with a radius of 1.horizontal.
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.horizontal,
      );

  /// Returns a rounded border radius with a radius of 12.horizontal.
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.horizontal,
      );

  /// Returns a rounded border radius with a radius of 16.horizontal.
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.horizontal,
      );

  /// Returns a rounded border radius with a radius of 4.horizontal.
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.horizontal,
      );

  /// Returns a rounded border radius with a radius of 8.horizontal.
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.horizontal,
      );
}

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
