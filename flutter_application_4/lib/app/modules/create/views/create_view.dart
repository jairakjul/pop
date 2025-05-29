import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/create_controller.dart';

class CreateView extends GetView<CreateController> {
  const CreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Product')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.nameController,
              decoration: const InputDecoration(labelText: 'Product name'),
            ),
            TextField(
              controller: controller.priceController,
              decoration: const InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: controller.addProduct,
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
