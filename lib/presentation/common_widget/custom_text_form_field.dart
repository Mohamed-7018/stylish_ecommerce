import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';

/// A custom widget for a styled TextFormField with various customization options.
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    required this.validator,
    this.onEditingComplete,
    required this.onChanged,
  }) : super(
          key: key,
        );

  /// The alignment of the TextFormField within its parent widget.
  final Alignment? alignment;

  /// The width of the TextFormField.
  final double? width;

  /// The controller for the TextFormField, used to manipulate the text value.
  final TextEditingController? controller;

  /// The focus node for the TextFormField, controlling its focus state.
  final FocusNode? focusNode;

  /// Whether the TextFormField should autofocus when it is first displayed.
  final bool? autofocus;

  /// The text style to apply to the text within the TextFormField.
  final TextStyle? textStyle;

  /// Whether the text within the TextFormField should be obscured (e.g., for passwords).
  final bool? obscureText;

  /// The keyboard action to be displayed on the TextFormField.
  final TextInputAction? textInputAction;

  /// The type of keyboard input for the TextFormField.
  final TextInputType? textInputType;

  /// The maximum number of lines to allow for the TextFormField.
  final int? maxLines;

  /// The hint text to display when the TextFormField is empty.
  final String? hintText;

  /// The text style to apply to the hint text.
  final TextStyle? hintStyle;

  /// A widget to display as a prefix within the TextFormField.
  final Widget? prefix;

  /// Constraints for the size of the prefix widget.
  final BoxConstraints? prefixConstraints;

  /// A widget to display as a suffix within the TextFormField.
  final Widget? suffix;

  /// Constraints for the size of the suffix widget.
  final BoxConstraints? suffixConstraints;

  /// The padding around the content of the TextFormField.
  final EdgeInsets? contentPadding;

  /// The decoration for the border and background of the TextFormField.
  final InputBorder? borderDecoration;

  /// The color to fill the background of the TextFormField.
  final Color? fillColor;

  /// Whether the background of the TextFormField should be filled.
  final bool? filled;

  /// A validator function to validate the input value of the TextFormField.
  final Function(String?) validator;

  /// Callback function triggered when editing is complete.
  final void Function()? onEditingComplete;

  /// Callback function triggered when the value of the TextFormField changes.
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  /// Builds the TextFormField widget with specified customization.
  Widget get textFormFieldWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          onEditingComplete: onEditingComplete,
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.labelLargeGray700,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          onChanged: onChanged,
          validator: (value) {
            return validator(value);
          },
        ),
      );

  /// Gets the InputDecoration for the TextFormField based on customization options.
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? Get.textTheme.titleSmall,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(16.horizontal),
        fillColor: fillColor ?? GlobalAppColors.whiteA70001,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.horizontal),
              borderSide: BorderSide(
                color: GlobalAppColors.gray40002,
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.horizontal),
              borderSide: BorderSide(
                color: GlobalAppColors.gray40002,
                width: 1,
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.horizontal),
              borderSide: BorderSide(
                color: GlobalAppColors.gray50003,
                width: 1,
              ),
            ),
      );
}
