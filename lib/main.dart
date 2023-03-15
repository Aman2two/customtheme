import 'package:flutter/material.dart';
import 'package:newmodule1/main.dart';
import 'package:untitled3/theme_manager.dart';

import 'AppTheme.dart';
import 'AppThemeWIdget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ThemeManager themeManager = await _initDependencies();
  runApp(MyApp(themeManager));
}

Future<ThemeManager> _initDependencies() async {
  ThemeManager themeManager = ThemeManager();
  await themeManager.initThemeData();
  return themeManager;
}

class MyApp extends StatelessWidget {
  final ThemeManager themeManager;

  const MyApp(this.themeManager, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      themeManager,
      Builder(builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme: AppThemeIW.of(context).lightTheme,
              fontFamily: AppThemeIW.of(context).fontFamily),
          darkTheme: ThemeData(
              colorScheme: AppThemeIW.of(context).darkTheme,
              fontFamily: AppThemeIW.of(context).fontFamily),
          themeMode: ThemeMode.system,
          home: const SecondPage(
            title: 'hi',
          ),
        );
      }),
    );
  }
}
