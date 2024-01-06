// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/custom_scroll_behaviour.dart';
import 'package:stylish_ecommerce/core/helper/navigator_helper.dart';
import 'package:stylish_ecommerce/core/localization/app_localization_delegate.dart';
import 'package:stylish_ecommerce/core/router/app_router.dart';
import 'package:stylish_ecommerce/core/router/routes.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';

/// The main application widget for Stylish Ecommerce.
class StylishEcommerce extends StatelessWidget {
  /// The router for navigating between screens in the app.
  final AppRouter appRouter;

  /// Constructs a new instance of StylishEcommerce.
  const StylishEcommerce({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set the fit size using ScreenUtilInit for responsive design.
    return Sizer(
      builder: (context, orientation, deviceType) => ScreenUtilInit(
        designSize:
            Size(figmaDesignWidth.toDouble(), figmaDesignHeight.toDouble()),
        // Use builder only if you need to use the library outside ScreenUtilInit context
        builder: (_, child) => MaterialApp(
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

          /// Specifies the supported locales for the app.
          supportedLocales: const [
            Locale(
              'en',
              '',
            ),
          ],

          /// Customizes scrolling behavior using CustomScrollBehaviour.
          scrollBehavior: CustomScrollBehaviour(),

          /// The initial route when the app starts.
          initialRoute: Routes.onBoardingPage,

          /// Generates routes for the app based on route settings.
          onGenerateRoute: appRouter.generateRoute,

          /// The key for the global Navigator widget.
          navigatorKey: NavigatorHelper.navigatorKey,
        ),
      ),
    );
  }
}
