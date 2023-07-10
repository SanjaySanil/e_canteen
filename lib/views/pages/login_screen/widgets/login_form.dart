import 'package:e_canteen/consts/color_const.dart';
import 'package:e_canteen/consts/size_const.dart';
import 'package:e_canteen/consts/text_const.dart';
import 'package:e_canteen/controller/login_controller/login_controller.dart';
import 'package:e_canteen/views/widgets/custom_elevated_button.dart';
import 'package:e_canteen/views/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final fontStyle = Theme.of(context).textTheme.titleMedium!.copyWith(
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
        key: loginController.formKey,
        child: Obx(
          () => Column(
            children: [
              CustomTextFormField(
                controller: loginController.usernameController,
                labelText: AppTextConst.email,
                onChanged: (value) {
                  loginController.updateUsernameVisibility();
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a username';
                  }
                  return null;
                },
                suffixIcon: Visibility(
                  visible: !loginController.isUserNameEmpty.value,
                  child: Icon(
                    Icons.check,
                    color: AppColors.yellow,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: loginController.passwordController,
                obscureText: loginController.obscure.value,
                labelText: AppTextConst.password,
                onChanged: (value) {
                  loginController.updatePasswordVisibility();
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                suffixIcon: Visibility(
                  visible: !loginController.isPasswordEmpty.value,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          loginController.toggleObscure();
                        },
                        child: Icon(
                          loginController.obscure.value
                              ? Icons.remove_red_eye_rounded
                              : CupertinoIcons.eye_slash_fill,
                          size: 20,
                          color: AppColors.tealGreen,
                        ),
                      ),
                      Icon(
                        Icons.check,
                        color: AppColors.yellow,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 43.0),
              CustomElevatedButton(
                onPressed: () async {
                  await loginController.loginUser();
                },
                width: 187.0,
                height: 48.0,
                backgroundColor: AppColors.tealGreen,
                shape: const StadiumBorder(),
                child: Text(
                  AppTextConst.login,
                  style: fontStyle,
                ),
              ),
              const SizedBox(height: 50),
              Visibility(
                visible: loginController.isLoading.value,
                child: const CircularProgressIndicator(
                  color: AppColors.tealGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
