import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:untitled3/custom_color_scheme.dart';

class ThemeManager {
  late ThemeValues adminColorScheme;
  late ThemeValues customerColorScheme;

  initThemeData() async {
    Map data = await _readJson();
    List allThemes = data[keyThemes];
    _setThemeData(allThemes);
  }

  _setThemeData(List allThemes) {
    for (int i = 0; i < allThemes.length; i++) {
      String userType = allThemes[i][keyUserType];
      var valueMap = allThemes[i][keyColors];
      String? fontFamily = allThemes[i][keyFontFamily];
      switch (userType) {
        case userTypeAdmin:
          adminColorScheme = ThemeValues(userType, valueMap, fontFamily);
          break;
        case userTypeCustomer:
        default:
          customerColorScheme = ThemeValues(userType, valueMap, fontFamily);
          break;
      }
    }
  }

  ThemeValues getThemeData(String userType) =>
      userType == userTypeAdmin ? adminColorScheme : customerColorScheme;

  Future<Map> _readJson() async {
    String response = await rootBundle.loadString(themeJsonFilePath);
    return jsonDecode(response);
  }
}

const String userTypeAdmin = "admin";
const String userTypeCustomer = "customer";
const String themeJsonFilePath = "lib/assets/app_themes.json";
const String keyThemes = "themes";
const String keyUserType = "usertype";
const String keyColors = "colors";
const String keyFontFamily = "fontFamily";
