// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/app_regex.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_vm/sign_up_vm_cubit.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_text_form_field.dart';

/// Widget for entering and validating email addresses during the sign-up process.
class EmailTextField extends StatelessWidget {
    final GlobalKey<FormState> formKey;

  const EmailTextField({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onChanged: (value) {
        formKey.currentState!.validate();
      },
      fillColor: GlobalAppColors.gray10001,
      controller: context.read<SignUpViewModelCubit>().emailFieldController,
      focusNode: context.read<SignUpViewModelCubit>().emailFocusNode,
      onEditingComplete:
          context.read<SignUpViewModelCubit>().emailEditingControl,
      hintText: "msg_username_or_email".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(
          15.horizontal,
          17.vertical,
          11.horizontal,
          18.vertical,
        ),
        child: CustomImageView(
          imagePath: GlobalAppImages.imgUserOnerror,
          height: 20.vertical,
          width: 16.horizontal,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 55.vertical,
      ),
      validator: (value) {
        if (value == null || (!AppRegex.isEmailValid(value))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
      obscureText: false,
      contentPadding: EdgeInsets.symmetric(
        vertical: 20.vertical,
      ),
    );
  }
}
