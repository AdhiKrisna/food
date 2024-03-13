
import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/features/home/controller/home_controller.dart';
import 'package:food_tutor/features/home/widget/card_slider_widget.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CarouselSlider extends StatelessWidget {
  const CarouselSlider({super.key, required this.homeController});
  final HomeController homeController;
    
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
                height: 218,
                child: PageView.builder(
                    onPageChanged: (value) {
                      homeController.changeIndex(value);
                    },
                    itemCount: homeController.cardList.length,
                    controller: homeController.pageController,
                    itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: CardSlider(
                            imageUrl: homeController.cardList[index]
                                ['imageUrl'],
                            contentWidget: homeController.cardList[index]
                                ['contentWidget'],
                            isCenter: homeController.cardList[index]
                                ['isCenter'],
                          ),
                        )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 36),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Wrap(
                    spacing: 8,
                    children: List.generate(
                      homeController.cardList.length,
                      (index) => Obx(() => Container(
                        width: 44.59,
                        height: 5,
                        color: homeController.indexSlider.value == index
                            ? greenColor
                            : greyColor,
                      ),),
                    ),
                  ),
                ),
              ),
      ],
      
    );
  }
}