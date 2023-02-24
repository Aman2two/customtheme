import 'package:flutter/material.dart';

import '../../app_configuration_json_helper.dart';
import '../../locator.dart';

enum TextStyleEnum { extraSmall, small, regular, medium, large, extraLarge }

class TextWidget extends StatelessWidget {
  final TextStyleEnum size;
  final String text;
  final bool isBold;

  const TextWidget(this.text, this.size, {super.key, this.isBold = false});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    switch (size) {
      case TextStyleEnum.extraSmall:
        return createTextWidgetFromMap("TextTheme1", text, isBold, isDark);
      case TextStyleEnum.small:
        return createTextWidgetFromMap("TextTheme2", text, isBold, isDark);
      case TextStyleEnum.regular:
        return createTextWidgetFromMap("TextTheme3", text, isBold, isDark);
      case TextStyleEnum.medium:
        return createTextWidgetFromMap("TextTheme4", text, isBold, isDark);
      case TextStyleEnum.large:
        return createTextWidgetFromMap("TextTheme5", text, isBold, isDark);
      case TextStyleEnum.extraLarge:
        return createTextWidgetFromMap("TextTheme6", text, isBold, isDark);
    }
  }

  createTextWidgetFromMap(
      String keyName, String text, bool isBold, bool isDark) {
    Map<String, Map<String, Object>> textThemeMap =
        getIt.get<AppConfigurationJsonHelper>().giveTextThemeMap();
    keyName = isDark ? "${keyName}Dark" : keyName;
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
