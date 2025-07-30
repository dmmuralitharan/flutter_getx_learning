import 'package:get/get.dart';
import 'package:ecom/app/routes/app_routes.dart';
import 'package:ecom/app/features/product/views/product_details_view.dart';
import 'package:ecom/app/features/product/views/product_view.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.product,
      page: () => ProductView(),
    ),
    GetPage(
      name: AppRoutes.productDetails,
      page: () => const ProductDetailsView(),
    ),
  ];
}
