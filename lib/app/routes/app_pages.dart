import 'package:ecom/app/features/product/binding/cart_binding.dart';
import 'package:ecom/app/features/product/binding/product_binding.dart';
import 'package:ecom/app/features/product/views/checkout_view.dart';
import 'package:get/get.dart';
import 'package:ecom/app/routes/app_routes.dart';
import 'package:ecom/app/features/product/views/product_details_view.dart';
import 'package:ecom/app/features/product/views/product_view.dart';
import 'package:ecom/app/features/product/views/cart_view.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.product,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: AppRoutes.productDetails,
      page: () => ProductDetailsView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: AppRoutes.cart,
      page: () => CartView(),
    ),
    GetPage(
      name: AppRoutes.checkout,
      page: () => const CheckoutView(),
    ),
  ];
}
