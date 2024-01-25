import 'package:coffe_shop/core/constant/size/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constant/colors/app_colors.dart';
import 'sub_widgets/product_card_iamge.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColors().white,
          borderRadius: BorderRadius.circular(AppSize.appCustomRadius)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductCardImage(),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5, top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cappucino',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 16.sp,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'with Chocolate',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.lGreyColor2,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ 4.53',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        alignment: Alignment.center,
                          height: 45,
                          width: 45,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.add,
                            color: AppColors().white,
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
