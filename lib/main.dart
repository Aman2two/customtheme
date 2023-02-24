import 'package:flutter/material.dart';
import 'package:untitled3/app_configuration_json_helper.dart';
import 'package:untitled3/custom_color_scheme.dart';
import 'package:untitled3/locator.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppConfigurationJsonHelper appConfigurationJsonHelper =
        getIt.get<AppConfigurationJsonHelper>();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme:
              MyColorScheme(appConfigurationJsonHelper.giveLightThemeMap())
                  .colorScheme),
      darkTheme: ThemeData(
          colorScheme: MyColorScheme(
                  appConfigurationJsonHelper.giveDarkThemeMap(),
                  isDark: true)
              .colorScheme),
      themeMode: ThemeMode.system,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "My title",
              // use get it to fetch color scheme
            ),
          ),
          body: Center(
              child: GestureDetector(
                  onTap: () {}, child: const Text("This is a dummy text.")))),
    );
  }
}
