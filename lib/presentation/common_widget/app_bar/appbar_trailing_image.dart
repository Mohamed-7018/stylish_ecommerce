// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// Represents a custom trailing circle image for the app bar.
class AppbarTrailingCircleimage extends StatelessWidget {
  /// Constructor for AppbarTrailingCircleimage.
  const AppbarTrailingCircleimage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(key: key);

  /// Path to the image asset.
  final String? imagePath;

  /// Margin around the circle image.
  final EdgeInsetsGeometry? margin;

  /// Callback function when the circle image is tapped.
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: GlobalAppRadius.circleBorder20,
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: GestureDetector(
          onTap: onTap,
          child: CustomImageView(
            imagePath: imagePath,
            height: 40.adaptSize,
            width: 40.adaptSize,
            fit: BoxFit.contain,
            radius: BorderRadius.circular(
              20.horizontal,
            ),
          ),
        ),
      ),
    );
  }
}
