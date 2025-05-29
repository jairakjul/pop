import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/product_model.dart';
import '../../home/controllers/home_controller.dart';

class CreateController extends GetxController {
  final nameController = TextEditingController();
  final priceController = TextEditingController();

  void addProduct() {
    final name = nameController.text;
    final price = double.tryParse(priceController.text) ?? 0;
    if (name.isEmpty || price <= 0) {
      Get.snackbar('Error', 'Invalid input', snackPosition: SnackPosition.BOTTOM);
      return;
    }

    final product = Product(
      id: DateTime.now().millisecondsSinceEpoch, // ให้ id แบบชั่วคราว
      name: name,
      description: '฿$price',
      image: '', // ใส่ URL รูปภาพจริง ถ้ามี
    );

    Get.find<HomeController>().productList.add(product); // <- ชื่อที่ถูกต้อง
    Get.back();
  }
}
