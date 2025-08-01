import 'package:ecom/app/controllers/cart_controller.dart';
import 'package:ecom/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thank you for purchasing ..."),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                final CartController cartController =
                    Get.find<CartController>();

                cartController.cartService.clearCart();

                Get.snackbar(
                  "Order Placed",
                  "Your Order Placed Successfully",
                  duration: const Duration(seconds: 2),
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                );

                Get.offAllNamed(AppRoutes.product);
              },
              child: const Text("Place your order"),
            ),
          ],
        ),
      ),
    );
  }
}
