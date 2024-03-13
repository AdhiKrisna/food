
import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/features/main/controller/main_controller.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final MainController mainC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: mainC.indexBottomNavbar.value,
            onTap: (value) => mainC.changeIndex(value),
            type: BottomNavigationBarType.fixed,
            backgroundColor: cardColor,
            items: mainC.listBottomNavBar,
          ),
      ),
      body: Obx(() => mainC.bodyMain[mainC.indexBottomNavbar.value]),

    );
  }
}