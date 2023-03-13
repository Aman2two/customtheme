import 'package:flutter/cupertino.dart';
import 'package:untitled3/custom_color_scheme.dart';
import 'package:untitled3/theme_manager.dart';

class AppThemeIW extends InheritedWidget {
  final MyThemeData currentThemeData;
  final ThemeManager themeManager;

  const AppThemeIW(this.currentThemeData, this.themeManager,
      {super.key, required super.child});

  static MyThemeData of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AppThemeIW>()!
        .currentThemeData;
  }

  static ThemeManager allThemes(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AppThemeIW>()!
        .themeManager;
  }

  @override
  bool updateShouldNotify(covariant AppThemeIW oldWidget) {
    return currentThemeData != oldWidget.currentThemeData;
  }
  
}
