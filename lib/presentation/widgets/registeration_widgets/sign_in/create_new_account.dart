import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';

/// A widget that displays a "Create New Account" link with localized text.
class CreateNewAccount extends StatelessWidget {
  /// Constructor for the CreateNewAccount widget.
  const CreateNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "msg_create_an_account".tr,
          style: CustomTextStyles.bodyMediumGray70001,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.horizontal),
          child: Text(
            "lbl_sign_up".tr,
            style: CustomTextStyles.titleSmallPrimary.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
