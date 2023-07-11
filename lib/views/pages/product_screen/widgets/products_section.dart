import 'package:e_canteen/consts/color_const.dart';
import 'package:e_canteen/controller/products_controller/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsSection extends StatelessWidget {
  ProductsSection({Key? key}) : super(key: key);
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 35.0,
          left: 35.0,
          right: 35.0,
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final product = productController.products?.products.data ?? [];
            return ProductsCard(
              image: product[index].coverImage ??
                  "https://ak.picdn.net/shutterstock/videos/1054933562/thumb/7.jpg",
              price: product[index].price.toString(),
              name: product[index].name,
            );
          },
          itemCount: productController.products?.products.data.length ?? 0,
          shrinkWrap: true,
        ),
      ),
    );
  }
}

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
  }) : super(key: key);
  final String name;
  final String image;
  final String price;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleSmall;
    return Container(
      margin: const EdgeInsets.only(bottom: 24.0),
      height: 80.0,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 82.0,
                  height: 80.0,
                  color: Colors.red,
                  child: Image.network(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 11.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        price,
                        style: style,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.minimize_sharp,
                    size: 16.0,
                  )),
              Container(
                margin: const EdgeInsets.only(left: 8, right: 8),
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.tealGreen, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(""),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.add,
                  size: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
