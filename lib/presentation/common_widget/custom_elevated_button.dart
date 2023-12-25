import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/base_button.dart';

/// CustomElevatedButton is a customized button widget that extends BaseButton.
/// It provides additional customization options such as decoration, leftIcon, and rightIcon.
class CustomElevatedButton extends BaseButton {
  /// [decoration] specifies the decoration of the button.
  final BoxDecoration? decoration;

  /// [leftIcon] is an optional widget to be displayed on the left side of the button text.
  final Widget? leftIcon;

  /// [rightIcon] is an optional widget to be displayed on the right side of the button text.
  final Widget? rightIcon;

  /// Creates a [CustomElevatedButton].
  ///
  /// [key] is an optional parameter to provide a key to this widget.
  /// [decoration] is used to set the decoration of the button.
  /// [leftIcon] is an optional widget to be displayed on the left side of the button text.
  /// [rightIcon] is an optional widget to be displayed on the right side of the button text.
  /// [margin] sets the margin of the button.
  /// [onPressed] is the callback function when the button is pressed.
  /// [buttonStyle] is used to define the visual properties of the button.
  /// [alignment] specifies the alignment of the button.
  /// [buttonTextStyle] sets the text style of the button.
  /// [isDisabled] indicates whether the button is disabled or not.
  /// [height] sets the height of the button.
  /// [width] sets the width of the button.
  /// [text] is the text displayed on the button.
  const CustomElevatedButton({
    super.key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget,
          )
        : buildElevatedButtonWidget;
  }

  /// Constructs the widget for [CustomElevatedButton].
  Widget get buildElevatedButtonWidget => Container(
        height: height ?? 55.vertical,
        width: width ?? double.maxFinite,
        margin: margin,
        decoration: decoration,
        child: ElevatedButton(
          style: buttonStyle ?? ElevatedButton.styleFrom(
            backgroundColor: Get.colorScheme.primary,
          ),
          onPressed: isDisabled ?? false ? null : onPressed ?? () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leftIcon ?? const SizedBox.shrink(),
              Text(
                text,
                style: buttonTextStyle ?? Get.textTheme.titleLarge,
              ),
              rightIcon ?? const SizedBox.shrink(),
            ],
          ),
        ),
      );
}
