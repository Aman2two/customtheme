import 'package:get_it/get_it.dart';
import 'package:untitled3/app_util.dart';

import 'app_configuration_json.dart';
import 'custom_color_scheme.dart';

GetIt getIt = GetIt.instance;

initLocator() {
  getIt.allowReassignment = true;
  getIt.registerLazySingleton<AppUtil>(() => AppUtil());
}
