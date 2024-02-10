import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_view_all_btn.dart';

/// Widget for displaying the "Trending products" section on the home page.
class HomePageTrendingPrducts extends StatelessWidget {
  const HomePageTrendingPrducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.horizontal,
      height: 60.vertical,
      padding: EdgeInsets.symmetric(
        horizontal: 8.horizontal,
        vertical: 8.vertical,
      ),
      decoration: GlobalAppDecoration.fillPink.copyWith(
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
                  "msg_trending_products".tr,
                  style: CustomTextStyles.titleMediumWhiteA70001,
                ),
              ),
              SizedBox(height: 8.vertical),
              Row(
                children: [
                  CustomImageView(
                    imagePath: GlobalAppImages.imgComponent1WhiteA7000116x16,
                    height: 16.vertical,
                    width: 16.horizontal,
                  ),
                  SizedBox(
                    height: 16.vertical,
                    child: Text(
                      "msg_last_date_29_02_22".tr,
                      style: CustomTextStyles.bodySmallWhiteA70001,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const HomePageViewAllButton()
        ],
      ),
    );
  }
}