import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/model/onboarding/onboarding_screen_model.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
/// A widget representing an individual onboarding page item.
///
/// * [onboardingScreenModel] - The data model containing information about the onboarding page.
class OnboardingItem extends StatelessWidget {
  final OnboardingScreenModel onboardingScreenModel;

  /// Constructor for the [OnboardingItem] class.
  ///
  /// * [onboardingScreenModel] - The data model containing information about the onboarding page.
  const OnboardingItem({super.key, required this.onboardingScreenModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 84.vertical),
        // Displaying the image associated with the onboarding page.
        CustomImageView(
          imagePath: onboardingScreenModel.image,
          height: 300.adaptSize,
          width: 300.adaptSize,
        ),
        SizedBox(height: 14.vertical),
        // Displaying the title of the onboarding page.
        Text(
          onboardingScreenModel.title.tr,
          style: Get.textTheme.headlineSmall,
        ),
        SizedBox(height: 12.vertical),
        SizedBox(
          width: 338.horizontal,
          // Displaying the description of the onboarding page with a maximum of 3 lines.
          child: Text(
            onboardingScreenModel.description.tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleSmallGray50003.copyWith(
              height: 1.71,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
