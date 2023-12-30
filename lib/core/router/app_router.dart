import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_ecommerce/core/di/get_initializer.dart';
import 'package:stylish_ecommerce/core/router/routes.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_in/sign_in_Vm/sign_in_vm_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_in/sign_in_post/sign_in_post_cubit.dart';
import 'package:stylish_ecommerce/presentation/screens/forget_password_page.dart';
import 'package:stylish_ecommerce/presentation/screens/home_screen.dart';
import 'package:stylish_ecommerce/presentation/screens/sign_in_page.dart';
import 'package:stylish_ecommerce/presentation/screens/sign_up_page.dart';

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
          builder: (context) => const SignUpPage(),
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
