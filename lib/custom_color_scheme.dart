import 'package:flutter/material.dart';

class ThemeValues {
  late ColorScheme lightTheme;
  late ColorScheme darkTheme;
  String? fontFamily;
  late String initUsertype;

  ThemeValues(this.initUsertype, Map colorMap,this.fontFamily, {isDark = false}) {
    lightTheme = _mapToColorScheme(colorMap[keyLightTheme], false);
    darkTheme = _mapToColorScheme(colorMap[keyDarkTheme], true);
  }

  _mapToColorScheme(Map colorMap, bool isDark) {
    return ColorScheme(
      brightness: isDark == false ? Brightness.light : Brightness.dark,
      primary: Color(int.parse(colorMap["primary"]!)),
      onPrimary: Color(int.parse(colorMap["onPrimary"]!)),
      primaryContainer: Color(int.parse(colorMap["primaryContainer"]!)),
      onPrimaryContainer: Color(int.parse(colorMap["onPrimaryContainer"]!)),
      secondary: Color(int.parse(colorMap["secondary"]!)),
      onSecondary: Color(int.parse(colorMap["onSecondary"]!)),
      secondaryContainer: Color(int.parse(colorMap["secondaryContainer"]!)),
      onSecondaryContainer: Color(int.parse(colorMap["onSecondaryContainer"]!)),
      tertiary: Color(int.parse(colorMap["tertiary"]!)),
      onTertiary: Color(int.parse(colorMap["onTertiary"]!)),
      tertiaryContainer: Color(int.parse(colorMap["tertiaryContainer"]!)),
      onTertiaryContainer: Color(int.parse(colorMap["onTertiaryContainer"]!)),
      error: Color(int.parse(colorMap["error"]!)),
      onError: Color(int.parse(colorMap["onError"]!)),
      errorContainer: Color(int.parse(colorMap["errorContainer"]!)),
      onErrorContainer: Color(int.parse(colorMap["onErrorContainer"]!)),
      outline: Color(int.parse(colorMap["outline"]!)),
      background: Color(int.parse(colorMap["background"]!)),
      onBackground: Color(int.parse(colorMap["onBackground"]!)),
      surface: Color(int.parse(colorMap["surface"]!)),
      onSurface: Color(int.parse(colorMap["onSurface"]!)),
      surfaceVariant: Color(int.parse(colorMap["surfaceVariant"]!)),
      onSurfaceVariant: Color(int.parse(colorMap["onSurfaceVariant"]!)),
      inverseSurface: Color(int.parse(colorMap["inverseSurface"]!)),
      onInverseSurface: Color(int.parse(colorMap["onInverseSurface"]!)),
      inversePrimary: Color(int.parse(colorMap["inversePrimary"]!)),
      shadow: Color(int.parse(colorMap["shadow"]!)),
    );
  }


}

const String keyLightTheme = "AppColorsLight";
const String keyDarkTheme = "AppColorsDark";
