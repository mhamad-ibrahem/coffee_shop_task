import 'package:flutter/material.dart';

import '../../../../../core/constant/assets/app_assets.dart';
import '../../../../../core/constant/colors/app_colors.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.lGreyColor3),
          borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Container(
            width: 62,
            height: 62,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.lGreyColor3,
                ),
                borderRadius: BorderRadius.circular(14)),
            child: Image.asset(AppAssets().deliveryIcon),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivered your order",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(fontSize: 14, color: AppColors.lBlack2),
                ),
                Text(
                  "We deliver your goods to you in the shortes possible time.",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: AppColors.darkGreyColor3),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
