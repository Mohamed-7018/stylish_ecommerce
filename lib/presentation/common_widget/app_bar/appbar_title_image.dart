// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// Represents a custom title image for the app bar.
class AppbarTitleImage extends StatelessWidget {
  /// Constructor for AppbarTitleImage.
  const AppbarTitleImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.width,
    this.height,
    this.onTap,
  }) : super(key: key);

  /// Path to the image asset.
  final String? imagePath;

  /// Margin around the title image.
  final EdgeInsetsGeometry? margin;

  /// Height of the title image.
  final double? height;

  /// Width of the title image.
  final double? width;

  /// Callback function when the title image is tapped.
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: onTap,
        child: CustomImageView(
          imagePath: imagePath,
          height: height ?? 19.vertical,
          width: width ?? 9.horizontal,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
