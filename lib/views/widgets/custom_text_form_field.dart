import 'package:e_canteen/consts/color_const.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.labelText,
    this.validator,
    this.controller,
  }) : super(key: key);
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller:controller,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      cursorColor: AppColors.tealGreen,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        focusColor: Colors.grey,
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 20,
          color: AppColors.grey,
          fontWeight: FontWeight.w300,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grey,
            width: .5,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grey,
            width: .5,
          ),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grey,
            width: .5,
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: .5,
          ),
        ),
      ),
    );
  }
}
