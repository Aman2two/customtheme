import 'package:flutter/widgets.dart';

import '../../app_configuration_json_helper.dart';
import '../../locator.dart';

enum TextStyleEnum { extraSmall, small, regular, medium, large, extraLarge }

class TextUtils {
  static customTextWidget(TextStyleEnum size, String text, {isBold = false}) {
    switch (size) {
      case TextStyleEnum.extraSmall:
        return createTextWidgetFromMap("TextTheme1", text, isBold);
      case TextStyleEnum.small:
        return createTextWidgetFromMap("TextTheme2", text, isBold);
      case TextStyleEnum.regular:
        return createTextWidgetFromMap("TextTheme3", text, isBold);
      case TextStyleEnum.medium:
        return createTextWidgetFromMap("TextTheme4", text, isBold);
      case TextStyleEnum.large:
        return createTextWidgetFromMap("TextTheme5", text, isBold);
      case TextStyleEnum.extraLarge:
        return createTextWidgetFromMap("TextTheme6", text, isBold);
    }
  }

  static createTextWidgetFromMap(String keyName, String text, bool isBold) {
    Map<String, Map<String, Object>> textThemeMap =
        getIt.get<AppConfigurationJsonHelper>().giveTextThemeMap();
    Map<String, Object> properties = textThemeMap[keyName] ?? {};
    return Text(
      text,
      style: TextStyle(
          fontSize: properties["fontSize"] as double,
          color: Color(properties["textColor"] as int),
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
