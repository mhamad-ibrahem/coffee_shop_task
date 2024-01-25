import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:coffe_shop/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/product_description_section.dart';
import '../widgets/product_image.dart';
import '../widgets/product_name_section.dart';
import '../widgets/product_price_section.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: customAppBar(title: 'Detail', context: context,
       actions: [Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(height: 20,width: 20,child: SvgPicture.asset(AppAssets().favoriteIcon2),),
      )]),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: const [
          ProductImageWidget(),
          ProductNameSection(),
          ProductDescriptionSection(),
          ProductPriceSection(),
        ],
      ),
    );
  }
}
