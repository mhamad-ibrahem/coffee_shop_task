import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/orders_controller.dart';

class ItemCountRow extends StatelessWidget {
  const ItemCountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                AppAssets().coffeeImage,
                height: 54,
                width: 54,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cappucino",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 16, color: AppColors.lBlack),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text("with Chocolate",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(color: AppColors.lGreyColor2))
                ],
              ),
            ],
          ),
          GetBuilder<OrderController>(
            builder: (controller) => Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.lGreyColor3)),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: controller.itemCount == 1
                          ? null
                          : () => controller.decreaseCount(),
                      icon: Icon(
                        Icons.remove,
                        size: 16,
                        color:
                            controller.itemCount == 1 ? null : AppColors.lBlack,
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "${controller.itemCount}",
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.lBlack),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.lGreyColor3)),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => controller.increaseCount(),
                      icon: const Icon(
                        Icons.add,
                        size: 16,
                        color: AppColors.lBlack,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
