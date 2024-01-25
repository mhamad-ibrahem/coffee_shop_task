import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/colors/app_colors.dart';
import '../../../../widgets/dividers/custom_horizontal_divider.dart';

class ProductNameSection extends StatelessWidget {
  const ProductNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cappucino',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 16.sp,
              ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'with Chocolate',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.lGreyColor2,
              ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.star_rounded,
                  color: AppColors.yellow,
                ),
                Text(" 4.8",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 16,
                        )),
                Text(" (230)",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.darkGreyColor3,
                        ))
              ],
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.greyColor3,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Image.asset(AppAssets().cacaoIcon),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 45,
                  width: 45,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: AppColors.greyColor3,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Image.asset(AppAssets().milkIcon),
                )
              ],
            ),
          ],
        ),
        const CustomHorizontalDivider(),
      ],
    );
  }
}
