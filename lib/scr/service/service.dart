import 'package:dio/dio.dart';

import '../config/config.dart';

final dio = Dio();

class ApiService {
  static Future<List<dynamic>> fetchNewsData() async {
    final response = await dio.get(AppConfig.baseUrl + AppConfig.apiKey);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = response.data;
      final List<dynamic> articles = data['articles'];
      return articles;
    } else {
      throw Exception('Failed to load news');
    }
  }
}