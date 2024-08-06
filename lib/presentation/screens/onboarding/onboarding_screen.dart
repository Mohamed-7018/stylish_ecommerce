// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/buisness_logic/onboarding/onboading_vm.dart';
import 'package:stylish_ecommerce/data/model/onboarding/onboarding_screen_model.dart';
import 'package:stylish_ecommerce/presentation/widgets/onboarding_widgets/onboarding_app_bar.dart';
import 'package:stylish_ecommerce/presentation/widgets/onboarding_widgets/onboarding_footer.dart';
import 'package:stylish_ecommerce/presentation/widgets/onboarding_widgets/onboarding_item.dart';

/// Widget representing the onboarding screen, guiding users through the app features.
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller for managing the onboarding page view.
    PageController onBoardingController = PageController();

    // List of onboarding screen content models.
    final List<OnboardingScreenModel> onboardingPagesContent =
        OnboardingViewModel.onboardingPagesContent;

    return SafeArea(
      child: Scaffold(
        // App bar for the onboarding screen.
        appBar: onboardingAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 17.horizontal,
            vertical: 24.vertical,
          ),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: onBoardingController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: onboardingPagesContent.length,
                  onPageChanged: (index) {
                    context.read<OnboardingViewModel>().changeNumber(index);
                  },
                  itemBuilder: (context, index) {
                    return OnboardingItem(
                      onboardingScreenModel: onboardingPagesContent[index],
                    );
                  },
                ),
              ),
              // Footer section of the onboarding screen.
              OnboardingFooter(
                onBoardingController: onBoardingController,
                length: onboardingPagesContent.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
