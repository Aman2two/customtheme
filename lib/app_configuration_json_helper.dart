import 'app_configuration_json.dart';
import 'custom_color_scheme.dart';

class AppConfigurationJsonHelper {
  giveLightThemeMap() => appConfigMap["AppColorsLight"] ?? {};

  giveDarkThemeMap() => appConfigMap["AppColorsDark"] ?? {};
}
