
import 'package:flutter/material.dart';

import '../../../../../core/constant/colors/app_colors.dart';

class CustomProgressContainer extends StatelessWidget {
  const CustomProgressContainer({super.key, this.color});
final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:color==null? 10:0),
          width: 72,
          height: 5,
          decoration: BoxDecoration(
            color:color?? AppColors.cyan,
            borderRadius: BorderRadius.circular(20)
          ),
        );
  }
}