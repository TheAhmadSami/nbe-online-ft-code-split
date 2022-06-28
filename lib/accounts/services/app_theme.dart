import 'package:flutter/material.dart';
import 'package:nbe_online_ft/accounts/services/colors.dart';


@immutable
class AppTheme {

  static const colors = AppColors();

  const AppTheme._();

  static ThemeData define(){
    return ThemeData(
      fontFamily: 'Cairo',
      brightness: Brightness.light,
      primaryColor: Color(0xff09516B),
      accentColor: Color(0xff2EC5B6),

    );
  }
}