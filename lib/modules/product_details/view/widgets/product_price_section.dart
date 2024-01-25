import 'package:coffe_shop/routes/routes_export.dart';
import 'package:coffe_shop/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/colors/app_colors.dart';

class ProductPriceSection extends StatelessWidget {
  const ProductPriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: AppColors().white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: AppColors.lGreyColor2, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ 4.53',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(color: AppColors.primaryColor, fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Expanded(child: CustomButton(buttonBody: "Buy Now", onTap: () {
                Get.toNamed(AppRoutes.orderRoute);
              },height: 62,)),
            ],
          ),
        ],
      ),
    );
  }
}
