// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/router/routes.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_in/create_new_account.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_in/email_and_password_textfield.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_in/login_btn.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_in/sign_in_bloc_listener.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/social_login_icons.dart';

/// A screen for user sign-in, allowing users to log in to their accounts.
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey =
         GlobalKey<FormState>(debugLabel: 'singin_key');
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalAppColors.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.horizontal,
            vertical: 17.vertical,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 7.horizontal),
                  child: Text(
                    "lbl_welcome_back".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Get.textTheme.displaySmall!.copyWith(
                      height: 1.19,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.vertical),
              EmailAndPasswordTextField(
                formKey: formKey,
              ),
              SizedBox(height: 10.vertical),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.fogetPasswordPage);
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "msg_forgot_password".tr,
                    style: CustomTextStyles.bodySmallPrimary,
                  ),
                ),
              ),
              SizedBox(height: 50.vertical),
              LoginButton(
                formKey: formKey,
              ),
              const SignInBlocListener(),
              SizedBox(height: 75.vertical),
              const SocialLoginIcons(),
              SizedBox(height: 28.vertical),
              const CreateNewAccount(),
              SizedBox(height: 5.vertical),
            ],
          ),
        ),
      ),
    );
  }
}
