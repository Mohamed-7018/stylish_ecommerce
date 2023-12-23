
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce/core/di/get_initializer.dart';
import 'package:stylish_ecommerce/core/helper/custom_scroll_behaviour.dart';
import 'package:stylish_ecommerce/core/localization/app_localization_delegate.dart';
import 'package:stylish_ecommerce/core/router/auto_route.dart';


class StylishEcommerce extends StatelessWidget {
  const StylishEcommerce({super.key});


  @override
  Widget build(BuildContext context) {
    // Retrieve the AppRouter instance using dependency injection.
    final appRouter = getIt<AppRouter>();

    // Set the fit size using ScreenUtilInit for responsive design.
    return ScreenUtilInit(
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) => MaterialApp.router(
        /// Title displayed in the operating system's task switcher.
        title: 'Stylish Ecommerce',

        /// Controls the display of a banner at the top right of the app's UI in debug mode.
        debugShowCheckedModeBanner: false,

        /// Configures the app's localization support.
        localizationsDelegates: const [
          AppLocalizationDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],

        /// Parses route information to route data.
        routeInformationParser: appRouter.defaultRouteParser(),

        /// Specifies the supported locales for the app.
        supportedLocales: const [
          Locale(
            'en',
            '',
          ),
        ],

        /// Customizes scrolling behavior using CustomScrollBehaviour.
        scrollBehavior: CustomScrollBehaviour(),

        /// Delegates the routing handling to the appRouter.
        routerDelegate: appRouter.delegate(),
      ),
    );
  }
}