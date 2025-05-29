import 'package:get/get.dart';
import '../../../data/models/product_model.dart';

class CartController extends GetxController {
  final cartItems = <Product>[].obs;

  void addToCart(Product Product) {
    cartItems.add(Product);
    Get.snackbar('Added', '${Product.name} added to cart', snackPosition: SnackPosition.BOTTOM);
  }

  void removeFromCart(Product Product) {
    cartItems.remove(Product);
    Get.snackbar('Removed', '${Product.name} removed from cart', snackPosition: SnackPosition.BOTTOM);
  }
}