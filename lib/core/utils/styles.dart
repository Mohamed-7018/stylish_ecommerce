part of values;

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeWhiteA70001 => Get.textTheme.bodyLarge!.copyWith(
        color: GlobalAppColors.whiteA70001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyLarge_1 => Get.textTheme.bodyLarge!;
  static get bodyMedium13 => Get.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium13_1 => Get.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray400 => Get.textTheme.bodyMedium!.copyWith(
        color: GlobalAppColors.blueGray400,
      );
  static get bodyMediumGray10003 => Get.textTheme.bodyMedium!.copyWith(
        color: GlobalAppColors.gray10003,
      );
  static get bodyMediumGray40003 => Get.textTheme.bodyMedium!.copyWith(
        color: GlobalAppColors.gray40003,
      );
  static get bodyMediumGray70001 => Get.textTheme.bodyMedium!.copyWith(
        color: GlobalAppColors.gray70001,
      );
  static get bodyMediumPoppinsGray70001 =>
      Get.textTheme.bodyMedium!.poppins.copyWith(
        color: GlobalAppColors.gray70001,
      );
  static get bodyMedium_1 => Get.textTheme.bodyMedium!;
  static get bodySmall10 => Get.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall12 => Get.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray400 => Get.textTheme.bodySmall!.copyWith(
        color: GlobalAppColors.blueGray400,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallDeeporange300 => Get.textTheme.bodySmall!.copyWith(
        color: GlobalAppColors.deepOrange300,
        fontSize: 10.fSize,
      );
  static get bodySmallGray40003 => Get.textTheme.bodySmall!.copyWith(
        color: GlobalAppColors.gray40003,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray60001 => Get.textTheme.bodySmall!.copyWith(
        color: GlobalAppColors.gray60001,
      );
  static get bodySmallGray700 => Get.textTheme.bodySmall!.copyWith(
        color: GlobalAppColors.gray700,
      );
  static get bodySmallGray700_1 => Get.textTheme.bodySmall!.copyWith(
        color: GlobalAppColors.gray700,
      );
  static get bodySmallGray90002 => Get.textTheme.bodySmall!.copyWith(
        color: GlobalAppColors.gray90002,
        fontSize: 10.fSize,
      );
  static get bodySmallLight => Get.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnPrimary => Get.textTheme.bodySmall!.copyWith(
        color: Get.colorScheme.onPrimary,
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimaryContainer => Get.textTheme.bodySmall!.copyWith(
        color: Get.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallPink300 => Get.textTheme.bodySmall!.copyWith(
        color: GlobalAppColors.pink300,
      );
  static get bodySmallPrimary => Get.textTheme.bodySmall!.copyWith(
        color: Get.colorScheme.primary,
      );
  static get bodySmallRoboto => Get.textTheme.bodySmall!.roboto;
  static get bodySmallSecondaryContainer => Get.textTheme.bodySmall!.copyWith(
        color: Get.colorScheme.secondaryContainer,
      );
  static get bodySmallWhiteA70001 => Get.textTheme.bodySmall!.copyWith(
        color: GlobalAppColors.whiteA70001,
      );
  // Display text style
  static get displaySmallWhiteA70001 => Get.textTheme.displaySmall!.copyWith(
        color: GlobalAppColors.whiteA70001,
        fontSize: 34.fSize,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeErrorContainer => Get.textTheme.labelLarge!.copyWith(
        color: Get.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray50001 => Get.textTheme.labelLarge!.copyWith(
        color: GlobalAppColors.gray50001,
      );
  static get labelLargeGray700 => Get.textTheme.labelLarge!.copyWith(
        color: GlobalAppColors.gray700,
      );
  static get labelLargeGray70001 => Get.textTheme.labelLarge!.copyWith(
        color: GlobalAppColors.gray70001,
      );
  static get labelLargePlusJakartaSansPrimary =>
      Get.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: Get.colorScheme.primary,
      );
  static get labelLargePrimary => Get.textTheme.labelLarge!.copyWith(
        color: Get.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRobotoRed600 =>
      Get.textTheme.labelLarge!.roboto.copyWith(
        color: GlobalAppColors.red600,
      );
  static get labelLargeRobotoRed60001 =>
      Get.textTheme.labelLarge!.roboto.copyWith(
        color: GlobalAppColors.red60001,
      );
  static get labelLargeSemiBold => Get.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold13 => Get.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA70001 => Get.textTheme.labelLarge!.copyWith(
        color: GlobalAppColors.whiteA70001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA70001_1 => Get.textTheme.labelLarge!.copyWith(
        color: GlobalAppColors.whiteA70001,
      );
  static get labelMediumGray60001 => Get.textTheme.labelMedium!.copyWith(
        color: GlobalAppColors.gray60001,
      );
  // Title text style
  static get titleLarge23 => Get.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
      );
  static get titleLargeBlack90002 => Get.textTheme.titleLarge!.copyWith(
        color: GlobalAppColors.black90002,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack90002_1 => Get.textTheme.titleLarge!.copyWith(
        color: GlobalAppColors.black90002,
      );
  static get titleLargeBold => Get.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBold_1 => Get.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsBlack900 =>
      Get.textTheme.titleLarge!.poppins.copyWith(
        color: GlobalAppColors.black900,
        fontSize: 21.fSize,
      );
  static get titleMedium17 => Get.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumBluegray700 => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.blueGray700,
      );
  static get titleMediumBluegray70018 => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.blueGray700,
        fontSize: 18.fSize,
      );
  static get titleMediumBold => Get.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray40001 => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.gray40001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray500 => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.gray500,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray50002 => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.gray50002,
        fontSize: 18.fSize,
      );
  static get titleMediumGray50003 => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.gray50003,
      );
  static get titleMediumGray5000318 => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.gray50003,
        fontSize: 18.fSize,
      );
  static get titleMediumGray500SemiBold => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.gray500,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray900 => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.gray900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90002 => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.gray90002,
      );
  static get titleMediumLibreCaslonTextBlueA20001 =>
      Get.textTheme.titleMedium!.libreCaslonText.copyWith(
        color: GlobalAppColors.blueA20001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => Get.textTheme.titleMedium!.copyWith(
        color: Get.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => Get.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold18 => Get.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => Get.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_2 => Get.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_3 => Get.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA70001 => Get.textTheme.titleMedium!.copyWith(
        color: GlobalAppColors.whiteA70001,
      );
  static get titleMedium_1 => Get.textTheme.titleMedium!;
  static get titleSmallGray50003 => Get.textTheme.titleSmall!.copyWith(
        color: GlobalAppColors.gray50003,
      );
  static get titleSmallGray60001 => Get.textTheme.titleSmall!.copyWith(
        color: GlobalAppColors.gray60001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray60002 => Get.textTheme.titleSmall!.copyWith(
        color: GlobalAppColors.gray60002,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray900 => Get.textTheme.titleSmall!.copyWith(
        color: GlobalAppColors.gray900,
      );
  static get titleSmallGray90002 => Get.textTheme.titleSmall!.copyWith(
        color: GlobalAppColors.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => Get.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium_1 => Get.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPink300 => Get.textTheme.titleSmall!.copyWith(
        color: GlobalAppColors.pink300,
      );
  static get titleSmallPlusJakartaSansWhiteA70001 =>
      Get.textTheme.titleSmall!.plusJakartaSans.copyWith(
        color: GlobalAppColors.whiteA70001,
        fontSize: 15.fSize,
      );
  static get titleSmallPrimary => Get.textTheme.titleSmall!.copyWith(
        color: Get.colorScheme.primary,
      );
  static get titleSmallPrimary_1 => Get.textTheme.titleSmall!.copyWith(
        color: Get.colorScheme.primary,
      );
  static get titleSmallWhiteA70001 => Get.textTheme.titleSmall!.copyWith(
        color: GlobalAppColors.whiteA70001,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  // ignore: unused_element
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get libreCaslonText {
    return copyWith(
      fontFamily: 'Libre Caslon Text',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
