import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_text_style.dart';
import 'package:food_tutor/constants/constant_color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tealColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 302,
              child: Image.asset(
                'assets/images/splash.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             Text(
              'Foodies',
              style: ConstantTextStyle.stylePoppins(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
