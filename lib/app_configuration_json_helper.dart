import 'app_configuration_json.dart';
import 'custom_color_scheme.dart';

class AppConfigurationJsonHelper {
  giveLightThemeMap() => appThemeConfig["AppColorsLight"] ?? {};
  giveDarkThemeMap() => appThemeConfig["AppColorsDark"] ?? {};
  giveTextThemeMap() => textThemeConfig;
}
