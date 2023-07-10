import 'package:e_canteen/consts/image_const.dart';
import 'package:e_canteen/views/pages/login_screen/widgets/login_form.dart';
import 'package:e_canteen/views/pages/login_screen/widgets/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height:MediaQuery.sizeOf(context).height,
            width:MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit:BoxFit.fitWidth,
                  image: AssetImage(
                    AppImageConst.loginBottom,
                  ),
                  alignment: Alignment.bottomCenter),
            ),
            child: const Column(
              children: [
                LoginHeader(),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
