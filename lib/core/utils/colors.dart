part of values;

/// A class that provides a set of global application colors.
class GlobalAppColors {
    // Amber
  Color get amber600 => const Color(0XFFECB30F);

  // Black
  Color get black900 => const Color(0XFF010101);
  Color get black90001 => const Color(0XFF0C0A0A);
  Color get black90002 => const Color(0XFF000000);

  // Blue
  Color get blueA200 => const Color(0XFF3E92FF);
  Color get blueA20001 => const Color(0XFF4392F9);
  Color get blueA20002 => const Color(0XFF4392F8);

  // BlueGray
  Color get blueGray100 => const Color(0XFFD2D2D2);
  Color get blueGray10001 => const Color(0XFFD9D9D9);
  Color get blueGray300 => const Color(0XFF9CA4AB);
  Color get blueGray400 => const Color(0XFF808488);
  Color get blueGray700 => const Color(0XFF4C5059);
  Color get blueGray900 => const Color(0XFF323232);
  Color get blueGray90001 => const Color(0XFF17223B);
  Color get blueGray90002 => const Color(0XFF263238);

  // DeepOrange
  Color get deepOrange300 => const Color(0XFFFE735C);

  // Gray
  Color get gray100 => const Color(0XFFF4F4F4);
  Color get gray10001 => const Color(0XFFF3F3F3);
  Color get gray10002 => const Color(0XFFFBF3F5);
  Color get gray10003 => const Color(0XFFF2F2F2);
  Color get gray200 => const Color(0XFFEBEBEB);
  Color get gray20001 => const Color(0XFFE8E8E8);
  Color get gray300 => const Color(0XFFDEDBDB);
  Color get gray30001 => const Color(0XFFE0E0E0);
  Color get gray400 => const Color(0XFFCACACA);
  Color get gray40001 => const Color(0XFFC4C4C4);
  Color get gray40002 => const Color(0XFFC7C7C7);
  Color get gray40003 => const Color(0XFFBBBBBB);
  Color get gray50 => const Color(0XFFF8F8F8);
  Color get gray500 => const Color(0XFFA0A0A1);
  Color get gray50001 => const Color(0XFFA6A6A6);
  Color get gray50002 => const Color(0XFFA8A8A8);
  Color get gray50003 => const Color(0XFFA8A8A9);
  Color get gray600 => const Color(0XFF727272);
  Color get gray60001 => const Color(0XFF828282);
  Color get gray60002 => const Color(0XFF6E7179);
  Color get gray700 => const Color(0XFF676767);
  Color get gray70001 => const Color(0XFF575757);
  Color get gray900 => const Color(0XFF222222);
  Color get gray90001 => const Color(0XFF231F20);
  Color get gray90002 => const Color(0XFF232327);

  // Grayc
  Color get gray2004c => const Color(0X4CE7E7EB);
  Color get gray4006c => const Color(0X6CC5C5C5);

  // Green
  Color get green500 => const Color(0XFF31B669);
  Color get greenA200 => const Color(0XFF70F8A8);

  // Indigo
  Color get indigo600 => const Color(0XFF3D4CA5);
  Color get indigo900 => const Color(0XFF0B3689);

  // Orange
  Color get orange100 => const Color(0XFFF8D7B4);

  // Pink
  Color get pink300 => const Color(0XFFF97189);
  Color get pink30001 => const Color(0XFFFC6D86);

  // Red
  Color get red100 => const Color(0XFFFFCCD4);
  Color get red600 => const Color(0XFFEB3030);
  Color get red60001 => const Color(0XFFEA3030);

  // White
  Color get whiteA700 => const Color(0XFFFDFDFD);
  Color get whiteA70001 => const Color(0XFFFFFFFF);

  // Yellow
  Color get yellow800 => const Color(0XFFEFAD18);
  Color get yellow80001 => const Color(0XFFEFAE1A);
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
