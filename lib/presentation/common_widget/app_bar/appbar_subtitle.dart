// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';

/// Represents a custom subtitle for the app bar.
class AppbarSubtitle extends StatelessWidget {
  /// Constructor for AppbarSubtitle.
  const AppbarSubtitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(key: key);

  /// The text to be displayed as the subtitle.
  final String text;
  
  /// Margin around the subtitle.
  final EdgeInsetsGeometry? margin;

  /// Callback function when the subtitle is tapped.
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.titleMediumLibreCaslonTextBlueA20001.copyWith(
            color: GlobalAppColors.blueA20001,
          ),
        ),
      ),
    );
  }
}
