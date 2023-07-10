import 'package:e_canteen/app_routes/app_routes.dart';
import 'package:e_canteen/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner:false,
      theme:AppTheme.lightTheme,
      darkTheme:AppTheme.darkTheme,
      themeMode:ThemeMode.light,
      initialRoute:AppRoutes.loginScreen,
      getPages:AppRoutes.routes,
    );
  }
}
