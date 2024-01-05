import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_ecommerce/core/helper/app_regex.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_vm/sign_up_vm_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_vm/sign_up_vm_state.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_text_form_field.dart';

/// Widget for entering and validating Password during the sign-up process.
class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpViewModelCubit, SignUpViewModelState>(
      buildWhen: (previous, current) {
        return current is SignUpTogglePasswordState;
      },
      builder: (context, state) {
        return CustomTextFormField(
          onChanged: (value) {
            context
                .read<SignUpViewModelCubit>()
                .formKey
                .currentState!
                .validate();
          },
          fillColor: GlobalAppColors.gray10001,
          controller:
              context.read<SignUpViewModelCubit>().passwordFieldController,
          focusNode: context.read<SignUpViewModelCubit>().passwordFocusNode,
          hintText: "lbl_password".tr,
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
              imagePath: GlobalAppImages.imgTrophy,
              height: 20.vertical,
              width: 16.horizontal,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 55.vertical,
          ),
          suffix: InkWell(
            onTap: () {
              context.read<SignUpViewModelCubit>().togglePasswordState();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  30.horizontal, 18.vertical, 16.horizontal, 17.vertical),
              child: CustomImageView(
                imagePath: GlobalAppImages.imgEye,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 55.vertical,
          ),
          validator: (value) {
            if (value == null ||
                !AppRegex.hasLowerCase(value) ||
                !AppRegex.hasUpperCase(value) ||
                !AppRegex.hasLowerCase(value) ||
                !AppRegex.hasSpecialCharacter(value) ||
                !AppRegex.isPasswordValid(value) ||
                !AppRegex.hasNumber(value) ||
                !AppRegex.hasMinLength(value)) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: context.read<SignUpViewModelCubit>().isPasswordHidden,
          contentPadding: EdgeInsets.symmetric(
            vertical: 20.vertical,
          ),
        );
      },
    );
  }
}
