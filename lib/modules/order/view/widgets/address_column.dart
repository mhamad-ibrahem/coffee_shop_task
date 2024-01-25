import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:coffe_shop/widgets/dividers/custom_horizontal_divider.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/colors/app_colors.dart';
import 'sub_widgets/custom_button_with_icon.dart';

class AddressColumn extends StatelessWidget {
  const AddressColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delivery Address",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontWeight: FontWeight.w600, color: AppColors.lBlack),
          ),
          const SizedBox(
            height: 12.5,
          ),
          Text(
            "Jl. Kpg Sutoyo",
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.lBlack,
                  fontSize: 14,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: AppColors.darkGreyColor3,
                ),
          ),
          const SizedBox(
            height: 2.5,
          ),
          Row(
            children: [
              CustomButtonWithIcon(
                  icon: AppAssets().editIcon,
                  onPressed: () {},
                  text: "Edit Address"),
              const SizedBox(
                width: 10,
              ),
              CustomButtonWithIcon(
                  icon: AppAssets().noteIcon,
                  onPressed: () {},
                  text: "Add Note"),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const CustomHorizontalDivider(),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
