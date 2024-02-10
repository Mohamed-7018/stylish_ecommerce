import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// Widget for displaying new arrivals on the home page.
class HomePageNewArrival extends StatelessWidget {
  const HomePageNewArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: GlobalAppDecoration.fillWhiteA70001.copyWith(
        borderRadius: GlobalAppRadius.roundedBorder8,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 200.vertical,
            width: 343.horizontal,
            child: CustomImageView(
              imagePath: GlobalAppImages.imgImage10,
              height: 200.vertical,
              width: 343.horizontal,
              radius: BorderRadius.vertical(
                top: Radius.circular(8.horizontal),
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            height: 8.vertical,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.horizontal,
              right: 8.horizontal,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_new_arrivals".tr,
                      style: CustomTextStyles.titleLargeBlack90002,
                    ),
                    SizedBox(height: 3.vertical),
                    Text(
                      "msg_summer_25_collections".tr,
                      style: CustomTextStyles.bodyLarge_1,
                    ),
                  ],
                ),
                Container(
                  width: 89.horizontal,
                  height: 28.vertical,
                  decoration: BoxDecoration(
                    color: GlobalAppColors.pink30001,
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
          ),
          SizedBox(
            height: 16.vertical,
          ),
        ],
      ),
    );
  }
}
