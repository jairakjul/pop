import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    if (usernameController.text == 'admin' &&
        passwordController.text == '1234') {
      Get.offAllNamed(AppRoutes.home); // <- แก้ตรงนี้
    } else {
      Get.snackbar('Error', 'Invalid credentials',
        snackPosition: SnackPosition.BOTTOM);
    }
  }
}
