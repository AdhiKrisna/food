import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/constants/constant_text_style.dart';
import 'package:food_tutor/features/controller/auth_controller.dart';
import 'package:get/get.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword,
    // this.isObscureText,
  });

  final String label;
  final String hintText;
  final bool? isPassword ;
  // final bool? isObscureText;

  final authC = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: ConstantTextStyle.stylePoppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 13),
        Obx(
          () => TextFormField(
            obscureText: authC.isObscure.isTrue && isPassword == true,
            style: ConstantTextStyle.stylePoppins(
              color: whiteColor,
            ),
            decoration: InputDecoration(
              suffixIcon: isPassword == true
                  ? IconButton(
                    onPressed: () => authC.changeIsObsecure(),
                      icon:  Icon(
                        authC.isObscure.isTrue
                            ? Icons.visibility_off : Icons.visibility,
                        color: whiteColor,
                      ),
                    )
                  : null,
              hintText: hintText,
              hintStyle: ConstantTextStyle.stylePoppins(
                color: greyColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: tealColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: tealColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
