import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Cart'),),
      body: Obx(() {
        if (controller.cartItems.isEmpty) {
          return const Center(child: Text('Your cart is empty'));
        }
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: controller.cartItems.length,
          itemBuilder: (context, index) {
            final item = controller.cartItems[index];
            return ListTile(
              leading: Image.network(item.image, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(item.name),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => controller.removeFromCart(item),
              ),
            );
          },
        );
      }),
    );
  }
}