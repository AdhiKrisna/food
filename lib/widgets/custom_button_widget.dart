import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/constants/constant_text_style.dart';
import 'package:get/get.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
  super.key,
  required this.label,
  this.isFullButton = false,
  this.width,
  this.height,
  this.onPressed
  });

  final String label;
  final bool isFullButton;
  final double? width;
  final double? height;
  final Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(
            vertical: 9,
            horizontal: 18,
          )),
          backgroundColor: const MaterialStatePropertyAll(tealColor),
          shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
          )),
          minimumSize: MaterialStatePropertyAll(
              Size(isFullButton ? Get.size.width : width ?? 200, 60))),
      
      onPressed: onPressed,
      child: Text(
        label,
        style:  ConstantTextStyle.stylePoppins(
            fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}
