import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../data/models/product_model.dart';

class HomeController extends GetxController {
  var productList = <Product>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    try {
      isLoading(true);

      final response = await http.get(
        Uri.parse('https://angsila.informatics.buu.ac.th/~66160391/api/get_products.php'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as List;
        productList.value = data.map((json) => Product.fromJson(json)).toList();
      } else {
        Get.snackbar('Error', 'Server Error: ${response.statusCode}',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading(false);
    }
  }
}
