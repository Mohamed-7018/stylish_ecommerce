// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/router/routes.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_elevated_button.dart';

/// Represents the section displayed to prompt users to get started with the app.
class GetStartedSection extends StatelessWidget {
  /// Constructor for the GetStartedSection.
  const GetStartedSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 53.horizontal,
        vertical: 34.vertical,
      ),
      // decoration: GlobalAppDecoration.gradientBlackToBlack,
      child: Column(
        children: [
          SizedBox(height: 36.vertical),
          SizedBox(
            width: 280.horizontal,
            child: Text(
              // Displaying localized message for authenticity.
              "msg_you_want_authentic".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.displaySmallWhiteA70001.copyWith(
                fontSize: 30.fSize,
              ),
            ),
          ),
          SizedBox(height: 9.vertical),
          Text(
            // Displaying localized message for finding products.
            "msg_find_it_here_buy".tr,
            style: CustomTextStyles.bodyMediumGray10003,
          ),
          SizedBox(height: 44.vertical),
          CustomElevatedButton(
            // Displaying localized button text.
            text: "lbl_get_started".tr,
            buttonTextStyle: CustomTextStyles.titleLarge23,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Routes.homePage);
            },
          ),
        ],
      ),
    );
  }
}
