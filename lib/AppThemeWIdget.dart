import 'package:flutter/cupertino.dart';
import 'package:untitled3/custom_color_scheme.dart';
import 'package:untitled3/theme_manager.dart';

class AppThemeIW extends InheritedWidget {
  final ThemeValues themeValues;
  final ThemeManager themeManager;

  const AppThemeIW(this.themeValues, this.themeManager,
      {super.key, required super.child});

  static ThemeValues of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AppThemeIW>()!
        .themeValues;
  }

  static ThemeManager themeData(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AppThemeIW>()!
        .themeManager;
  }

  @override
  bool updateShouldNotify(covariant AppThemeIW oldWidget) {
    return themeValues != oldWidget.themeValues;
  }
}
