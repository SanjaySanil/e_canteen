import 'dart:convert';
import 'package:e_canteen/consts/text_const.dart';
import 'package:e_canteen/models/product_model.dart';
import 'package:e_canteen/services/storage_services.dart';
import 'package:http/http.dart' as http;

//Api request
class ApiService {
  Future<ProductModel> fetchData() async {
    try {
      final url = Uri.parse('${AppTextConst.productApiUrl}/products?page=1');
      final headers = {
        'Accept': 'application/json',
        'Authorization': "Bearer ${TokenStorage.token}",
      };

      final response = await http.get(url, headers: headers);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        ProductModel productModel = ProductModel.fromJson(data);
        return productModel;
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
