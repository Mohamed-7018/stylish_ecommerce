// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_vm/sign_up_vm_cubit.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/email_text_field.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/name_text_field.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/password_text_field.dart';
import 'package:stylish_ecommerce/presentation/widgets/registeration_widgets/sign_up/phone_text_field.dart';

/// Form widget containing input fields for user sign-up information.
class SignUpForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const SignUpForm({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
           NameTextField(formKey: formKey,),
          SizedBox(height: 31.vertical),
           PhoneTextField(formKey: formKey,),
          SizedBox(height: 31.vertical),
           EmailTextField(formKey: formKey),
          SizedBox(height: 31.vertical),
           PasswordTextField(formKey: formKey,),
        ],
      ),
    );
  }
}
