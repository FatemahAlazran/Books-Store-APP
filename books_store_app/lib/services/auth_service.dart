import 'package:books_store_app/models/user.dart';
import 'package:dio/dio.dart';

class AuthService {
  final String _baseUrl = "https://coded-books-api-auth.eapi.joincoded.com";
  final Dio _dio = Dio();

  Future signup({required User user}) async {
    String token = "";
    try {
      final Response response = await _dio.post(_baseUrl + "/signup");
      response.data["token"];
    } catch (e) {
      throw e.toString();
    }
  }
}
