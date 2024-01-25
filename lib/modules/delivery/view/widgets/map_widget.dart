import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:coffe_shop/core/constant/size/app_size.dart';
import 'package:flutter/material.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.screenHeight(context: context)*0.6,
      width: AppSize.screenWidth(context: context),
      child: Image.asset(AppAssets().mapImage),
    );
  }
}