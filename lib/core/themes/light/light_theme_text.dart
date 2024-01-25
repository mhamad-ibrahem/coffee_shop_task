import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:flutter/material.dart';

import '../../constant/colors/app_colors.dart';

AppColors appColors = AppColors();
TextStyle displaySmallLight() {
  return  TextStyle(
      color: appColors.black, fontSize: 12, fontWeight: FontWeight.w400,fontFamily: AppAssets().sora);
}

TextStyle displayMediumLight() {
  return  TextStyle(
      color: appColors.black, fontSize: 16, fontWeight: FontWeight.w500,fontFamily: AppAssets().sora);
}

TextStyle displayLargeLight() {
  return  TextStyle(
      color: appColors.black, fontSize: 20, fontWeight: FontWeight.bold,fontFamily: AppAssets().sora);
}
