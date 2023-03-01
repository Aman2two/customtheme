import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/app_configuration_json_helper.dart';
import 'package:untitled3/custom_color_scheme.dart';
import 'package:untitled3/locator.dart';
import 'package:untitled3/theme_cubit.dart';

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
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child:
          BlocBuilder<ThemeCubit, MyColorScheme>(builder: (cntxt, colorScheme) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(colorScheme: colorScheme.lightTheme),
          darkTheme: ThemeData(colorScheme: colorScheme.darkTheme),
          themeMode: ThemeMode.system,
          home: Scaffold(
              appBar: AppBar(
                  title:
                      const Text("sadasd", style: TextStyle(fontSize: 12.0))),
              body: Center(
                  child: GestureDetector(
                      onTap: () {},
                      child: ElevatedButton(
                          onPressed: () {
                            debugPrint("pressed ");
                            cntxt
                                .read<ThemeCubit>()
                                .changeTheme(userTypeCustomer);
                          },
                          child: const Text("Press Me",
                              style: TextStyle(fontSize: 24.0)))))),
        );
      }),
    );
  }
}
