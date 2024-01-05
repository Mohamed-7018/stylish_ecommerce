// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_post/sign_up_post_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_vm/sign_up_vm_cubit.dart';
import 'package:stylish_ecommerce/data/model/user_api/register/sign_up_request_body.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_elevated_button.dart';

/// Button widget for submitting the sign-up form.
class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        if (context
            .read<SignUpViewModelCubit>()
            .formKey
            .currentState!
            .validate()) {
          context.read<SignUpPostCubit>().signup(
                signUpRequestBody: SignUpRequestBody(
                  name: context
                      .read<SignUpViewModelCubit>()
                      .nameFieldController
                      .text,
                  phone: context
                      .read<SignUpViewModelCubit>()
                      .phoneFieldController
                      .text,
                  email: context
                      .read<SignUpViewModelCubit>()
                      .emailFieldController
                      .text,
                  password: context
                      .read<SignUpViewModelCubit>()
                      .passwordFieldController
                      .text,
                ),
              );
        }
      },
      text: "lbl_create_account".tr,
      margin: EdgeInsets.symmetric(horizontal: 4.horizontal),
    );
  }
}
