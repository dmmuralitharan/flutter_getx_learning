import 'package:ecom/app/features/product/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModel productDetails = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(productDetails.name),
            const SizedBox(
              height: 15,
            ),
            Text('\$ ${productDetails.price.toString()}'),
          ],
        ),
      ),
    );
  }
}
