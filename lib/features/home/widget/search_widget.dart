import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_color.dart';
import 'package:food_tutor/constants/constant_text_style.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: ConstantTextStyle.stylePoppins(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: greyColor,
          ),
          suffixIcon: const Icon(
            Icons.search,
            size: 26,
            color: greyColor,
          ),
          fillColor: const Color(0xff575B5C),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
