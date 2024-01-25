import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:coffe_shop/routes/routes_export.dart';
import 'package:coffe_shop/widgets/app_bar/custom_app_bar.dart';
import 'package:coffe_shop/widgets/buttons/custom_button.dart';
import 'package:coffe_shop/widgets/dividers/custom_horizontal_divider.dart';
import 'package:flutter/material.dart';
import '../widgets/address_Column.dart';
import '../widgets/cash_column.dart';
import '../widgets/custom_tab_bar.dart';
import '../widgets/discount_row.dart';
import '../widgets/item_count_row.dart';
import '../widgets/price_column.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Change into custom app bar
      appBar: customAppBar(title: "Order", context: context),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          const CustomTabBar(),
          const SizedBox(
            height: 20,
          ),
          const AddressColumn(),
          const ItemCountRow(),
          const SizedBox(
            height: 20,
          ),
          const CustomHorizontalDivider(
            color: AppColors.orderDividerColor,
            thickness: 4,
          ),
          const DiscountRow(),
          const PriceColumn(),
          const CashColumn(),
          //Change into CustomButton
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  CustomButton(height: 62, buttonBody: 'Order', onTap: () {
                    Get.toNamed(AppRoutes.deliveryRoute);
                  }))
        ],
      ),
    );
  }
}
