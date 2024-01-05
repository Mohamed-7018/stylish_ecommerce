// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';

/// Widget that displays a message indicating the user already has an account
/// and provides a link to the login screen.
class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "msg_i_already_have_an".tr,
          style: CustomTextStyles.bodyMediumPoppinsGray70001,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.horizontal,
            bottom: 3.vertical,
          ),
          child: Text(
            "lbl_login".tr,
            style: CustomTextStyles.titleSmallPrimary.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
