part of values;

/// A class that provides predefined [BoxDecoration] instances for use in UI design.
class GlobalAppDecoration {
  //!Fill decorations

  /// Returns a BoxDecoration for filling with Blue A200 color.
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: GlobalAppColors.blueA20002,
      );

  /// Returns a BoxDecoration for filling with Gray color.
  static BoxDecoration get fillGray => BoxDecoration(
        color: GlobalAppColors.gray10003,
      );

  /// Returns a BoxDecoration for filling with Gray 50 color.
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: GlobalAppColors.gray50,
      );

  /// Returns a BoxDecoration for filling with Gray 2004c color.
  static BoxDecoration get fillGrayC => BoxDecoration(
        color: GlobalAppColors.gray2004c,
      );

  /// Returns a BoxDecoration for filling with Pink 30001 color.
  static BoxDecoration get fillPink => BoxDecoration(
        color: GlobalAppColors.pink30001,
      );

  /// Returns a BoxDecoration for filling with primary color with opacity.
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: Get.colorScheme.primary.withOpacity(0.49),
      );

  /// Returns a BoxDecoration for filling with primary color.
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: Get.colorScheme.primary,
      );

  /// Returns a BoxDecoration for filling with Red 100 color.
  static BoxDecoration get fillRed => BoxDecoration(
        color: GlobalAppColors.red100,
      );

  /// Returns a BoxDecoration for filling with White A700 color.
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: GlobalAppColors.whiteA700,
      );

  /// Returns a BoxDecoration for filling with White A70001 color.
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: GlobalAppColors.whiteA70001,
      );

  //!Gradient decorations

  /// Returns a BoxDecoration for a gradient from Black 90002 to transparent.
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            GlobalAppColors.black90002.withOpacity(0),
            GlobalAppColors.black90002.withOpacity(0.63),
          ],
        ),
      );

  /// Returns a BoxDecoration for a gradient from Blue A200 to Indigo.
  static BoxDecoration get gradientBlueAToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, -0.16),
          end: const Alignment(0.5, 1.21),
          colors: [
            GlobalAppColors.blueA200,
            GlobalAppColors.indigo900,
          ],
        ),
      );

  /// Returns a BoxDecoration for a gradient from Green A200 to Green 500.
  static BoxDecoration get gradientGreenAToGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            GlobalAppColors.greenA200,
            GlobalAppColors.green500,
          ],
        ),
      );

  //!Outline decorations

  /// Returns a BoxDecoration for an outlined container with Black color.
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: GlobalAppColors.gray50,
        boxShadow: [
          BoxShadow(
            color: GlobalAppColors.black90002.withOpacity(0.3),
            spreadRadius: 2.horizontal,
            blurRadius: 2.horizontal,
            offset: const Offset(
              0,
              -0.5,
            ),
          ),
        ],
      );

  /// Returns a BoxDecoration for an outlined container with Black 90002 color.
  static BoxDecoration get outlineBlack90002 => BoxDecoration(
        color: GlobalAppColors.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: GlobalAppColors.black90002.withOpacity(0.15),
            spreadRadius: 2.horizontal,
            blurRadius: 2.horizontal,
            offset: const Offset(
              0,
              2,
            ),
          ),
        ],
      );

  /// Returns a BoxDecoration for an outlined container with Black 90002 color.
  static BoxDecoration get outlineBlack900021 => BoxDecoration(
        color: GlobalAppColors.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: GlobalAppColors.black90002.withOpacity(0.25),
            spreadRadius: 2.horizontal,
            blurRadius: 2.horizontal,
            offset: const Offset(
              0,
              6,
            ),
          ),
        ],
      );

  /// Returns a BoxDecoration for an outlined container with Gray color.
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: GlobalAppColors.gray60001,
          width: 1.horizontal,
        ),
      );

  /// Returns a BoxDecoration for an outlined container with Gray 50 color.
  static BoxDecoration get outlineGray50 => BoxDecoration(
        color: GlobalAppColors.gray100,
        border: Border.all(
          color: GlobalAppColors.gray50,
          width: 1.horizontal,
        ),
      );

  /// Returns a BoxDecoration for an outlined container with primary color.
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: GlobalAppColors.gray100,
        border: Border.all(
          color: Get.colorScheme.primary,
          width: 1.horizontal,
        ),
      );
}
