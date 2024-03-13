import 'package:food_tutor/features/main/binding/main_binding.dart';
import 'package:food_tutor/features/main/screen/main_screen.dart';
import 'package:food_tutor/features/onBoarding/screen/onboarding_screen.dart';
import 'package:food_tutor/features/signIn/screen/sign_in_screen.dart';
import 'package:food_tutor/features/splash/splash_screen.dart';
import 'package:food_tutor/route/route_name.dart';
import 'package:food_tutor/features/signUp/screen/sign_up_screen.dart';
import 'package:get/get.dart';

class RoutePages {
  List<GetPage<dynamic>> routes = [
    GetPage(name: RouteName.splashScreen, page: () => const SplashScreen()),
    GetPage(name: RouteName.onboardingScreen, page: () => OnBoardingScreen()),
    GetPage(name: RouteName.signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: RouteName.signInScreen, page: () => const SignInScreen()),
    GetPage(name: RouteName.mainScreen, page: () => MainScreen(), binding: MainBinding()),

  ];
}
