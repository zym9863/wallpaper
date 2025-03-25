import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  // 从环境变量中读取Pixabay API密钥
  static String get apiKey => dotenv.env['PIXABAY_API_KEY'] ?? '';
  static const String baseUrl = 'https://pixabay.com/api/';

  // 获取壁纸列表
  Future<Map<String, dynamic>> getWallpapers({
    String query = '',
    int page = 1,
    int perPage = 30,
    String category = '',
  }) async {
    Map<String, String> queryParams = {
      'key': apiKey,
      'q': query,
      'page': page.toString(),
      'per_page': perPage.toString(),
      'image_type': 'photo',
      'safesearch': 'true',
    };

    if (category.isNotEmpty) {
      queryParams['category'] = category;
    }

    final Uri uri = Uri.parse(baseUrl).replace(queryParameters: queryParams);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load wallpapers: ${response.statusCode}');
    }
  }

  // 获取壁纸分类
  List<String> getCategories() {
    return [
      'backgrounds',
      'fashion',
      'nature',
      'science',
      'education',
      'feelings',
      'health',
      'people',
      'religion',
      'places',
      'animals',
      'industry',
      'computer',
      'food',
      'sports',
      'transportation',
      'travel',
      'buildings',
      'business',
      'music'
    ];
  }
}