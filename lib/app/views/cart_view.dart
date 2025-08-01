import 'package:ecom/app/controllers/cart_controller.dart';
import 'package:ecom/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends StatelessWidget {
  CartView({super.key});
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                return ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final productItem = cartController.cartItems[index];

                    return ListTile(
                      title: Text(productItem.name),
                      subtitle: Text('\$ ${productItem.price.toString()}'),
                      trailing: IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                            title: "Remove Item",
                            middleText: "Are you sure ?",
                            textConfirm: "Yes",
                            textCancel: "No",
                            confirmTextColor: Colors.white,
                            onConfirm: () {
                              cartController.removeFromCart(productItem);
                              Get.back();
                            },
                          );
                        },
                        icon: const Icon(Icons.remove_circle_outline),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Todal: \$ ${cartController.totalAmount.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 24),
              ),
            );
          }),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.checkout);
            },
            child: const Text("Checkout"),
          ),
        ],
      ),
    );
  }
}
