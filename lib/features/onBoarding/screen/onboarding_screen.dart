import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/features/onBoarding/controller/onboarding_controller.dart';
import 'package:food_tutor/route/route_name.dart';
import 'package:food_tutor/widgets/custom_button_widget.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final OnBoardingController onBoardingController =
      Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              onBoardingController.indexImage.value = value;
            },
            itemCount: onBoardingController.imagesOnBoarding.length,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: tealColor,
                image: DecorationImage(
                  image: AssetImage(
                    onBoardingController.imagesOnBoarding[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 100,
            right: 100,
            child: Column(
              children: [
                CustomButtonWidget(label: "Get Started", onPressed: () {
                  Get.toNamed(RouteName.signUpScreen);
                }),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 8,
                  children: List.generate(onBoardingController.imagesOnBoarding.length, 
                  (index) => Obx( () => Container(
                        width: 44.59,
                        height: 5,
                        color: onBoardingController.indexImage.value == index?whiteColor: greyColor,
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
