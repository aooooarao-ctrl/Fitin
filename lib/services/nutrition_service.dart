import 'package:dio/dio.dart';
import '../config/app_config.dart';

class NutritionService {
  late Dio _dio;
  
  NutritionService() {
    _dio = Dio(BaseOptions(baseUrl: AppConfig.apiBaseUrl));
  }
  
  Future<List<Map<String, dynamic>>> getRecipes({String? search, List<String>? filters}) async {
    try {
      final response = await _dio.get('/recipes/search', queryParameters: {'search': search});
      return List<Map<String, dynamic>>.from(response.data['recipes'] ?? []);
    } catch (e) {
      throw Exception('Failed to fetch recipes: $e');
    }
  }
}
