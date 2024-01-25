import 'package:flutter/material.dart';

import '../../../../../core/constant/colors/app_colors.dart';
import 'custom_progress_container.dart';

class DeliveryTopDetails extends StatelessWidget {
  const DeliveryTopDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '10 minutes left',
          style:
              Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 8,),
        RichText(
          text: TextSpan(
              text: 'Delivery to',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.darkGreyColor3, fontSize: 12),
              children: [
                TextSpan(
                  text: 'Jl. Kpg Sutoyo',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: AppColors.lBlack2, fontSize: 12),
                )
              ]),
        ),
        const SizedBox(height: 25,),
        const Row(
          children: [
            Expanded(child: CustomProgressContainer(),),
            Expanded(child: CustomProgressContainer(),),
            Expanded(child: CustomProgressContainer(),),
            Expanded(child: CustomProgressContainer(color: AppColors.greyColor4,),),
          ],
        ),
        const SizedBox(height: 15,),
      ],
    );
  }
}
