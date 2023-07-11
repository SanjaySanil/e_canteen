import 'package:e_canteen/consts/color_const.dart';
import 'package:e_canteen/consts/text_const.dart';
import 'package:e_canteen/controller/cart_controller/cart_controller.dart';
import 'package:e_canteen/views/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaceOrderSection extends StatelessWidget {
  PlaceOrderSection({Key? key}) : super(key: key);

  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
        ),
        decoration: const BoxDecoration(
          color: AppColors.tealGreen,
        ),
        height: 68.0,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total: Rs. ${cartController.total}",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColors.white,
                  ),
            ),
            CustomElevatedButton(
              onPressed: () {},
              shape: const StadiumBorder(),
              width: 130.0,
              height: 38.0,
              backgroundColor: Colors.white,
              child: Text(
                AppTextConst.placeOrder,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: AppColors.tealGreen, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
