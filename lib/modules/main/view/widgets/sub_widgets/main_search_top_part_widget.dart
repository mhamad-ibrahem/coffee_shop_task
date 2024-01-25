import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/widgets/search_field.dart';

class MainSearchTopPartWidget extends StatelessWidget {
  const MainSearchTopPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      padding: const EdgeInsets.all(20),
      color: AppColors().black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Location',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.lGreyColor,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    children: [
                      Text(
                        'Bilzen, Tanjungbalai',
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: AppColors.greyColor2,
                                  fontSize: 14,
                                ),
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: AppColors().white,
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 45,
                width: 45,
                child: Image.asset(AppAssets().avatar),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: SearchFieldWidget(),
          ),
        ],
      ),
    );
  }
}
