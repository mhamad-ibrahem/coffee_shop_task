
import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:coffe_shop/core/constant/colors/sub_colors/gradient_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarItemWidget extends StatelessWidget {
  const NavBarItemWidget(
      {super.key,
      required this.icon,
      required this.isSelected,
      required this.onTap});
  final String icon;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: SizedBox(
            height: 38,
            width: 35,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  height: 25,
                  width: 25,
                  child: SvgPicture.asset(
                    icon,
                    color: isSelected ? AppColors.primaryColor : AppColors.greyColor,
                  ),
                ),
                if (isSelected)
                  Container(
                    height: 8,
                    width: 15,
                    decoration: BoxDecoration(
                      gradient: GradientColors.brownLinearGradient,
                        borderRadius: BorderRadius.circular(18)),
                  )
              ],
            )));
  }
}
