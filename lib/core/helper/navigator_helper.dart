// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// Helper class for managing navigation operations within the app using the Navigator widget
class NavigatorHelper {
   /// Key to access the NavigatorState for navigation operations`
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  
  static final GlobalKey<NavigatorState> autoRouterNavigatorKey =
      GlobalKey<NavigatorState>();

  BuildContext? get currentContext =>
      autoRouterNavigatorKey.currentState?.overlay?.context;
   
      
  /// Navigates to a named route with optional arguments.
  ///
  /// Returns a Future that resolves to the result returned by the route.
   static Future<dynamic> pushNamed(String routeName,
      {dynamic arguments}) async {
    return navigatorKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  /// Navigates back to the previous route.
  static void goBack() {
    return navigatorKey.currentState?.pop();
  }

  /// Navigates to a named route and removes all routes until a specified condition is met.
  ///
  /// Returns a Future that resolves to the result returned by the route.
  static Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {bool routePredicate = false, dynamic arguments}) async {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
        routeName, (route) => routePredicate,
        arguments: arguments);
  }

 
  /// Pops the current route and navigates to a named route.
  ///
  /// Returns a Future that resolves to the result returned by the route.
  static Future<dynamic> popAndPushNamed(String routeName,
      {dynamic arguments}) async {
    return navigatorKey.currentState
        ?.popAndPushNamed(routeName, arguments: arguments);
  }
}
