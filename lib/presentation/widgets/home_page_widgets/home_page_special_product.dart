// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_view_all_btn.dart';

/// Widget for displaying a "Banner of Special product" button on the home page.
class HomePageSpecialProduct extends StatelessWidget {
  const HomePageSpecialProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.vertical,
      width: 343.horizontal,
      decoration: GlobalAppDecoration.fillWhiteA70001,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: GlobalAppImages.imgGroup33732,
            height: 156.vertical,
            width: 77.horizontal,
            alignment: Alignment.centerLeft,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 171.vertical,
              width: 11.horizontal,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.25, 0.4),
                  end: const Alignment(1, 0.4),
                  colors: [
                    GlobalAppColors.yellow800,
                    GlobalAppColors.orange100,
                  ],
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: GlobalAppImages.imgRectangle55,
            height: 108.vertical,
            width: 144.horizontal,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
              left: 16.horizontal,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(
                left: 8.horizontal,
                right: 4.horizontal,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12.horizontal,
                vertical: 36.vertical,
              ),
              decoration: GlobalAppDecoration.fillGrayC,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 23.horizontal),
                    child: Text(
                      "lbl_flat_and_heels".tr,
                      style: CustomTextStyles.titleMediumGray90002,
                    ),
                  ),
                  SizedBox(height: 4.vertical),
                  Padding(
                    padding: EdgeInsets.only(right: 2.horizontal),
                    child: Text(
                      "msg_stand_a_chance_to".tr,
                      style: CustomTextStyles.bodySmallGray90002,
                    ),
                  ),
                  SizedBox(height: 10.vertical),
                   HomePageViewAllButton(
                    color: GlobalAppColors.red600,
                    text: "lbl_visit_now".tr,
                    height:28.vertical ,
                    width: 92.horizontal,
                  ),
                  SizedBox(height: 10.vertical),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
