import 'package:coffe_shop/modules/main/controller/main_controller.dart';
import 'package:coffe_shop/routes/routes_export.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constant/colors/app_colors.dart';

class MainTabBarWidget extends StatelessWidget {
  const MainTabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder:(controller)=> DefaultTabController(
        length: 3,
        child: TabBar(
          isScrollable: true,
          onTap: (index) {
            controller.tapBarIndex = index;
            controller.update();
          },
          padding: const EdgeInsets.only(top: 20),
          labelColor: AppColors().white,
          unselectedLabelColor: AppColors().black,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
                icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: controller.tapBarIndex==0? AppColors.primaryColor:AppColors().white,
                  borderRadius: BorderRadius.circular(12)),
              child: const FittedBox(
                child: Text(
                  "Cappuccino",
                ),
              ),
            )),
            Tab(
                icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color:controller.tapBarIndex==1? AppColors.primaryColor:AppColors().white,
                  borderRadius: BorderRadius.circular(12)),
              child: const FittedBox(
                child: Text(
                  "Machiato",
                ),
              ),
            )),
            Tab(
                icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: controller.tapBarIndex==2? AppColors.primaryColor:AppColors().white,
                  borderRadius: BorderRadius.circular(12)),
              child: const FittedBox(
                child: Text(
                  "Latte",
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
