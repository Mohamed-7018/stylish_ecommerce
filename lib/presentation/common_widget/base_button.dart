// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// A customizable base button widget that wraps an ElevatedButton.
class BaseButton extends StatelessWidget {
  /// Creates a [BaseButton].
  ///
  /// The [text] parameter is required and represents the text displayed on the button.
  /// The [onPressed] callback is invoked when the button is pressed.
  /// The [buttonStyle] allows customization of the button's visual appearance.
  /// The [buttonTextStyle] allows customization of the text style within the button.
  /// The [isDisabled] parameter determines whether the button is disabled.
  /// The [height] and [width] parameters control the size of the button.
  /// The [margin] parameter specifies the margin around the button.
  /// The [alignment] parameter controls the alignment of the button within its container.
  const BaseButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.buttonStyle,
    this.buttonTextStyle,
    this.isDisabled,
    this.height,
    this.width,
    this.margin,
    this.alignment,
  }) : super(key: key);

  /// The text displayed on the button.
  final String text;

  /// Callback function invoked when the button is pressed.
  final VoidCallback? onPressed;

  /// Customization of the button's visual appearance.
  final ButtonStyle? buttonStyle;

  /// Customization of the text style within the button.
  final TextStyle? buttonTextStyle;

  /// Determines whether the button is disabled.
  final bool? isDisabled;

  /// The height of the button.
  final double? height;

  /// The width of the button.
  final double? width;

  /// The margin around the button.
  final EdgeInsets? margin;

  /// The alignment of the button within its container.
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      alignment: alignment,
      child: ElevatedButton(
        onPressed: isDisabled == true ? null : onPressed,
        style: buttonStyle ?? ElevatedButton.styleFrom(),
        child: Text(
          text,
          style: buttonTextStyle ?? const TextStyle(),
        ),
      ),
    );
  }
}
