import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({
    super.key,
    required this.imageUrl,
    required this.contentWidget,
    this.isCenter = false,
    this.leftPositionImage,
  });

  final String imageUrl;
  final Widget contentWidget;
  final bool? isCenter;
  final double? leftPositionImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 218,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 160,
              width: 360,
              decoration: BoxDecoration(
                color: tealColor,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          Positioned(
            top: isCenter == true ? 40  : null,
            left: leftPositionImage,
            child: Image.asset(
              imageUrl,
              width: 145,
            ),
          ),
          Positioned(
            left: 135,
            top: 70,
            child: contentWidget,
          ),
        ],
      ),
    );
  }
}
