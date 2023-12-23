part of values;

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  /// Returns a filled button style with primary color.
  static ButtonStyle get fillPrimaryTL8 => ElevatedButton.styleFrom(
        backgroundColor: Get.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );

  /// Returns an outline button style with blue-gray colors.
  static ButtonStyle get outlineBlueGray => OutlinedButton.styleFrom(
        backgroundColor: GlobalAppColors.whiteA70001,
        side: BorderSide(
          color: GlobalAppColors.blueGray10001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );

  /// Returns a text button style with no background or elevation.
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
