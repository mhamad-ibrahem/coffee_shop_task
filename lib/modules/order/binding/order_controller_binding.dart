import 'package:get/get.dart';

import '../controller/orders_controller.dart';

class OrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OrderController());
  }
}
