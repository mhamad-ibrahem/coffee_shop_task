import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscountRow extends StatelessWidget {
  const DiscountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: MaterialButton(
        padding: const EdgeInsets.all(20),
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color:AppColors.lGreyColor3),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppAssets().discountIcon),
                const SizedBox(
                  width: 10,
                ),
                 Text(
                  "1 Discount is applied",
                  style:
                  Theme.of(context).textTheme.displayLarge!.copyWith( fontSize: 14,color: AppColors.lBlack),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
