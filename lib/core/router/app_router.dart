// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/di/get_initializer.dart';
import 'package:stylish_ecommerce/core/router/routes.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_in/sign_in_Vm/sign_in_vm_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_in/sign_in_post/sign_in_post_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_post/sign_up_post_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_vm/sign_up_vm_cubit.dart';
import 'package:stylish_ecommerce/presentation/screens/home_screen.dart';
import 'package:stylish_ecommerce/presentation/screens/registeration_screens/forget_password_page.dart';
import 'package:stylish_ecommerce/presentation/screens/registeration_screens/sign_in_page.dart';
import 'package:stylish_ecommerce/presentation/screens/registeration_screens/sign_up_page.dart';

/// Handles the navigation and route generation for the application.
class AppRouter {
  /// Generates and returns the appropriate route based on the provided [RouteSettings].
  Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.signInPage:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider<SignInViewModelCubit>(
                create: (context) => getIt(),
              ),
              BlocProvider<SignInPostCubit>(
                create: (context) => getIt(),
              ),
            ],
            child: const SignInPage(),
          ),
        );
      case Routes.signUpPage:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider<SignUpViewModelCubit>(
                create: (context) => getIt(),
              ),
              BlocProvider<SignUpPostCubit>(
                create: (context) => getIt(),
              ),
            ],
            child: const SignUpPage(),
          ),
        );
      case Routes.fogetPasswordPage:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordPage(),
        );
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
