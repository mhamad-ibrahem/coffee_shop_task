import 'package:flutter/material.dart';

import '../widgets/delivery_bottom_sheet.dart';
import '../widgets/map_widget.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MapWidget(),
          DeliveryBottomSheet(),
        ],
      ),
    );
  }
}