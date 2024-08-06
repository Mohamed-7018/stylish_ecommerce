// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/buisness_logic/onboarding/onboading_vm.dart';
import 'package:stylish_ecommerce/presentation/buisness_logic/onboarding/onboarding_vm_cubit.dart';

/// A widget representing the footer section of the onboarding screen.
///
/// The footer includes navigation buttons for moving between onboarding pages.
///
/// * [onBoardingController] - The controller for managing the onboarding page view.
/// * [length] - The total number of onboarding pages.
class OnboardingFooter extends StatelessWidget {
  final PageController onBoardingController;
  final int length;

  /// Constructor for the [OnboardingFooter] class.
  ///
  /// * [onBoardingController] - The controller for managing the onboarding page view.
  /// * [length] - The total number of onboarding pages.
  const OnboardingFooter(
      {super.key, required this.onBoardingController, required this.length});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Button for navigating to the previous onboarding page.
          GestureDetector(
            onTap: () {
              context.read<OnboardingViewModel>().decreasePageNumber();
              onBoardingController.jumpToPage(
                  context.read<OnboardingViewModel>().currentPageIndex);
            },
            child: BlocBuilder<OnboardingViewModel, OnboardingViewModelState>(
              buildWhen: (previous, current) {
                return current is OnboardingChangeIndex;
              },
              builder: (context, state) {
                return context.read<OnboardingViewModel>().currentPageIndex == 0
                    ? Container()
                    : Text(
                        "lbl_prev".tr,
                        style: CustomTextStyles.titleMediumGray40001,
                      );
              },
            ),
          ),
          const Spacer(
            flex: 46,
          ),
          // Indicator dots for showing the current onboarding page.
          Container(
            height: 10.vertical,
            margin: EdgeInsets.only(
              top: 5.vertical,
              bottom: 6.vertical,
            ),
            child: SmoothPageIndicator(
              onDotClicked: (index) {
                context.read<OnboardingViewModel>().changeNumber(index);
                onBoardingController.jumpToPage(index);
              },
              controller: onBoardingController,
              count: length,
              effect: ExpandingDotsEffect(
                spacing: 10,
                activeDotColor: GlobalAppColors.blueGray90001,
                dotColor: GlobalAppColors.blueGray90001.withOpacity(0.2),
                dotHeight: 10.vertical,
                dotWidth: 10.horizontal,
              ),
            ),
          ),
          const Spacer(
            flex: 53,
          ),
          // Button for navigating to the next onboarding page.
          GestureDetector(
            onTap: () {
              context.read<OnboardingViewModel>().increasePageNumber();
              onBoardingController.jumpToPage(
                  context.read<OnboardingViewModel>().currentPageIndex);
            },
            child: BlocBuilder<OnboardingViewModel, OnboardingViewModelState>(
              buildWhen: (previous, current) {
                return current is OnboardingChangeIndex;
              },
              builder: (context, state) {
                return context.read<OnboardingViewModel>().currentPageIndex ==
                        length - 1
                    ? Container()
                    : Text(
                        "lbl_next".tr,
                        style: CustomTextStyles.titleMediumPrimary,
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
