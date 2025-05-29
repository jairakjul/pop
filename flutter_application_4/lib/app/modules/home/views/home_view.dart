import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../../routes/app_routes.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Menu'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Get.toNamed(AppRoutes.cart), // แก้ตรงนี้
          ),
        ],
      ),

      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.productList.length,
          itemBuilder: (context, index) {
            final product = controller.productList[index];
            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: Image.network(product.image, width: 50, height: 50, fit: BoxFit.cover),
                title: Text(product.name),
                subtitle: Text(product.description),
                trailing: ElevatedButton(
                  onPressed: () {
                    Get.find<CartController>().addToCart(product);
                  },
                  child: const Text("Add"),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
