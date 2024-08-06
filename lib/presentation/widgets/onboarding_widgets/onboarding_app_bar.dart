// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/router/routes.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/buisness_logic/onboarding/onboading_vm.dart';
import 'package:stylish_ecommerce/presentation/buisness_logic/onboarding/onboarding_vm_cubit.dart';
import 'package:stylish_ecommerce/data/model/onboarding/onboarding_screen_model.dart';
import 'package:stylish_ecommerce/presentation/common_widget/app_bar/appbar_subtitle_two.dart';
import 'package:stylish_ecommerce/presentation/common_widget/app_bar/custom_app_bar.dart';

/// Builds the app bar for the onboarding screen.
///
/// The app bar includes the current onboarding page number and a "Skip" button.
/// The current page number is dynamically updated based on the onboarding screen index.
///
/// * [context] - The build context.
/// * Returns a [PreferredSizeWidget] representing the onboarding app bar.
PreferredSizeWidget onboardingAppBar(BuildContext context) {
  return CustomAppBar(
    // Height of the app bar.
    height: 24.vertical,

    // Title section of the app bar.
    title: Padding(
      padding: EdgeInsets.only(left: 17.horizontal),
      child: BlocBuilder<OnboardingViewModel, OnboardingViewModelState>(
        buildWhen: (previous, current) {
          return current is OnboardingChangeIndex;
        },
        builder: (context, state) {
          return BlocBuilder<OnboardingViewModel, OnboardingViewModelState>(
            buildWhen: (previous, current) {
              return current is OnboardingChangeIndex;
            },
            builder: (context, state) {
              // Fetches the current onboarding screen content.
              final OnboardingScreenModel onboardingPagesContent =
                  OnboardingViewModel.onboardingPagesContent[
                      context.read<OnboardingViewModel>().currentPageIndex];

              // Displays the current onboarding page number.
              return RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: onboardingPagesContent.pageNumber.tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    TextSpan(
                      text: "lbl_3".tr,
                      style: CustomTextStyles.titleMediumGray500,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              );
            },
          );
        },
      ),
    ),

    // Action buttons section of the app bar.
    actions: [
      // "Skip" button that navigates to the sign-in page.
      AppbarSubtitleTwo(
        onTap: () {
          Navigator.of(context).pushReplacementNamed(Routes.signInPage);
        },
        text: "lbl_skip".tr,
        margin: EdgeInsets.only(
          left: 17.horizontal,
          top: 1.vertical,
          right: 17.horizontal,
        ),
      ),
    ],
  );
}
