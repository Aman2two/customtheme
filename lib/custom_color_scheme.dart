import 'package:flutter/material.dart';

class MyColorScheme {
  late Map<String, Object> colorMap;
  late ColorScheme colorScheme;

  MyColorScheme(this.colorMap, {isDark = false}) {
    colorScheme = ColorScheme(
      brightness: isDark == false ? Brightness.light : Brightness.dark,
      primary: Color(colorMap["primary"] as int? ?? 0xff4496e0),
      onPrimary: Color(colorMap["onPrimary"] as int? ?? 0xffffffff),
      primaryContainer:
          Color(colorMap["primaryContainer"] as int? ?? 0xffb4e6ff),
      onPrimaryContainer:
          Color(colorMap["onPrimaryContainer"] as int? ?? 0xff1f2728),
      secondary: Color(colorMap["secondary"] as int? ?? 0xff202b6d),
      onSecondary: Color(colorMap["onSecondary"] as int? ?? 0xffffffff),
      secondaryContainer:
          Color(colorMap["secondaryContainer"] as int? ?? 0xff99ccf9),
      onSecondaryContainer:
          Color(colorMap["onSecondaryContainer"] as int? ?? 0xff1b2328),
      tertiary: Color(colorMap["tertiary"] as int? ?? 0xff514239),
      onTertiary: Color(colorMap["onTertiary"] as int? ?? 0xffffffff),
      tertiaryContainer:
          Color(colorMap["tertiaryContainer"] as int? ?? 0xffbaa99d),
      onTertiaryContainer:
          Color(colorMap["onTertiaryContainer"] as int? ?? 0xff201d1b),
      error: Color(colorMap["error"] as int? ?? 0xffb00020),
      onError: Color(colorMap["onError"] as int? ?? 0xffffffff),
      errorContainer: Color(colorMap["errorContainer"] as int? ?? 0xfffcd8df),
      onErrorContainer:
          Color(colorMap["onErrorContainer"] as int? ?? 0xff282526),
      outline: Color(colorMap["outline"] as int? ?? 0xff5c6262),
      background: Color(colorMap["background"] as int? ?? 0xfff0f6fc),
      onBackground: Color(colorMap["onBackground"] as int? ?? 0xff121313),
      surface: Color(colorMap["surface"] as int? ?? 0xfff7fafd),
      onSurface: Color(colorMap["onSurface"] as int? ?? 0xff090909),
      surfaceVariant: Color(colorMap["surfaceVariant"] as int? ?? 0xfff0f6fc),
      onSurfaceVariant:
          Color(colorMap["onSurfaceVariant"] as int? ?? 0xff121313),
      inverseSurface: Color(colorMap["inverseSurface"] as int? ?? 0xff131619),
      onInverseSurface:
          Color(colorMap["onInverseSurface"] as int? ?? 0xfff5f5f5),
      inversePrimary: Color(colorMap["inversePrimary"] as int? ?? 0xffddfeff),
      shadow: Color(colorMap["shadow"] as int? ?? 0xff000000),
    );
  }
}
