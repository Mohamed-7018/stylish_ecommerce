// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/app_regex.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/buisness_logic/sign_in/sign_in_Vm/sign_in_vm_cubit.dart';
import 'package:stylish_ecommerce/presentation/buisness_logic/sign_in/sign_in_Vm/sign_in_vm_state.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_text_form_field.dart';

/// A widget that combines an email input field and a password input field
/// for the sign-in process.
class EmailAndPasswordTextField extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const EmailAndPasswordTextField({super.key, required this.formKey});

  @override
  State<EmailAndPasswordTextField> createState() =>
      _EmailAndPasswordTextFieldState();
}

class _EmailAndPasswordTextFieldState extends State<EmailAndPasswordTextField> {
  late TextEditingController passwordController;

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    passwordController =
        context.read<SignInViewModelCubit>().passwordFieldController;
    return Form(
      key: widget.formKey,
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(
            left: 7.horizontal,
            right: 1.horizontal,
          ),
          child: CustomTextFormField(
            onChanged: (value) {
              widget.formKey.currentState!.validate();
            },
            fillColor: GlobalAppColors.gray10001,
            controller:
                context.read<SignInViewModelCubit>().emailFieldController,
            hintText: "msg_username_or_email".tr,
            textInputType: TextInputType.emailAddress,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(
                11.horizontal,
                16.vertical,
                3.horizontal,
                15.vertical,
              ),
              child: CustomImageView(
                imagePath: GlobalAppImages.imgUserOnerror,
                height: 24.adaptSize,
                width: 24.adaptSize,
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
            contentPadding: EdgeInsets.only(
              top: 20.vertical,
              right: 30.horizontal,
              bottom: 20.vertical,
            ),
          ),
        ),
        SizedBox(
          height: 31.vertical,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 7.horizontal,
            right: 1.horizontal,
          ),
          child: BlocBuilder<SignInViewModelCubit, SignInViewModelState>(
            buildWhen: (previousState, state) {
              return state is SignInTogglePasswordState;
            },
            builder: (context, state) {
              return CustomTextFormField(
                onChanged: (value) {
                  widget.formKey.currentState!.validate();
                },
                focusNode: context.read<SignInViewModelCubit>().emailFocusNode,
                onEditingComplete: () =>
                    context.read<SignInViewModelCubit>().emailEditingControl(),
                fillColor: GlobalAppColors.gray10001,
                controller: context
                    .read<SignInViewModelCubit>()
                    .passwordFieldController,
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
                    context.read<SignInViewModelCubit>().togglePasswordState();
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
                  if (value == null || value.isEmpty) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText:
                    context.read<SignInViewModelCubit>().isPasswordHidden,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20.vertical,
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
