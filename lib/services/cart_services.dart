import 'dart:convert';

import 'package:e_canteen/consts/text_const.dart';
import 'package:e_canteen/models/cart_model.dart';
import 'package:e_canteen/services/storage_services.dart';
import 'package:http/http.dart' as http;

class APICartServices {
  static const String baseUrl = 'https://api.denzo.io/api/cus/v1';

  static Future<CartModel> addToCart(int productId, int quantity) async {
    print('Bearer ${TokenStorage.token}');
    final Map<String, String> headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${TokenStorage.token}',
    };

    final Map<String, dynamic> body = {
      'product': productId.toString(),
      'quantity': quantity.toString(),
    };

    try {
      final response = await http.post(Uri.parse(AppTextConst.cartApiUrl),
          headers: headers, body: body);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        CartModel cart = CartModel.fromJson(responseData["order"]);
        return cart;
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      throw Exception('Failed to fetch data');
    }
  }
}
