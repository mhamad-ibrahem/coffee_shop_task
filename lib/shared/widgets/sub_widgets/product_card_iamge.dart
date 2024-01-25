import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/assets/app_assets.dart';
import '../../../core/constant/size/app_size.dart';

class ProductCardImage extends StatelessWidget {
  const ProductCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(5),
      height: 132,
      width: AppSize.screenWidth(context: context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.appCustomRadius),
          image: DecorationImage(
              image: AssetImage(AppAssets().coffeeImage), fit: BoxFit.cover)),
      child: Row(
        children: [
          const Icon(Icons.star_rounded,color: AppColors.yellow,size: 18,),
          Text(
            "4.8",
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(fontSize: 10, color: AppColors().white),
          )
        ],
      ),
    );
  }
}
