// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_icon_button.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// Represents a custom leading icon button for the app bar.
class AppbarLeadingIconbutton extends StatelessWidget {
  /// Constructor for AppbarLeadingIconbutton.
  const AppbarLeadingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(key: key);

  /// Path to the image asset.
  final String? imagePath;

  /// Margin around the icon button.
  final EdgeInsetsGeometry? margin;

  /// Callback function when the icon button is tapped.
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: GestureDetector(
          onTap: onTap,
          child: CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: GlobalAppImages.imgComponent1,
            ),
          ),
        ),
      ),
    );
  }
}
