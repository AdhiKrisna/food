import 'package:flutter/material.dart';
import 'package:food_tutor/route/route_name.dart';
import 'package:food_tutor/route/route_page.dart';
import 'package:get/route_manager.dart';
// import 'package:food_tutor/features/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: RoutePages().routes,
      initialRoute: RouteName.onboardingScreen,
    );
  }
}