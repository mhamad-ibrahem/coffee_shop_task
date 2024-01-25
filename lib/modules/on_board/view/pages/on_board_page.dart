import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:coffe_shop/core/constant/size/app_size.dart';
import 'package:flutter/material.dart';

import '../widgets/on_board_bottom_part.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: ListView(
        children: [
          SizedBox(
            height: AppSize.screenHeight(context: context) * 0.58,
            width: AppSize.screenWidth(context: context),
            child: Image.asset(
              AppAssets().background,
              fit: BoxFit.cover,
            ),
          ),
          const OnBoardBottomPartWidget(),
        ],
      ),
    );
  }
}
