import 'package:e_canteen/models/product_model.dart';
import 'package:e_canteen/services/products_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final ApiService _productService = ApiService();
  ProductModel? products;
  final isLoading = false.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;
      final productList = await _productService.fetchData();
      products = productList;
    } catch (e) {
      // Handle error, show error message
    } finally {
      isLoading.value = false;
    }
  }
}
