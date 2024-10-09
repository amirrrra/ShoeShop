import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

  final String _baseUrl = 'https://real-time-product-search.p.rapidapi.com/';

  Future<Map<String, dynamic>> get(String category) async {
    var response = await dio.get(
      '$_baseUrl${'search?q=$category&country=us&limit=20&sort_by=TOP_RATED'}',
    );

    return response.data;
  }
}
