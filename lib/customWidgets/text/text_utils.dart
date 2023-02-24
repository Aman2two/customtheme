import 'package:flutter/widgets.dart';

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

  createTextWidgetFromMap(String keyName, String text, bool isBold) {
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
