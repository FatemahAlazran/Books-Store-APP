import 'package:books_store_app/models/book.dart';
import 'package:dio/dio.dart';

class BooksServices {
  final String _baseUrl =
      "https://coded-books-api-crud.eapi.joincoded.com/books/";
  final Dio _dio = Dio();
  List<Book> books = [];
  Future<List<Book>> getBooks() async {
    try {
      final Response response = await _dio.get(_baseUrl);
      books =
          List.from(response.data).map((book) => Book.fromJson(book)).toList();
      return books;
    } catch (e) {
      throw e.toString();
    }
  }

  createAPIBook(String? title, String? description, String? price) async {
    final response = await _dio.post(_baseUrl, data: {
      "title": title,
      "description": description,
      "price": price,
    });
    return response.data;
  }

  updateAPIBook(
      int id, String? title, String? description, String? price) async {
    final response = await _dio.put("$_baseUrl/$id", data: {
      "title": title,
      "description": description,
      "price": price,
    });
    return response.data;
  }

  deleteAPIBook({required int id}) async {
    final response = await _dio.delete("$_baseUrl/$id");
    return response.data;
  }
}
