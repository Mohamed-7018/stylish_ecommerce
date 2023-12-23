part of values;

/// A class that provides a set of global application colors.
class GlobalAppColors {
    // Amber
  static Color get amber600 => const Color(0XFFECB30F);

  // Black
  static Color get black900 => const Color(0XFF010101);
  static Color get black90001 => const Color(0XFF0C0A0A);
  static Color get black90002 => const Color(0XFF000000);

  // Blue
  static Color get blueA200 => const Color(0XFF3E92FF);
  static Color get blueA20001 => const Color(0XFF4392F9);
  static Color get blueA20002 => const Color(0XFF4392F8);

  // BlueGray
  static Color get blueGray100 => const Color(0XFFD2D2D2);
  static Color get blueGray10001 => const Color(0XFFD9D9D9);
  static Color get blueGray300 => const Color(0XFF9CA4AB);
  static Color get blueGray400 => const Color(0XFF808488);
  static Color get blueGray700 => const Color(0XFF4C5059);
  static Color get blueGray900 => const Color(0XFF323232);
  static Color get blueGray90001 => const Color(0XFF17223B);
  static Color get blueGray90002 => const Color(0XFF263238);

  // DeepOrange
  static Color get deepOrange300 => const Color(0XFFFE735C);

  // Gray
  static Color get gray100 => const Color(0XFFF4F4F4);
  static Color get gray10001 => const Color(0XFFF3F3F3);
  static Color get gray10002 => const Color(0XFFFBF3F5);
  static Color get gray10003 => const Color(0XFFF2F2F2);
  static Color get gray200 => const Color(0XFFEBEBEB);
  static Color get gray20001 => const Color(0XFFE8E8E8);
  static Color get gray300 => const Color(0XFFDEDBDB);
  static Color get gray30001 => const Color(0XFFE0E0E0);
  static Color get gray400 => const Color(0XFFCACACA);
  static Color get gray40001 => const Color(0XFFC4C4C4);
  static Color get gray40002 => const Color(0XFFC7C7C7);
  static Color get gray40003 => const Color(0XFFBBBBBB);
  static Color get gray50 => const Color(0XFFF8F8F8);
  static Color get gray500 => const Color(0XFFA0A0A1);
  static Color get gray50001 => const Color(0XFFA6A6A6);
  static Color get gray50002 => const Color(0XFFA8A8A8);
  static Color get gray50003 => const Color(0XFFA8A8A9);
  static Color get gray600 => const Color(0XFF727272);
  static Color get gray60001 => const Color(0XFF828282);
  static Color get gray60002 => const Color(0XFF6E7179);
  static Color get gray700 => const Color(0XFF676767);
  static Color get gray70001 => const Color(0XFF575757);
  static Color get gray900 => const Color(0XFF222222);
  static Color get gray90001 => const Color(0XFF231F20);
  static Color get gray90002 => const Color(0XFF232327);

  // Grayc
  static  Color get gray2004c => const Color(0X4CE7E7EB);
  static Color get gray4006c => const Color(0X6CC5C5C5);

  // Green
  static Color get green500 => const Color(0XFF31B669);
  static Color get greenA200 => const Color(0XFF70F8A8);

  // Indigo
  static Color get indigo600 => const Color(0XFF3D4CA5);
  static Color get indigo900 => const Color(0XFF0B3689);

  // Orange
  static Color get orange100 => const Color(0XFFF8D7B4);

  // Pink
  static Color get pink300 => const Color(0XFFF97189);
  static Color get pink30001 => const Color(0XFFFC6D86);

  // Red
  static Color get red100 => const Color(0XFFFFCCD4);
  static Color get red600 => const Color(0XFFEB3030);
  static Color get red60001 => const Color(0XFFEA3030);

  // White
  static Color get whiteA700 => const Color(0XFFFDFDFD);
  static Color get whiteA70001 => const Color(0XFFFFFFFF);

  // Yellow
  static Color get yellow800 => const Color(0XFFEFAD18);
  static Color get yellow80001 => const Color(0XFFEFAE1A);
}

/// A class that defines a custom color scheme named `primaryColorScheme`.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFF73658),
    primaryContainer: Color(0XFF1C1B1F),
    secondaryContainer: Color(0XFFFF4B26),

    // Error colors
    errorContainer: Color(0XFFE91611),
    onError: Color(0XFF616161),
    onErrorContainer: Color(0XFF0D0808),

    // On colors(text colors)
    onPrimary: Color(0XFF21003D),
    onPrimaryContainer: Color(0XFFA4A9B3),
  );
}
