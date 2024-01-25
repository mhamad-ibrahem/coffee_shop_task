
import 'routes_export.dart';

class Routes {
  static List<GetPage<dynamic>>? routes = [
    GetPage(
        name: AppRoutes.onBoardRoute,
        page: () => const OnBoardPage(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 300)),
    //main page
    GetPage(
        name: AppRoutes.mainRoute,
        page: () => const MainPage(),
        binding: MainBindings(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 300)),

    GetPage(
        name: AppRoutes.productDetailsRoute,
        page: () => const ProductDetailsPage(),
        binding: ProductDetailsBindings(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 300)),
    //order
    GetPage(
        name: AppRoutes.orderRoute,
        page: () => const OrdersPage(),
        binding: OrderBinding(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: AppRoutes.deliveryRoute,
        page: () => const DeliveryPage(),
        binding: DeliveryBinding(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 300)),
  ];
}
