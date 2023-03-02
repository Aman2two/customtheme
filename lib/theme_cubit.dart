import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/custom_color_scheme.dart';

import 'app_configuration_json_helper.dart';
import 'locator.dart';

class ThemeCubit extends Cubit<ThemeValues> {
  ThemeCubit() : super(getIt.get<ThemeManager>().adminColorScheme);

  void changeTheme(String userType) {
    emit(userType == userTypeAdmin
        ? getIt.get<ThemeManager>().adminColorScheme
        : getIt.get<ThemeManager>().customerColorScheme);
  }
}
