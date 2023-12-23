part of values;
// This functions are responsible to make UI responsive across all the mobile devices.

// /// Global [MediaQueryData] instance created from the window's view.
// MediaQueryData mediaQueryData = MediaQueryData.fromView(ui.window);

// These are the Viewport values of your Figma Design.
// These are used in the code as a reference to create your UI Responsively.
const num figmaDesignWidth = 375;
const num figmaDesignHeight = 812;
const num figmaDesignStatusBar = 0;

/// This extension is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
extension ResponsiveExtension on num {
  /// This method is used to get device viewport width.
  get _width {
    return ScreenUtil().screenWidth;
  }

  /// This method is used to get device viewport height.
  get _height {
    num statusBar = ScreenUtil().statusBarHeight;
    num bottomBar = ScreenUtil().bottomBarHeight;
    num screenHeight = ScreenUtil().screenHeight - statusBar - bottomBar;
    return screenHeight;
  }

  /// This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
  double get myWidth => ((this * _width) / figmaDesignWidth);

  /// This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
  double get myHeight =>
      (this * _height) / (figmaDesignHeight - figmaDesignStatusBar);

  /// This method is used to set the smallest px in image height and width.
  double get adaptSize {
    var height = myHeight;
    var width = myWidth;
    return height < width ? height.toDoubleValue() : width.toDoubleValue();
  }

  /// This method is used to set text font size according to Viewport.
  double get fSize => ScreenUtil().setSp(this);
}

/// Extension for formatting [double] values.
extension FormatExtension on double {
  /// Return a [double] value with formatted according to provided fractionDigits.
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(toStringAsFixed(fractionDigits));
  }
}
