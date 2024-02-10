// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/app_bar/app_bar_leading_iconbutton.dart';
import 'package:stylish_ecommerce/presentation/common_widget/app_bar/appbar_title_image.dart';
import 'package:stylish_ecommerce/presentation/common_widget/app_bar/appbar_trailing_image.dart';
import 'package:stylish_ecommerce/presentation/common_widget/app_bar/custom_app_bar.dart';

/// Returns a custom app bar for the home page.
///
/// This app bar consists of a leading icon button, a title image,
/// and a trailing circle image.
///
/// [context] The build context.
PreferredSizeWidget homePageAppbar(BuildContext context) {
  return CustomAppBar(
    height: 48.vertical,
    leadingWidth: 48.horizontal,
    leading: AppbarLeadingIconbutton(
      imagePath: GlobalAppImages.imgComponent1,
      margin: EdgeInsets.only(
        left: 16.horizontal,
        top: 4.vertical,
        bottom: 4.vertical,
      ),
    ),
    title: Row(
      children: [
        AppbarTitleImage(
          imagePath: GlobalAppImages.imgLogoIpsum2551,
          height: 31.vertical,
          width: 112.horizontal,
          margin: EdgeInsets.only(
            left: 83.horizontal,
          ),
        ),
      ],
    ),
    actions: [
      AppbarTrailingCircleimage(
        imagePath: GlobalAppImages.img2289Skvnqsbgqu1pidewmjgtmte2,
        margin: EdgeInsets.only(
          left: 79.horizontal,
          right: 12.horizontal,
        ),
      )
    ],
  );
}
