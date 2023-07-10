import 'package:e_canteen/views/pages/login_screen/login_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const  String loginScreen="/";
  static final routes = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
    ),
  ];
}
