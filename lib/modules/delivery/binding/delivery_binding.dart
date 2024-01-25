
import 'package:coffe_shop/modules/delivery/controller/delivery_controller.dart';
import 'package:coffe_shop/routes/routes_export.dart';

class DeliveryBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DeliveryController());
  }

}