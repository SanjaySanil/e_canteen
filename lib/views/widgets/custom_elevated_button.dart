import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    this.onPressed,
    required this.child,
    required this.width,
    required this.height,
    required this.backgroundColor,
    this.shape,
  }) : super(key: key);

  final Function()? onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color backgroundColor;
  final OutlinedBorder? shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: shape,
        ),
        onPressed: onPressed,
        child:child,
      ),
    );
  }
}
