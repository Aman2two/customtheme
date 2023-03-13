import 'dart:ui';

const double extraSmallText = 10.0;
const double smallText = 12.0;
const double regularText = 14.0;
const double mediumText = 16.0;
const double largeText = 18.0;
const double extraLargeText = 20.0;

const String fontStyleOpenSans = 'OpenSans';
const String fontStylePoppins = 'Poppins';

TextStyle getFontStyle(String type) {
  switch (type) {
    case fontStyleOpenSans:
      return TextStyle(fontFamily: fontStyleOpenSans);
    case fontStylePoppins:
      return TextStyle(fontFamily: fontStylePoppins);
    default:
      return TextStyle();
  }
}
