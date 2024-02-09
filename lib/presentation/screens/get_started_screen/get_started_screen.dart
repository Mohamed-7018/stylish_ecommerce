// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/widgets/get_started_screen.dart/get_started_section.dart';

/// Represents the screen displayed to prompt users to get started with the app.
class GetStartedScreen extends StatelessWidget {
  /// Constructor for the GetStartedScreen.
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        // backgroundColor: GlobalAppColors.whiteA70001,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            // Set background image for the screen
            image: DecorationImage(
              image: AssetImage(
                GlobalAppImages.imgGroup194,
              ),
              fit: BoxFit.cover,
              opacity: 0.8, // Set opacity for the background image
            ),
          ),
          child: SizedBox(
            width: 390.horizontal,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Display the GetStartedSection widget to prompt users to get started
                GetStartedSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
