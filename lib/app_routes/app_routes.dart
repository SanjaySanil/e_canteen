import 'package:e_canteen/views/pages/login_screen/login_screen.dart';
import 'package:e_canteen/views/pages/product_screen/product_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const  String loginScreen="/";
  static const  String productsScreen="/products";
  static final routes = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: productsScreen,
      page: () => ProductsScreen(),
    ),
  ];
}
