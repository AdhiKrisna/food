import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/constants/constant_text_style.dart';
import 'package:food_tutor/route/route_name.dart';
import 'package:food_tutor/widgets/custom_button_widget.dart';
import 'package:food_tutor/widgets/text_form_field_widget.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find Your Favorite\'s menu.\nStart From Here!',
                style: ConstantTextStyle.stylePoppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 30,
                width: Get.size.width,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        color: tealColor,
                        width: 81,
                        height: 15,
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 2,
                      child: Text(
                        "Sign Up",
                        style: ConstantTextStyle.stylePoppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextFormFieldWidget(
                hintText: "Your Name",
                label: "Username",
              ),
              const SizedBox(height: 20),
              TextFormFieldWidget(
                hintText: "Your Email",
                label: "Email",
              ),
              const SizedBox(height: 20),
              TextFormFieldWidget(
                  hintText: "Your Password",
                  label: "Password",
                  isPassword: true
              ),
              const SizedBox(height: 20),
              TextFormFieldWidget(
                hintText: "Your Location",
                label: "Location",
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                style: ConstantTextStyle.stylePoppins(
                  color: tealColor,
                ),
                children: [
                  const TextSpan(
                    text: "Have an account? ",
                  ),
                  TextSpan(
                    text: "Sign In",
                    recognizer: TapGestureRecognizer()..onTap = () => Get.toNamed(RouteName.signInScreen) ,
                    style: ConstantTextStyle.stylePoppins(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: tealColor,
                    ),
                  ),
                ],
              )),
              const SizedBox(height: 20),
               CustomButtonWidget(
                label: "Sign Up",
                isFullButton: true,
                onPressed: () => Get.toNamed(RouteName.mainScreen)
              ),
              const SizedBox(height: 50),
              Text(
                "Terms and Conditions",
                style: ConstantTextStyle.stylePoppins(
                  fontWeight: FontWeight.w300,
                  color: greyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
