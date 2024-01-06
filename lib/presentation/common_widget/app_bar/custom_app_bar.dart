import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';

/// A custom app bar that allows fine-grained customization of its appearance.
///
/// This widget extends the Flutter [AppBar] and provides additional customization options.
/// It can be used to create app bars with various styles and layouts.
///
/// * [height] - The height of the app bar. If not provided, it defaults to the standard height.
/// * [styleType] - The style type of the app bar, used for additional styling.
/// * [leadingWidth] - The width of the leading widget. If not provided, it defaults to 0.
/// * [leading] - The leading widget to be displayed in the app bar.
/// * [title] - The title widget to be displayed in the app bar.
/// * [centerTitle] - Whether to center-align the title. Defaults to false.
/// * [actions] - A list of action widgets to be displayed on the right side of the app bar.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(key: key);

  /// The height of the app bar. If not provided, it defaults to the standard height.
  final double? height;

  /// The style type of the app bar, used for additional styling.
  final Style? styleType;

  /// The width of the leading widget. If not provided, it defaults to 0.
  final double? leadingWidth;

  /// The leading widget to be displayed in the app bar.
  final Widget? leading;

  /// The title widget to be displayed in the app bar.
  final Widget? title;

  /// Whether to center-align the title. Defaults to false.
  final bool? centerTitle;

  /// A list of action widgets to be displayed on the right side of the app bar.
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.vertical,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 56.vertical,
      );

  /// Gets the background style based on the specified [styleType].
  _getStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Container(
          height: 1.vertical,
          width: double.maxFinite,
          margin: EdgeInsets.only(
            top: 47.79.vertical,
            bottom: 7.209999.vertical,
          ),
          decoration: BoxDecoration(
            color: GlobalAppColors.gray4006c,
          ),
        );
      default:
        return null;
    }
  }
}

/// An enumeration of possible app bar styles.
enum Style {
  bgFill,
}
