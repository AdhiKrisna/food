import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/constants/constant_text_style.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  PageController? pageController;
  final RxInt _indexSlider = 0.obs;
  RxInt get indexSlider => _indexSlider;

  void changeIndex (int value) {
    _indexSlider.value = value;
  }

  final List<Map<String, dynamic>> cardList = [
    {
      'leftPositionImage': 20.0,
      'imageUrl': 'assets/images/food1.png',
      'contentWidget': Column(
        children: [
          Text(
            "Ice Cream",
            style: ConstantTextStyle.stylePoppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: whiteColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Only For You",
            style: ConstantTextStyle.stylePoppins(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: whiteColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Discount up to",
            style: ConstantTextStyle.stylePoppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: whiteColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "75%",
            style: ConstantTextStyle.stylePoppins(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: whiteColor,
            ),
          ),
        ],
      ),
      'isCenter': false,
    },
    {
      'imageUrl': 'assets/images/food2.png',
      'contentWidget': Column(
        children: [
          Text(
            "Ice Cream 2",
            style: ConstantTextStyle.stylePoppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: whiteColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Only For You",
            style: ConstantTextStyle.stylePoppins(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: whiteColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Discount up to",
            style: ConstantTextStyle.stylePoppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: whiteColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "75%",
            style: ConstantTextStyle.stylePoppins(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: whiteColor,
            ),
          ),
        ],
      ),
      'isCenter': true,

    }
  ];




  final categoryList = [
    {
      'imageUrl': 'assets/images/tipe/Hamburger.png',
      'label': 'Burger',
    },
    {
      'imageUrl': 'assets/images/tipe/Pizza.png',
      'label': 'Pizza',
    },
    {
      'imageUrl': 'assets/images/tipe/Spaghetti.png',
      'label': 'Spaghetti',
    },
    {
      'imageUrl': 'assets/images/tipe/Milkshake.png',
      'label': 'Milkshake',
    },
    {
      'imageUrl': 'assets/images/tipe/Iced_Coffee.png',
      'label': 'Iced Coffee',
    },
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(viewportFraction: 0.85);
  }
}
