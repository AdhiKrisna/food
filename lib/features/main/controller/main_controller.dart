import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/features/favourite/screen/favourite_screen.dart';
import 'package:food_tutor/features/home/screen/home_screen.dart';
import 'package:food_tutor/features/person/screen/person_screen.dart';
import 'package:food_tutor/features/promo/screen/promo_screen.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final RxInt _indexBottomNavbar = 0.obs;
  RxInt get indexBottomNavbar => _indexBottomNavbar;

  void changeIndex(int val) {
    _indexBottomNavbar.value = val;
  }

  final List<BottomNavigationBarItem> listBottomNavBar = [
    BottomNavigationBarItem(
      backgroundColor: cardColor,
      label: '',
      activeIcon: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
             const Image(image: AssetImage('assets/icons/home.png',), width: 28, height: 28,),
             const  SizedBox(
              height: 10,
            ),
            ClipOval(
              child: Container(
                width: 5,
                height: 5,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
      icon: Container(
        margin: const EdgeInsets.only(top: 5),
        height: 28,
        width: 28,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/home.png'),
          ),
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: '',
      
      activeIcon: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
             const Image(image: AssetImage('assets/icons/promo.png',), width: 28, height: 28,),
             const  SizedBox(
              height: 10,
            ),
            ClipOval(
              child: Container(
                width: 5,
                height: 5,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
      icon: Container(
        margin: const EdgeInsets.only(top: 5),
        height: 28,
        width: 28,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/promo.png'),
          ),
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: '',
     activeIcon: Container(
        margin: const EdgeInsets.only(top: 22),
        child: Column(
          children: [
             const Image(image: AssetImage('assets/icons/love.png',), width: 28, height: 28,),
             const  SizedBox(
              height: 10,
            ),
            ClipOval(
              child: Container(
                width: 5,
                height: 5,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
      icon: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 28,
        width: 28,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/love.png'),
          ),
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: '',
      activeIcon: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
             const Image(image: AssetImage('assets/icons/person.png',), width: 28, height: 28,),
             const  SizedBox(
              height: 10,
            ),
            ClipOval(
              child: Container(
                width: 5,
                height: 5,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
      icon: Container(
        margin: const EdgeInsets.only(top: 5),
        height: 28,
        width: 28,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/person.png'),
          ),
        ),
      ),
    ),
  ];


  final List<Widget> bodyMain = [
     HomeScreen(),
    const PromoScreen(),
    const FavouriteScreen(),
    const PersonScreen(),
  ];
}
