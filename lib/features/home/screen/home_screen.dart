import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/constants/constant_text_style.dart';
import 'package:food_tutor/features/home/controller/home_controller.dart';
import 'package:food_tutor/features/home/widget/category_widget.dart';
import 'package:food_tutor/features/home/widget/header_widget.dart';
import 'package:food_tutor/features/home/widget/search_widget.dart';
import 'package:food_tutor/features/home/widget/slider.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(),
              const SizedBox(
                height: 22,
              ),
              const SearchWidget(),
              const SizedBox(
                height: 30,
              ),
              CarouselSlider(
                homeController: _homeController,
              ),
              const SizedBox(
                height: 20,
              ),
              CategoryWidget(
                homeController: _homeController,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Favourite",
                      style: ConstantTextStyle.stylePoppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(children: [
                        Expanded(child: Image.asset("assets/images/favourite/cheese_burger.png"),),
                        Column(
                          children: [
                            Text(
                              "Cheese Burger",
                              style: ConstantTextStyle.stylePoppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Rp. 15.000",
                              style: ConstantTextStyle.stylePoppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
