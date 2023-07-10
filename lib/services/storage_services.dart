import 'package:get_storage/get_storage.dart';

class TokenStorage {
  static String get token => GetStorage().read('token') ?? '';
  static set token(String? value) => GetStorage().write('token', value);
}