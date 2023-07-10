import 'package:e_canteen/consts/color_const.dart';
import 'package:flutter/material.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({Key? key}) : super(key: key);

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
          itemBuilder: (context, index) => const ProductsCard(),
          itemCount: 10,
          shrinkWrap: true,
        ),
      ),
    );
  }
}

class ProductsCard extends StatelessWidget {
  const ProductsCard({Key? key}) : super(key: key);

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
          Row(
            children: [
              Container(
                width: 82.0,
                height: 80.0,
                color: Colors.red,
              ),
              const SizedBox(width: 11.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Parippu Vada",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      overflow:TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "Rs.15",
                    style: style,
                  ),
                ],
              )
            ],
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
                  )),
            ],
          )
        ],
      ),
    );
  }
}
