// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_icon_button.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// A widget that displays social login icons, such as Google, Apple, and Facebook.
class SocialLoginIcons extends StatelessWidget {
  const SocialLoginIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "msg_or_continue_with".tr,
          style: CustomTextStyles.labelLargeGray70001,
        ),
        SizedBox(height: 19.vertical),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2.vertical),
              child: CustomIconButton(
                height: 54.adaptSize,
                width: 54.adaptSize,
                padding: EdgeInsets.all(15.horizontal),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  imagePath: GlobalAppImages.imgGoogle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.horizontal,
                bottom: 1.vertical,
              ),
              child: CustomIconButton(
                height: 55.adaptSize,
                width: 55.adaptSize,
                padding: EdgeInsets.all(15.horizontal),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  imagePath: GlobalAppImages.imgApple1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.horizontal),
              child: CustomIconButton(
                height: 56.adaptSize,
                width: 56.adaptSize,
                padding: EdgeInsets.all(15.horizontal),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  imagePath: GlobalAppImages.imgFacebookAppSymbol,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
