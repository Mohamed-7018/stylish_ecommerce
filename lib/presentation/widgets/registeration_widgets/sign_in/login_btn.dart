// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_in/sign_in_Vm/sign_in_vm_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_in/sign_in_post/sign_in_post_cubit.dart';
import 'package:stylish_ecommerce/data/model/user_api/sign_in/sign_in_request_body.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_elevated_button.dart';

/// A button widget for initiating the login process.
class LoginButton extends StatelessWidget {
    final GlobalKey<FormState> formKey;

  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        if (formKey
            .currentState!
            .validate()) {
          context.read<SignInPostCubit>().login(
                loginRequestBody: SignInRequestBody(
                  email: context
                      .read<SignInViewModelCubit>()
                      .emailFieldController
                      .text,
                  password: context
                      .read<SignInViewModelCubit>()
                      .passwordFieldController
                      .text,
                ),
              );
        }
      },
      text: "lbl_login".tr,
      margin: EdgeInsets.symmetric(horizontal: 4.horizontal),
    );
  }
}
