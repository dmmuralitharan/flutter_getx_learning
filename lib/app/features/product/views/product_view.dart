import 'package:ecom/app/features/product/controllers/product_controller.dart';
import 'package:ecom/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key});

  // final ProductController productController = Get.put(ProductController());
  final ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: Obx(
        () {
          return ListView.builder(
            itemCount: productController.products.length,
            itemBuilder: (context, index) {
              final product = productController.products[index];

              return ListTile(
                title: Text(product.name),
                subtitle: Text('\$ ${product.price.toString()}'),
                onTap: () {
                  Get.toNamed(AppRoutes.productDetails, arguments: product);
                },
              );
            },
          );
        },
      ),
    );
  }
}
