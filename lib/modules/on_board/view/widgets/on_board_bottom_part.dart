import 'package:coffe_shop/routes/routes_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/colors/app_colors.dart';
import '../../../../widgets/buttons/custom_button.dart';

class OnBoardBottomPartWidget extends StatelessWidget {
  const OnBoardBottomPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Coffee so good,\nyour taste buds\nwill love it.',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: AppColors().white,
                  fontSize: 32.sp,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'The best grain, the finest roast, the\npowerful flavor.',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: AppColors.greyColor,
                  fontSize: 14.sp,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            buttonBody: 'Get Started',
            onTap: () {
              Get.offAllNamed(AppRoutes.mainRoute);
            },
            height: 61,
          )
        ],
      ),
    );
  }
}
