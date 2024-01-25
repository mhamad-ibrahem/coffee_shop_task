import 'package:flutter/material.dart';

import '../widgets/main_nav_bar.dart';
import '../widgets/main_page_top_part.dart';
import '../widgets/main_product_list.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MainNavBar(),
      body: Column(
        children: [
          MainPageTopPartWidget(),
          Expanded(child:  MainProductList())
        ],
      ),
    );
  }
}
