import 'dart:convert';
import 'package:e_canteen/app_routes/app_routes.dart';
import 'package:e_canteen/services/login_services.dart';
import 'package:e_canteen/services/storage_services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final RxBool isLoading = false.obs;
  final RxBool obscure=true.obs;
  final RxBool isPasswordEmpty = true.obs;
  final RxBool isUserNameEmpty = true.obs;

  String? emailError;
  String? passwordError;

   void toggleObscure(){
     obscure.value=!obscure.value;
   }
  void updatePasswordVisibility() {
    isPasswordEmpty.value = passwordController.text.isEmpty;
  }
  void updateUsernameVisibility() {
    isUserNameEmpty.value = usernameController.text.isEmpty;
  }
  //Api post request calling
  Future<void> loginUser() async {
    try {
      if (formKey.currentState!.validate()) {
        final username = usernameController.text;
        final password = passwordController.text;
        const storeId = '10';
        isLoading.value = true;
        final response = await ApiLoginServices.login(username, password, storeId);
        isLoading.value = false;

        if (response.statusCode == 200) {
          final jsonResponse = jsonDecode(response.body);
          final token = jsonResponse['token'];
          //Storing token to local storage
          TokenStorage.token = token;
          // Navigate to the home page
          Get.offAllNamed(AppRoutes.productsScreen);
        } else {
          final error = jsonDecode(response.body)['error'];
          String errorMessage;

          if (error == 'incorrect_email') {
            errorMessage = 'Email is incorrect';
          } else if (error == 'incorrect_password') {
            errorMessage = 'Password is incorrect';
          } else {
            errorMessage = 'Login failed';
          }

          Get.snackbar(
            'Error',
            errorMessage,
            colorText:Colors.white,
            backgroundColor: Colors.black38,
            snackPosition: SnackPosition.BOTTOM,
          );
        }
      }
    } catch (e) {
      print('Login Error: $e');
      Get.snackbar(
        'Error',
        'An error occurred',
        colorText:Colors.white,
        backgroundColor: Colors.black38,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}