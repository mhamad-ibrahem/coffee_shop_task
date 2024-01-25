import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/colors/app_colors.dart';
import 'sub_widgets/product_size.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          'Description',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 16.sp,
              ),
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
              text:
                  'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.lGreyColor2, fontSize: 14),
              children: [
                TextSpan(
                  text: 'Read More',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: AppColors.primaryColor, fontSize: 14),
                )
              ]),
        ),
        ProductSize(),
      ],
    );
  }
}
