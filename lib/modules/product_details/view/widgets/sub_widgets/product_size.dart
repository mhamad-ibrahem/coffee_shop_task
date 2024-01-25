import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:coffe_shop/core/constant/size/app_size.dart';
import 'package:coffe_shop/modules/product_details/controller/product_details_controller.dart';
import 'package:coffe_shop/routes/routes_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductSize extends StatelessWidget {
  ProductSize({super.key});
  final List<String> productSizeList = ['S', 'M', 'L'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Size',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 16.sp,
              ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 50,
          width: AppSize.screenWidth(context: context),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productSizeList.length,
              itemBuilder: (context, index) =>
                  GetBuilder<ProductDetailsController>(
                    builder: (controller) => GestureDetector(
                      onTap: (){
                        controller.selectedSize= productSizeList[index];
                        controller.update();
                      },
                      child: Container(
                        width: 96,
                        margin: const EdgeInsets.only(right: 15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:
                                controller.selectedSize == productSizeList[index]
                                    ? AppColors.lightPrimaryColor
                                    : AppColors().white,
                            border: Border.all(
                                color: controller.selectedSize ==
                                        productSizeList[index]
                                    ? AppColors.primaryColor
                                    : AppColors.lGreyColor4)),
                        child: Text(
                          productSizeList[index],
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontSize: 14),
                        ),
                      ),
                    ),
                  )),
        ),
      ],
    );
  }
}
