import 'package:ecom/app/models/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;

  @override
  void onInit() {
    products.addAll([
      ProductModel(name: "Product 1", price: 1000.00),
      ProductModel(name: "Product 2", price: 2000.00),
      ProductModel(name: "Product 3", price: 3000.00),
    ]);
    super.onInit();
  }
}
