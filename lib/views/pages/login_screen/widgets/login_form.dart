import 'package:e_canteen/consts/color_const.dart';
import 'package:e_canteen/consts/size_const.dart';
import 'package:e_canteen/consts/text_const.dart';
import 'package:e_canteen/views/widgets/custom_elevated_button.dart';
import 'package:e_canteen/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fontStyle= Theme.of(context).textTheme.titleMedium!.copyWith(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
    );
    return Padding(
      padding: const EdgeInsets.only(
        top: 95.0,
        left: AppSizeConst.mainPadding,
        right: AppSizeConst.mainPadding,
      ),
      child: Form(
        child: Column(
          children: [
            CustomTextFormField(
              labelText: AppTextConst.email,
              suffixIcon: Icon(
                Icons.check,
                color: AppColors.yellow,
                size: 20,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              obscureText: true,
              labelText: AppTextConst.password,
              suffixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.remove_red_eye_rounded,
                    size: 20,
                  ),
                  Icon(
                    Icons.check,
                    color: AppColors.yellow,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 43.0),
            CustomElevatedButton(
              onPressed: () {},
              width: 187.0,
              height: 48.0,
              backgroundColor: AppColors.tealGreen,
              shape: const StadiumBorder(),
              child: Text(
                AppTextConst.login,
                style:fontStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
