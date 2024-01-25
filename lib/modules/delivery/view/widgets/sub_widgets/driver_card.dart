import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constant/colors/app_colors.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 55,
          width: 55,
          child: Image.asset(AppAssets().driverImage),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Johan Hawn",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(fontSize: 14, color: AppColors.lBlack2),
            ),
            Text(
              "Personal Courier",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.darkGreyColor3),
            ),
          ],
        )),
        Container(
          width: 55,
          height: 55,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.lGreyColor3,
              ),
              borderRadius: BorderRadius.circular(14)),
          child: SvgPicture.asset(AppAssets().phoneIcon),
        ),
      ],
    );
  }
}
