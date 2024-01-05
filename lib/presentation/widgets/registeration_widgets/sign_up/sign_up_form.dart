// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/email_text_field.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/name_text_field.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/password_text_field.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/phone_text_field.dart';

/// Form widget containing input fields for user sign-up information.
class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const NameTextField(),
          SizedBox(height: 31.vertical),
          const PhoneTextField(),
          SizedBox(height: 31.vertical),
          const EmailTextField(),
          SizedBox(height: 31.vertical),
          const PasswordTextField(),
        ],
      ),
    );
  }
}
