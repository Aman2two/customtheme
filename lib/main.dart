
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/app_configuration_json_helper.dart';
import 'package:untitled3/custom_color_scheme.dart';
import 'package:untitled3/locator.dart';
import 'package:untitled3/theme_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _initFontLicense();
  setUp();
  await _initDependencies();
  runApp(const MyApp());
}

_initFontLicense() {
  GoogleFonts.config.allowRuntimeFetching = false;
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
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
          BlocBuilder<ThemeCubit, ThemeValues>(builder: (cntxt, themeValues) {
        var lightTheme = ThemeData(
          colorScheme: themeValues.lightTheme,
        );
        var darkTheme = ThemeData(colorScheme: themeValues.darkTheme);
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: lightTheme.copyWith(
              textTheme: GoogleFonts.getTextTheme(
                  themeValues.fontFamily!, lightTheme.textTheme)),
          darkTheme: darkTheme.copyWith(
              textTheme: GoogleFonts.getTextTheme(
                  themeValues.fontFamily!, lightTheme.textTheme)),
          themeMode: ThemeMode.system,
          home: Scaffold(
              appBar: AppBar(title: const Text("sadasd")),
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
                          child: const Text("Press Me"))))),
        );
      }),
    );
  }
}
