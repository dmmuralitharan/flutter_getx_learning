import 'package:ecom/app/features/product/controllers/cart_controller.dart';
import 'package:ecom/app/routes/app_pages.dart';
import 'package:ecom/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(CartController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Com",
      initialRoute: AppRoutes.product,
      getPages: AppPages.routes,
    );
  }
}
