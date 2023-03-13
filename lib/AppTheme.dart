import 'package:flutter/cupertino.dart';
import 'package:untitled3/AppThemeWIdget.dart';
import 'package:untitled3/custom_color_scheme.dart';
import 'package:untitled3/theme_manager.dart';

class AppTheme extends StatefulWidget {
  final ThemeManager themeManager;
  final Widget child;

  const AppTheme(this.themeManager, this.child, {super.key});

  static AppThemeState? of(BuildContext context) {
    return context.findAncestorStateOfType<AppThemeState>();
  }

  @override
  State<StatefulWidget> createState() => AppThemeState();
}

class AppThemeState extends State<AppTheme> {
  MyThemeData? _themeValues;

  getThemeValues() => _themeValues ?? widget.themeManager.getThemeData();

  setTheme(MyThemeData newValue) {
    setState(() {
      _themeValues = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppThemeIW(getThemeValues(), widget.themeManager,
        child: widget.child);
  }
}
