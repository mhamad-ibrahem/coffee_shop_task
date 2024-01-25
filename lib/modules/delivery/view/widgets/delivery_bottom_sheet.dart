import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'sub_widgets/delivery_card.dart';
import 'sub_widgets/delivery_top_details.dart';
import 'sub_widgets/driver_card.dart';

class DeliveryBottomSheet extends StatelessWidget {
  const DeliveryBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        color: AppColors().white,
      ),
      child: const Column(
        children: [
          DeliveryTopDetails(),
          DeliveryCard(),
          SizedBox(height: 20,),
          DriverCard()
        ],
      ),
    );
  }
}
