import 'package:flutter/material.dart';
import 'package:untitled3/app_util.dart';
import 'package:untitled3/custom_color_scheme.dart';
import 'package:untitled3/locator.dart';

void main() {
  initLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: getIt.get<AppUtil>().appColorScheme.myColorScheme),
      themeMode: ThemeMode.system,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "My title",
              // use get it to fetch color scheme
              style: TextStyle(
                  color: getIt.get<AppUtil>().appColorScheme.myColorScheme.error),
            ),
          ),
          body: Center(
              child: GestureDetector(
                  onTap: () {}, child: const Text("This is a dummy text.")))),
    );
  }

}
