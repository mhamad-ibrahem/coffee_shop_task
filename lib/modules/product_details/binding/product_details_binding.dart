import 'package:coffe_shop/modules/product_details/controller/product_details_controller.dart';
import 'package:coffe_shop/routes/routes_export.dart';

class ProductDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductDetailsController());
  }
}
