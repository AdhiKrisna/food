

import 'package:flutter/material.dart';
import 'package:food_tutor/constants/constant_text_style.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.only(top: 36, left: 36, right: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5,),
              Text(
                'Hai',
                style: ConstantTextStyle.stylePoppins(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                'User',
                style: ConstantTextStyle.stylePoppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.redAccent,
                    size: 22,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Jakarta, Indonesia',
                    style: ConstantTextStyle.stylePoppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
          ClipOval(
            child: Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
