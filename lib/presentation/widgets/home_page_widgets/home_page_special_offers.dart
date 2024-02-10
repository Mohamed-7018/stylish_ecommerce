// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_icon_button.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// Widget for displaying special offers on the home page.
class HomePageSpecialOffers extends StatelessWidget {
  const HomePageSpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.horizontal,
        vertical: 12.vertical,
      ),
      decoration: GlobalAppDecoration.fillWhiteA70001.copyWith(
        borderRadius: GlobalAppRadius.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: GlobalAppImages.imgRectangle56,
            height: 60.vertical,
            width: 75.horizontal,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.horizontal,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 171.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_special_offers".tr,
                        style: Get.textTheme.titleMedium,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.horizontal),
                        child: CustomIconButton(
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          padding: EdgeInsets.all(3.horizontal),
                          decoration: IconButtonStyleHelper.outlineBlack,
                          child: CustomImageView(
                            imagePath: GlobalAppImages.imgClose,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.vertical),
                SizedBox(
                  width: 171.horizontal,
                  child: Text(
                    "msg_we_make_sure_you".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallLight.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
