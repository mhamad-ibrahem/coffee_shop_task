import 'package:coffe_shop/routes/routes_export.dart';
import 'package:flutter/material.dart';

class MainController extends GetxController {
  int currentIndex = 0;
  int tapBarIndex = 0;
  bool isSelected = false;
  List<Widget> pages = [SizedBox(), SizedBox(), SizedBox(), SizedBox()];
  changePage(
    int value,
  ) {
    currentIndex = value;
    update();
  }
}
