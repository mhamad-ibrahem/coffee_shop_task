import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:coffe_shop/widgets/dividers/custom_horizontal_divider.dart';
import 'package:flutter/material.dart';

class PriceColumn extends StatelessWidget {
  const PriceColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Summary",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontSize: 16, color: AppColors.lBlack),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Price",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 14, color: AppColors.lBlack)),
              Text(
                "\$ 4.53",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 14, color: AppColors.lBlack),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Delivery Fee",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 14, color: AppColors.lBlack)),
              Row(
                children: [
                  Text("\$ 2.0",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14,
                          color: AppColors.lBlack,
                          decoration: TextDecoration.lineThrough)),
                  const SizedBox(
                    width: 5,
                  ),
                  Text("\$ 1.0",
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 14, color: AppColors.lBlack))
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomHorizontalDivider(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
