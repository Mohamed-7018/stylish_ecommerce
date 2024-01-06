// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';

/// A custom widget for rendering a subtitle in the app bar.
///
/// This widget provides a stylized subtitle text with optional margin and tap functionality.
///
/// * [text] - The text content of the subtitle.
/// * [margin] - Optional margin to apply around the subtitle.
/// * [onTap] - Callback function to be executed when the subtitle is tapped.
class AppbarSubtitleTwo extends StatelessWidget {
  const AppbarSubtitleTwo({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(key: key);

  /// The text content of the subtitle.
  final String text;

  /// Optional margin to apply around the subtitle.
  final EdgeInsetsGeometry? margin;

  /// Callback function to be executed when the subtitle is tapped.
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
          style: CustomTextStyles.titleMediumSemiBold18.copyWith(
            color: GlobalAppColors.black90002,
          ),
        ),
      ),
    );
  }
}
