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

/// Widget for entering and validating Name during the sign-up process.
class NameTextField extends StatelessWidget {
  const NameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onChanged: (value) {
        context.read<SignUpViewModelCubit>().formKey.currentState!.validate();
      },
      fillColor: GlobalAppColors.gray10001,
      controller: context.read<SignUpViewModelCubit>().nameFieldController,
      focusNode: context.read<SignUpViewModelCubit>().nameFocusNode,
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
        if (value == null || AppRegex.isEmpty(value)) {
          return "err_msg_please_enter_valid_name".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.only(
        top: 20.vertical,
        right: 30.horizontal,
        bottom: 20.vertical,
      ),
    );
  }
}
