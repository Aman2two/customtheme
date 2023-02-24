import 'package:get_it/get_it.dart';

import 'app_configuration.dart';
import 'custom_color_scheme.dart';

GetIt getIt = GetIt.instance;

initLocator() {
  getIt.allowReassignment=true;
  getIt.registerLazySingleton<MyColorScheme>(
      () => MyColorScheme(appConfigMap["AppColors"]??{}));

}
