import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  Dio dio = Dio();

  final String _baseUrl = 'https://real-time-product-search.p.rapidapi.com/';

  Future<Map<String, dynamic>> get(String category) async {
    var response = await dio.get(
      '$_baseUrl${'search?q=$category&country=us&limit=20&sort_by=TOP_RATED'}',
      options: Options(
        headers: {
          'X-RapidAPI-Key': dotenv.env['X-RapidAPI-Key'],
          'X-RapidAPI-Host': 'real-time-product-search.p.rapidapi.com',
        },
      ),
    );

    return response.data;
  }
}
