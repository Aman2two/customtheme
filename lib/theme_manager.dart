import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:untitled3/custom_color_scheme.dart';

class ThemeManager {
  late MyThemeData _adminColorScheme;
  late MyThemeData _customerColorScheme;

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
          _adminColorScheme = MyThemeData(userType, valueMap, fontFamily);
          break;
        case userTypeCustomer:
        default:
          _customerColorScheme = MyThemeData(userType, valueMap, fontFamily);
          break;
      }
    }
  }

  MyThemeData getThemeData({String? userType}) =>
      (userType == null || userType == userTypeAdmin)
          ? _adminColorScheme
          : _customerColorScheme;

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
