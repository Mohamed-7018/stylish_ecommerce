// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/already_have_account.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/password_validator.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/sign_up_bloc_listener.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/sign_up_btn.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/sign_up_form.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/social_login_icons.dart';

/// Widget for the SignUpPage.
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey =
        GlobalKey<FormState>(debugLabel: 'singup_key');
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalAppColors.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 29.horizontal,
              vertical: 18.vertical,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_create_an_account2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Get.textTheme.displaySmall!.copyWith(
                      height: 1.19,
                    ),
                  ),
                ),
                SizedBox(height: 32.vertical),
                 SignUpForm(formKey: formKey,),
                SizedBox(height: 19.vertical),
                const SignUpBlocListener(),
                const PasswordValidations(),
                SizedBox(height: 35.vertical),
                 SignUpButton(formKey: formKey,),
                SizedBox(height: 35.vertical),
                const SocialLoginIcons(),
                SizedBox(height: 29.vertical),
                const AlreadyHaveAccount(),
                SizedBox(height: 5.vertical),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
