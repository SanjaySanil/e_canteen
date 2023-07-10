import 'package:e_canteen/consts/color_const.dart';
import 'package:flutter/material.dart';

//App custom theme class
class AppTheme {
  static final lightTheme = ThemeData(
      brightness: Brightness.light, textTheme: AppTextTheme.textTheme);
  static final darkTheme = ThemeData(brightness: Brightness.dark);
}

//App custom text theme class
class AppTextTheme {
  static const TextTheme textTheme = TextTheme(
    titleLarge: TextStyle(
        fontSize:32, fontWeight: FontWeight.w600, color:AppColors.black),
    titleMedium: TextStyle(
        fontSize:24, fontWeight: FontWeight.w700, color:AppColors.black),
    titleSmall:TextStyle(
        fontSize:16, fontWeight: FontWeight.w400, color:AppColors.black),
  );
}
