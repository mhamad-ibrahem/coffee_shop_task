import 'package:coffe_shop/routes/routes_export.dart';
import 'package:coffe_shop/shared/widgets/product_card.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

class MainProductList extends StatelessWidget {
  const MainProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: DynamicHeightGridView(
          itemCount: 7,
          crossAxisCount: 2,
          builder: (context, index) => ProductCard(
                onTap: () {
                  Get.toNamed(AppRoutes.productDetailsRoute);
                },
              )),
    );
  }
}
