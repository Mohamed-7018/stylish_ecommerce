// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/app_regex.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_vm/sign_up_vm_cubit.dart';

/// Widget to display password validation rules.
class PasswordValidations extends StatefulWidget {
  const PasswordValidations({
    super.key,
  });

  @override
  State<PasswordValidations> createState() => _PasswordValidationsState();
}

class _PasswordValidationsState extends State<PasswordValidations> {
  late TextEditingController passwordController;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController =
        context.read<SignUpViewModelCubit>().passwordFieldController;
    setupPasswordControllerListener();
  }

  /// Set up a listener for the password controller to update validation states.
  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowercase),
        SizedBox(height: 2.vertical),
        buildValidationRow('At least 1 uppercase letter', hasUppercase),
        SizedBox(height: 2.vertical),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacters),
        SizedBox(height: 2.vertical),
        buildValidationRow('At least 1 number', hasNumber),
        SizedBox(height: 2.vertical),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  /// Build a row for a specific password validation rule.
  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: Colors.grey,
        ),
        SizedBox(width: 6.horizontal),
        Text(
          text,
          style: Get.textTheme.bodySmall!.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 1.5,
            color: hasValidated
                ? Colors.grey
                : Get.colorScheme.primary
          ),
        )
      ],
    );
  }
}
