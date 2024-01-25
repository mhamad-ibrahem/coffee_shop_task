import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CashColumn extends StatelessWidget {
  const CashColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Payment",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 14, color: AppColors.lBlack),
              ),
              Text(
                "\$ 5.53",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 14, color: AppColors.lBlack),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(AppAssets().cardIcon),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.lWhite,
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.primaryColor,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Text(
                            "Cash",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14, color: AppColors().white),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "\$ 5.53",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: AppColors.lBlack),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 19.2,
                width: 19.2,
                child: MaterialButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    color: AppColors.darkGreyColor3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.white,
                      size: 17.5,
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
