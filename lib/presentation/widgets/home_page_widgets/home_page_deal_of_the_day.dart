import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// Widget for displaying the "Deal of the Day" section on the home page.
class HomePageDealOftheDay extends StatelessWidget {
  const HomePageDealOftheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.horizontal,
      height: 60.vertical,
      padding: EdgeInsets.symmetric(
        horizontal: 8.horizontal,
        vertical: 8.vertical,
      ),
      decoration: GlobalAppDecoration.fillBlueA.copyWith(
        borderRadius: GlobalAppRadius.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.vertical,
                child: Text(
                  "lbl_deal_of_the_day".tr,
                  style: CustomTextStyles.titleMediumWhiteA70001,
                ),
              ),
              SizedBox(height: 8.vertical),
              Row(
                children: [
                  CustomImageView(
                    imagePath: GlobalAppImages.imgComponent1WhiteA70001,
                    height: 16.vertical,
                    width: 16.horizontal,
                  ),
                  SizedBox(
                    height: 16.vertical,
                    child: Text(
                      "msg_22h_55m_20s_remaining".tr,
                      style: CustomTextStyles.bodySmallWhiteA70001,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 89.horizontal,
            height: 28.vertical,
            decoration: BoxDecoration(
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
                  "lbl_view_all".tr,
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
          )
        ],
      ),
    );
  }
}
