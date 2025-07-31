import 'package:ecom/app/features/product/controllers/cart_controller.dart';
import 'package:ecom/app/features/product/models/product_model.dart';
import 'package:ecom/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsView extends StatelessWidget {
  ProductDetailsView({super.key});

  final CartController cartController = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    final ProductModel productDetails = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(AppRoutes.cart),
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(productDetails.name),
            const SizedBox(
              height: 10,
            ),
            Text('\$ ${productDetails.price.toString()}'),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                cartController.addToCart(productDetails);
                Get.snackbar(
                  "Added to Cart",
                  "${productDetails.name} added to your cart",
                  snackPosition: SnackPosition.BOTTOM,
                  duration: const Duration(seconds: 2),
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                );
              },
              child: const Text("Add to Cart"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      color: Colors.white,
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.shopping_cart),
                            title: const Text("View Cart"),
                            onTap: () => Get.offAndToNamed(AppRoutes.cart),
                          ),
                          ListTile(
                            leading: const Icon(Icons.payment),
                            title: const Text("View Checkout"),
                            onTap: () => Get.offAndToNamed(AppRoutes.checkout),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text("More Actions")),
          ],
        ),
      ),
    );
  }
}
