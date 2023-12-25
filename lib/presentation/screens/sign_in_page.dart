import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_elevated_button.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_icon_button.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_text_form_field.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalAppColors.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: Form(
          child: Container(
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
                      "lbl_welcome_back".tr(context),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Get.textTheme.displaySmall!.copyWith(
                        height: 1.19,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.vertical,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.horizontal,
                    right: 1.horizontal,
                  ),
                  child: CustomTextFormField(
                    fillColor: GlobalAppColors.gray10001,
                    controller: TextEditingController(),
                    hintText: "msg_username_or_email".tr(context),
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
                      // if (value == null ||
                      //     (!isValidEmail(value, isRequired: true))) {
                      //   return "err_msg_please_enter_valid_email".tr;
                      // }
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
                  child: CustomTextFormField(
                    fillColor: GlobalAppColors.gray10001,
                    controller: TextEditingController(),
                    hintText: "lbl_password".tr(context),
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
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30.horizontal, 18.vertical,
                            16.horizontal, 17.vertical),
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
                      // if (value == null ||
                      //     (!isValidPassword(value, isRequired: true))) {
                      //   return "err_msg_please_enter_valid_password".tr;
                      // }
                      return null;
                    },
                    obscureText: false,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20.vertical,
                    ),
                  ),
                ),
                SizedBox(height: 10.vertical),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "msg_forgot_password".tr(context),
                    style: CustomTextStyles.bodySmallPrimary,
                  ),
                ),
                SizedBox(height: 50.vertical),
                CustomElevatedButton(
                  text: "lbl_login".tr(context),
                  margin: EdgeInsets.symmetric(horizontal: 4.horizontal),
                  buttonStyle: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Get.colorScheme.primary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ),
                SizedBox(height: 75.vertical),
                Text(
                  "msg_or_continue_with".tr(context),
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
                SizedBox(height: 28.vertical),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "msg_create_an_account".tr(context),
                      style: CustomTextStyles.bodyMediumGray70001,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.horizontal),
                      child: Text(
                        "lbl_sign_up".tr(context),
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
    );
  }
}
