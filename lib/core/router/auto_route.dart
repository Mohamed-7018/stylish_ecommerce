// 📦 Package imports:
import 'package:auto_route/auto_route.dart';

// 🌎 Project imports:
import 'auto_route.gr.dart';

/// Configures and manages the app's routing using AutoRoute.
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  /// Overrides the routes method to define app routes.
  @override
  List<AutoRoute> get routes => [
        /// CustomRoute is used to define a custom route configuration.
        /// a route with the path '/' is configured to navigate to the 'OnBoardingRoute' page.
        CustomRoute(
          path: '/',
          page: ForgetPasswordRoute.page,

          /// TransitionsBuilder determines how the page transition animation should be performed.
          /// In this case, the 'slideBottom' transition is used, meaning the new page will slide up from the bottom.
          transitionsBuilder: TransitionsBuilders.slideBottom,

          /// DurationInMilliseconds specifies the duration of the transition animation in milliseconds.
          /// The value of 400 indicates a duration of 400 milliseconds for the slide animation.
          durationInMilliseconds: 400,
        ),

  ];
}
