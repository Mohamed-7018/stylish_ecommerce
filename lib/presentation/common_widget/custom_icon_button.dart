import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';

/// CustomIconButton is a widget that provides a customizable icon button.
class CustomIconButton extends StatelessWidget {
  /// [alignment] is used to set the alignment of the button.
  final Alignment? alignment;

  /// [height] sets the height of the button.
  final double? height;

  /// [width] sets the width of the button.
  final double? width;

  /// [padding] sets the padding around the button.
  final EdgeInsetsGeometry? padding;

  /// [decoration] is used to define the decoration of the button.
  final BoxDecoration? decoration;

  /// [child] is the widget displayed inside the button.
  final Widget? child;

  /// [onTap] is the callback function when the button is tapped.
  final VoidCallback? onTap;

  /// Creates a [CustomIconButton].
  const CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  /// Constructs the widget for [CustomIconButton].
  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(20.horizontal),
                  gradient: LinearGradient(
                    begin: const Alignment(0.49, 0),
                    end: const Alignment(0.49, 1),
                    colors: [
                      GlobalAppColors.gray40003,
                      GlobalAppColors.gray40003.withOpacity(0),
                    ],
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc.
extension IconButtonStyleHelper on CustomIconButton {
  /// Returns a BoxDecoration for an outlined primary button.
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: GlobalAppColors.gray10002,
        borderRadius: BorderRadius.circular(27.horizontal),
        border: Border.all(
          color: Get.colorScheme.primary,
          width: 1.horizontal,
        ),
      );

  /// Returns a BoxDecoration for a filled gray button.
  static BoxDecoration get fillGray => BoxDecoration(
        color: GlobalAppColors.gray10003,
        borderRadius: BorderRadius.circular(16.horizontal),
      );

  /// Returns a BoxDecoration for an outlined black button.
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: GlobalAppColors.whiteA70001,
        borderRadius: BorderRadius.circular(9.horizontal),
        border: Border.all(
          color: GlobalAppColors.black90002.withOpacity(0.15),
          width: 1.horizontal,
        ),
        boxShadow: [
          BoxShadow(
            color: GlobalAppColors.black90002.withOpacity(0.2),
            spreadRadius: 2.horizontal,
            blurRadius: 2.horizontal,
            offset: const Offset(
              0,
              1,
            ),
          ),
        ],
      );

  /// Returns a BoxDecoration for a button with a blue to indigo gradient.
  static BoxDecoration get gradientBlueAToIndigo => BoxDecoration(
        borderRadius: BorderRadius.circular(20.horizontal),
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            GlobalAppColors.blueA200,
            GlobalAppColors.indigo900,
          ],
        ),
      );

  /// Returns a BoxDecoration for a button with a green to green gradient.
  static BoxDecoration get gradientGreenAToGreen => BoxDecoration(
        borderRadius: BorderRadius.circular(20.horizontal),
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            GlobalAppColors.greenA200,
            GlobalAppColors.green500,
          ],
        ),
      );
}
