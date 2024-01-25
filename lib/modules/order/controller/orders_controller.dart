import 'package:get/get.dart';

class OrderController extends GetxController {
  int pageIndex = 0;
  int itemCount = 1;
  changePage(int index) {
    if (pageIndex != index) {
      pageIndex = index;
      update();
    }
  }

  increaseCount() {
    itemCount++;
    update();
  }

  decreaseCount() {
    itemCount--;
    update();
  }
}
