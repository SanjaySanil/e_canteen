import 'package:e_canteen/consts/image_const.dart';
import 'package:e_canteen/consts/text_const.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * .155,
          width:MediaQuery.sizeOf(context).width,
          child: Image.asset(
            AppImageConst.loginVector,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 32.0),
        Text( 
          AppTextConst.welcome,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
