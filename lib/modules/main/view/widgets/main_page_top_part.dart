import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:coffe_shop/core/constant/size/app_size.dart';
import 'package:flutter/material.dart';

import 'sub_widgets/main_search_top_part_widget.dart';
import 'sub_widgets/miain-page_tab_bar.dart';

class MainPageTopPartWidget extends StatelessWidget {
  const MainPageTopPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            const MainSearchTopPartWidget(),
            Container(
              height: 140,
              width: AppSize.screenWidth(context: context),
              margin: const EdgeInsets.only(right: 20,left: 20,top:210 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.appCustomRadius),
                image: DecorationImage(image: AssetImage(AppAssets().banner,),fit: BoxFit.cover),
              ),
            )
          ],
        ),
        // const SizedBox(height: 60,),
        const MainTabBarWidget(),
      ],
    );
  }
}
