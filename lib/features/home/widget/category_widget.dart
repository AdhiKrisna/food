import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/constants/constant_text_style.dart';
import 'package:food_tutor/features/home/controller/home_controller.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.homeController});
  final HomeController homeController;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 74,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homeController.categoryList.length,
          itemBuilder: (content, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Expanded(
                      child: Image.asset(
                          homeController.categoryList[index]['imageUrl']!)),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    homeController.categoryList[index]['label']!,
                    style: ConstantTextStyle.stylePoppins(
                      fontWeight: FontWeight.w500,
                      color: greenColor,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
