import 'package:e_canteen/consts/text_const.dart';
import 'package:flutter/material.dart';


class ProductsHeader extends StatelessWidget {
  const ProductsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:35.0,right:35.0,top:34),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "09 Nov 2023",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 34.0),
          Text(
            AppTextConst.canteen,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
