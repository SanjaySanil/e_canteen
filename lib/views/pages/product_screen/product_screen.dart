import 'package:e_canteen/views/pages/product_screen/widgets/header.dart';
import 'package:e_canteen/views/pages/product_screen/widgets/place_order_section.dart';
import 'package:e_canteen/views/pages/product_screen/widgets/products_section.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProductsHeader(),
           ProductsSection(),
           PlaceOrderSection(),
          ],
        ),
      ),
    );
  }
}
