import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../controller/main_controller.dart';
import 'sub_widgets/nav_bar_items.dart';

class MainNavBar extends StatelessWidget {
  const MainNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AppColors().white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      child: GetBuilder<MainController>(
        builder:(controller)=> Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavBarItemWidget(
                icon: AppAssets().homeIcon,
                isSelected: controller.currentIndex == 0 ? true : false,
                onTap: () {
                  controller.changePage(0);
                }),
            NavBarItemWidget(
                icon: AppAssets().favoriteIcon,
                isSelected: controller.currentIndex == 1 ? true : false,
                onTap: () {
                  controller.changePage(1);
                }),
            NavBarItemWidget(
                icon: AppAssets().bagIcon,
                isSelected: controller.currentIndex == 2 ? true : false,
                onTap: () {
                  controller.changePage(2);
                }),
            NavBarItemWidget(
                icon: AppAssets().notificationIcon,
                isSelected: controller.currentIndex == 3 ? true : false,
                onTap: () {
                  controller.changePage(3);
                }),
          ],
        ),
      ),
    );
  }
}
