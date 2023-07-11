import 'package:e_canteen/models/cart_model.dart';
import 'package:e_canteen/services/cart_services.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  APICartServices apiCartServices = APICartServices();

  bool isLoading = false;
  CartModel? cartModel;
  var total = 0.0.obs;

  Future<void> addToCart(int productId, int quantity) async {
    isLoading = true;
    final response = await APICartServices.addToCart(productId, quantity);
    if (response != null) {
      cartModel = response;
      total.value = cartModel!.orderItems?[0].totalPrice ?? 0.0;
      isLoading = false;
    }
    isLoading = false;
  }
}
