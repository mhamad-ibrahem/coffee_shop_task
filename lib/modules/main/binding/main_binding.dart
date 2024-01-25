import 'package:coffe_shop/modules/main/controller/main_controller.dart';
import 'package:coffe_shop/routes/routes_export.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
