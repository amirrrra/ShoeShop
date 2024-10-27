import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  Dio dio = Dio();

  final String _baseUrl = 'https://real-time-product-search.p.rapidapi.com/';

  Future<Map<String, dynamic>> get(
    String category,
    num limit,
    String filter,
  ) async {
    var response = await dio.get(
      '$_baseUrl${'search?q=$category&country=us&limit=$limit&sort_by=$filter'}',
      options: Options(
        headers: {
          'X-RapidAPI-Key': dotenv.env['X-RapidAPI-Key'],
          'X-RapidAPI-Host': 'real-time-product-search.p.rapidapi.com',
        },
      ),
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Error occurred with response ${response.statusCode}");
    }
  }
}
