import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// Widget for displaying a sponsored banner on the home page.
class HomePageSposeredBanner extends StatelessWidget {
  const HomePageSposeredBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.vertical,
      ),
      decoration: GlobalAppDecoration.fillWhiteA70001.copyWith(
        borderRadius: GlobalAppRadius.roundedBorder8,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.horizontal,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_sponserd".tr,
              style: CustomTextStyles.titleLargeBlack90002,
            ),
            SizedBox(
              height: 12.vertical,
            ),
            CustomImageView(
              imagePath: GlobalAppImages.imgImage12,
              height: 292.vertical,
              width: 343.horizontal,
              radius: BorderRadius.circular(
                8.horizontal,
              ),
            ),
            SizedBox(
              height: 12.vertical,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_up_to_50_off".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 15.horizontal,
                  ),
                  child: CustomImageView(
                    imagePath: GlobalAppImages.imgArrowRightBlueGray900,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.vertical,
            )
          ],
        ),
      ),
    );
  }
}
