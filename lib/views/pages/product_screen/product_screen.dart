import 'package:e_canteen/consts/color_const.dart';
import 'package:e_canteen/controller/products_controller/products_controller.dart';
import 'package:e_canteen/views/pages/product_screen/widgets/header.dart';
import 'package:e_canteen/views/pages/product_screen/widgets/place_order_section.dart';
import 'package:e_canteen/views/pages/product_screen/widgets/products_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsScreen extends StatelessWidget {
  ProductsScreen({Key? key}) : super(key: key);
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () {
            if (productController.isLoading.value) {
              return const Center(
                child: CircularProgressIndicator(
                  color:AppColors.tealGreen,
                ),
              );
            } else if (productController.products == null) {
              return const Center(
                child: Text('No products available.'),
              );
            } else {
              return Column(
                children: [
                  const ProductsHeader(),
                  ProductsSection(),
                  const PlaceOrderSection(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
