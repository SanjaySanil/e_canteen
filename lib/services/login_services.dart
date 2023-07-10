import 'package:e_canteen/consts/text_const.dart';
import 'package:http/http.dart' as http;

class ApiLoginServices {
  static Future<http.Response> login(
      String username, String password, String storeId) {
    final headers = {'Accept': 'application/json'};
    final body = {
      'username': username,
      'password': password,
      'store_id': storeId,
    };
    return http.post(Uri.parse(AppTextConst.apiUrl),
        headers: headers, body: body);
  }
}
