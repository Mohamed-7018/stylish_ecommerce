// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// A custom search view widget with customizable properties.
class CustomSearchView extends StatelessWidget {
  const CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
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
    this.filled = false,
    this.validator,
    this.onChanged,
  }) : super(
          key: key,
        );

  final Alignment? alignment;
  final double? width;
  final TextEditingController? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextStyle? textStyle;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSearchViewWidget(context),
          )
        : _buildSearchViewWidget(context);
  }

  Widget _buildSearchViewWidget(BuildContext context) => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          scrollPadding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.bodyMediumGray40003,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: _decoration,
          validator: validator,
          onChanged: (String value) {
            onChanged?.call(value);
          },
        ),
      );

  InputDecoration get _decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodyMediumGray40003,
        prefixIcon: prefix ??
            Container(
              margin: EdgeInsets.fromLTRB(
                16.horizontal,
                10.vertical,
                10.horizontal,
                10.vertical,
              ),
              child: CustomImageView(
                imagePath: GlobalAppImages.imgSearch,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
        prefixIconConstraints: prefixConstraints ??
            BoxConstraints(
              maxHeight: 40.vertical,
            ),
        suffixIcon: suffix ??
            Container(
              margin: EdgeInsets.fromLTRB(
                30.horizontal,
                8.vertical,
                16.horizontal,
                8.vertical,
              ),
              child: CustomImageView(
                imagePath: GlobalAppImages.imgComponent52,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
        suffixIconConstraints: suffixConstraints ??
            BoxConstraints(
              maxHeight: 40.vertical,
            ),
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 11.vertical),
        fillColor: fillColor,
        filled: filled,
        border: borderDecoration ?? InputBorder.none,
        enabledBorder: borderDecoration ?? InputBorder.none,
        focusedBorder: borderDecoration ?? InputBorder.none,
      );
}

/// Extension on [CustomSearchView] to facilitate inclusion of all types of border styles.
extension SearchViewStyleHelper on CustomSearchView {
  /// Returns an outline border with black color.
  static OutlineInputBorder get outlineBlack => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.horizontal),
        borderSide: BorderSide.none,
      );
}
