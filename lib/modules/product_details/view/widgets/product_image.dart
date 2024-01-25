import 'package:flutter/material.dart';

import '../../../../core/constant/assets/app_assets.dart';
import '../../../../core/constant/size/app_size.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      // height: 226,
      width: AppSize.screenWidth(context: context),
      child: Image.asset(AppAssets().coffeeImage2, fit: BoxFit.cover),
    );
  }
}
