// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Helper widget for building responsive UI based on device constraints.
class MyResponsiveHelper extends StatelessWidget {
  /// Constructs a [MyResponsiveHelper].
  ///
  /// [mobileBuilder], [tabletBuilder], and [desktopBuilder] are required functions
  /// responsible for building layouts for mobile, tablet, and desktop devices, respectively.
  const MyResponsiveHelper({
    required this.mobileBuilder,
    required this.tabletBuilder,
    required this.desktopBuilder,
    Key? key,
  }) : super(key: key);

  /// Widget builder for mobile devices.
  final Widget Function(
    BuildContext context,
    BoxConstraints constraints,
  ) mobileBuilder;

  /// Widget builder for tablet devices.
  final Widget Function(
    BuildContext context,
    BoxConstraints constraints,
  ) tabletBuilder;

  /// Widget builder for desktop devices.
  final Widget Function(
    BuildContext context,
    BoxConstraints constraints,
  ) desktopBuilder;

  /// Checks if the app is running on the web platform.
  static bool isWeb() {
    return kIsWeb;
  }

  /// Checks if the app is running on a mobile device (excluding web).
  /// Checks if the current platform is a mobile phone.
  ///
  /// Returns [true] if the platform is not web, otherwise [false].
  static bool isNotWeb() {
    if (!kIsWeb) {
      return true;
    } else {
      return false;
    }
  }

  /// Checks if the current device width is smaller than a specified mobile width.
  /// Checks if the current device is a mobile device based on [context].
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  /// Checks if the current device width is between tablet and mobile sizes.
  /// Checks if the current device is a tablet based on [context].
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1300 &&
      MediaQuery.of(context).size.width >= 650;

  /// Checks if the current device width is larger than a specified desktop width.
  /// Checks if the current device is a desktop based on [context].
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1300;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1300) {
          return desktopBuilder(context, constraints);
        } else if (constraints.maxWidth >= 650) {
          return tabletBuilder(context, constraints);
        } else {
          return mobileBuilder(context, constraints);
        }
      },
    );
  }
}
