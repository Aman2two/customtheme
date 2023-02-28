import 'package:flutter/material.dart';
import 'package:untitled3/app_configuration_json_helper.dart';
import 'package:untitled3/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  await _initDependencies();
  runApp(const MyApp());
}

_initDependencies() async {
  ThemeManager themeManager = getIt.get<ThemeManager>();
  await themeManager.initThemeData();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeManager themeManager = getIt.get<ThemeManager>();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: themeManager.getThemeData(userTypeAdmin).lightTheme),
      darkTheme: ThemeData(
          colorScheme: themeManager.getThemeData(userTypeAdmin).darkTheme),
      themeMode: ThemeMode.system,
      home: Scaffold(
          appBar: AppBar(
              title: const Text("sadasd", style: TextStyle(fontSize: 12.0))),
          body: Center(
              child:
                  GestureDetector(onTap: () {}, child:  ElevatedButton(onPressed: (){}, child: Text("Press Me"))))),
    );
  }
}
