import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/category_model.dart';

class CategoryRepository {
  final ApiClient client;

  CategoryRepository({required this.client});

  List<CategoryModel> categories = [];

  Future<List<CategoryModel>> fetchCategories({
    Map<String, dynamic>? queryParameters,
  }) async {
    if (categories.isNotEmpty) return categories;
    var rawCategories = await client.fetchCategories(
      queryParameters: queryParameters,
    );
    categories = rawCategories
        .map((json) => CategoryModel.fromJson(json))
        .toList();
    return categories;
  }
}
