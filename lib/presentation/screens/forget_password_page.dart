import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_elevated_button.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_text_form_field.dart';

@RoutePage()
class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalAppColors.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 29.horizontal,
              vertical: 19.vertical,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  // width: 203.horizontal,
                  child: Text(
                    "msg_forgot_password2".tr(context),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Get.textTheme.displaySmall!.copyWith(
                      height: 1.19,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.vertical,
                ),
                CustomTextFormField(
                  fillColor: GlobalAppColors.gray10001,
                  controller: TextEditingController(),
                  hintText: "msg_enter_your_email".tr(context),
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(
                      13.horizontal,
                      17.vertical,
                      7.horizontal,
                      14.vertical,
                    ),
                    child: CustomImageView(
                      imagePath: GlobalAppImages.imgMail,
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
                    right: 12.horizontal,
                    bottom: 20.vertical,
                  ),
                ),
                SizedBox(height: 26.vertical),
                Container(
                  width: 261.horizontal,
                  margin: EdgeInsets.only(right: 54.horizontal),
                  child: Text(
                    "msg_we_will_send_you".tr(context),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray700_1,
                  ),
                ),
                SizedBox(height: 41.vertical),
                CustomElevatedButton(
                  text: "lbl_submit".tr(context),
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
