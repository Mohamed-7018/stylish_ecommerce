// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_ecommerce/core/helper/app_regex.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_post/sign_up_post_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_vm/sign_up_vm_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_vm/sign_up_vm_state.dart';
import 'package:stylish_ecommerce/data/model/user_api/register/sign_up_request_body.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_elevated_button.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_icon_button.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_text_form_field.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/password_validator.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/sign_up_bloc_listener.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController passwordController;

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    passwordController =
        context.read<SignUpViewModelCubit>().passwordFieldController;
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalAppColors.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: context.read<SignUpViewModelCubit>().formKey,
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
                  SizedBox(
                    height: 32.vertical,
                  ),
                  CustomTextFormField(
                    onChanged: (value) {
                      context
                          .read<SignUpViewModelCubit>()
                          .formKey
                          .currentState!
                          .validate();
                    },
                    fillColor: GlobalAppColors.gray10001,
                    controller: context
                        .read<SignUpViewModelCubit>()
                        .nameFieldController,
                    focusNode:
                        context.read<SignUpViewModelCubit>().nameFocusNode,
                    onEditingComplete:
                        context.read<SignUpViewModelCubit>().nameEditingControl,
                    hintText: "msg_name".tr,
                    textInputType: TextInputType.emailAddress,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(
                        11.horizontal,
                        16.vertical,
                        3.horizontal,
                        15.vertical,
                      ),
                      child: CustomImageView(
                        imagePath: GlobalAppImages.igNameIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 55.vertical,
                    ),
                    validator: (value) {
                      if (value == null  || AppRegex.isEmpty(value)) {
                        return "err_msg_please_enter_valid_name".tr;
                      }
                      return null;
                    },
                    contentPadding: EdgeInsets.only(
                      top: 20.vertical,
                      right: 30.horizontal,
                      bottom: 20.vertical,
                    ),
                  ),
                  SizedBox(
                    height: 31.vertical,
                  ),
                  CustomTextFormField(
                    onChanged: (value) {
                      context
                          .read<SignUpViewModelCubit>()
                          .formKey
                          .currentState!
                          .validate();
                    },
                    fillColor: GlobalAppColors.gray10001,
                    controller: context
                        .read<SignUpViewModelCubit>()
                        .phoneFieldController,
                    focusNode:
                        context.read<SignUpViewModelCubit>().phoneFocusNode,
                    onEditingComplete: context
                        .read<SignUpViewModelCubit>()
                        .phoneEditingControl,
                    hintText: "msg_phone_number".tr,
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
                        imagePath: GlobalAppImages.imgPhone,
                        height: 20.vertical,
                        width: 16.horizontal,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 55.vertical,
                    ),
                    validator: (value) {
                      if (value == null  || AppRegex.isEmpty(value)) {
                        return "err_msg_please_enter_valid_phone".tr;
                      }
                      return null;
                    },
                    obscureText: false,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20.vertical,
                    ),
                  ),
                  SizedBox(
                    height: 31.vertical,
                  ),
                  CustomTextFormField(
                    onChanged: (value) {
                      context
                          .read<SignUpViewModelCubit>()
                          .formKey
                          .currentState!
                          .validate();
                    },
                    fillColor: GlobalAppColors.gray10001,
                    controller: context
                        .read<SignUpViewModelCubit>()
                        .emailFieldController,
                    focusNode:
                        context.read<SignUpViewModelCubit>().emailFocusNode,
                    onEditingComplete: context
                        .read<SignUpViewModelCubit>()
                        .emailEditingControl,
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
                  ),
                  SizedBox(
                    height: 31.vertical,
                  ),
                  BlocBuilder<SignUpViewModelCubit, SignUpViewModelState>(
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
                        controller: context
                            .read<SignUpViewModelCubit>()
                            .passwordFieldController,
                        focusNode: context
                            .read<SignUpViewModelCubit>()
                            .passwordFocusNode,
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
                            context
                                .read<SignUpViewModelCubit>()
                                .togglePasswordState();
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30.horizontal,
                                18.vertical, 16.horizontal, 17.vertical),
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
                        obscureText: context
                            .read<SignUpViewModelCubit>()
                            .isPasswordHidden,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20.vertical,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 19.vertical),
                  const SignUpBlocListener(),
                  const PasswordValidations(),
                  SizedBox(height: 35.vertical),
                  CustomElevatedButton(
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
                  ),
                  SizedBox(height: 35.vertical),
                  Text(
                    "msg_or_continue_with".tr,
                    style: CustomTextStyles.labelLargeGray70001,
                  ),
                  SizedBox(height: 19.vertical),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.vertical),
                        child: CustomIconButton(
                          height: 54.adaptSize,
                          width: 54.adaptSize,
                          padding: EdgeInsets.all(15.horizontal),
                          decoration: IconButtonStyleHelper.outlinePrimary,
                          child: CustomImageView(
                            imagePath: GlobalAppImages.imgGoogle,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.horizontal,
                          bottom: 1.vertical,
                        ),
                        child: CustomIconButton(
                          height: 55.adaptSize,
                          width: 55.adaptSize,
                          padding: EdgeInsets.all(15.horizontal),
                          decoration: IconButtonStyleHelper.outlinePrimary,
                          child: CustomImageView(
                            imagePath: GlobalAppImages.imgApple1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.horizontal),
                        child: CustomIconButton(
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          padding: EdgeInsets.all(15.horizontal),
                          decoration: IconButtonStyleHelper.outlinePrimary,
                          child: CustomImageView(
                            imagePath: GlobalAppImages.imgFacebookAppSymbol,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 29.vertical),
                  Row(
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
                  ),
                  SizedBox(height: 5.vertical),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
