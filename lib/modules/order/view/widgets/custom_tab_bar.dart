import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/orders_controller.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: AppColors.darkGreyColor4,
          borderRadius: BorderRadius.circular(14)),
      child: GetBuilder<OrderController>(
        builder: (controller) => Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              height: 40,
              margin: EdgeInsets.only(
                  top: 4,
                  left: controller.pageIndex == 0 ? 0 : Get.width / 2 - 20,
                  right: controller.pageIndex == 1 ? 0 : Get.width / 2 - 20),
              alignment: controller.pageIndex == 0
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryColor),
            ),
            SizedBox(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                      padding: EdgeInsets.zero,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minWidth: Get.width / 2 - 24,
                      onPressed: () => controller.changePage(0),
                      child: Text(
                        "Deliver",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                color: controller.pageIndex == 0
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16,
                                fontWeight: controller.pageIndex == 0
                                    ? FontWeight.w600
                                    : FontWeight.w400),
                      )),
                  MaterialButton(
                      padding: EdgeInsets.zero,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minWidth: Get.width / 2 - 24,
                      onPressed: () => controller.changePage(1),
                      child: Text(
                        "Pick Up",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                color: controller.pageIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16,
                                fontWeight: controller.pageIndex == 1
                                    ? FontWeight.w600
                                    : FontWeight.w400),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
