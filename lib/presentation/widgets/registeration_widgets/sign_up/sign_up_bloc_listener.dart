// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/router/routes.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_post/sign_up_post_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_post/sign_up_post_state.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';

/// A widget that listens to the state changes in the [SignUpPostCubit] and
/// performs actions accordingly, such as showing a loading indicator,
/// navigating to the home page on successful signup, or displaying an error.
class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpPostCubit, SignUpPostState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(
                  color: ColorSchemes.primaryColorScheme.primary,
                ),
              ),
            );
          },
          success: (loginResponse) {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed(Routes.homePage);
          },
          error: (NetworkExceptions error) {
            GlobalAppFunctions.setupErrorState(error.toString());
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }


}
