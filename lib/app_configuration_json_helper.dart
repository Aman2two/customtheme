import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:untitled3/custom_color_scheme.dart';

class ThemeManager {
  late MyColorScheme adminColorScheme;
  late MyColorScheme customerColorScheme;

  initThemeData() async {
    Map data = await _readJson();
    List allThemes = data[keyThemes];
    _setThemeData(allThemes);
  }

  _setThemeData(List allThemes) {
    for (int i = 0; i < allThemes.length; i++) {
      String userType = allThemes[i][keyUserType];
      var valueMap = allThemes[i][keyValue];
      switch (userType) {
        case userTypeAdmin:
          adminColorScheme = MyColorScheme(userType, valueMap);
          break;
        case userTypeCustomer:
        default:
          customerColorScheme = MyColorScheme(userType, valueMap);
          break;
      }
    }
  }

  MyColorScheme getThemeData(String userType) =>
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
const String keyValue = "value";
