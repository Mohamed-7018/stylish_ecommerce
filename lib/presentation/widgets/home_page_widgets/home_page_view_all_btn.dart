// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// Widget for displaying a "View All" button on the home page.
class HomePageViewAllButton extends StatelessWidget {
  final Color? color;
  final String? text;
  final double? width;
  final double? height;

  /// Constructor for HomePageViewAllButton.
  ///
  /// [color]: Optional color for the button background.
  const HomePageViewAllButton(
      {super.key, this.color, this.text, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 89.horizontal,
      height: height ?? 28.vertical,
      decoration: BoxDecoration(
        color: color,
        borderRadius: GlobalAppRadius.circleBorder8,
        border: Border.all(
          color: GlobalAppColors.whiteA70001,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text ?? "lbl_view_all".tr,
            style: CustomTextStyles.labelLargeWhiteA70001,
          ),
          Container(
            margin: EdgeInsets.only(left: 4.horizontal),
            child: CustomImageView(
              imagePath: GlobalAppImages.imgArrowright,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
        ],
      ),
    );
  }
}
