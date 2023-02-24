import 'package:get_it/get_it.dart';
import 'package:untitled3/app_configuration_json_helper.dart';

final getIt = GetIt.instance;

setUp() {
  getIt.registerLazySingleton<AppConfigurationJsonHelper>(
      () => AppConfigurationJsonHelper());
}
