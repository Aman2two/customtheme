

import 'app_configuration_json.dart';
import 'custom_color_scheme.dart';

class AppUtil{
  var appColorScheme=MyColorScheme(appConfigMap["AppColors"]??{});
}