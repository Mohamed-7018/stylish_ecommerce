import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_view_all_btn.dart';

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
                HomePageViewAllButton(
                  color: GlobalAppColors.pink30001,
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
