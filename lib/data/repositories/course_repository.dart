import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/course_model.dart';

class CourseRepository {
  final ApiClient client;

  List<CourseModel> courses = [];

  CourseRepository({required this.client});

  Future<List<CourseModel>> fetchCourses({
    Map<String, dynamic>? queryParameters,
  }) async {
    if (courses.isNotEmpty) {
      return courses;
    }

    final rawList = await client.fetchCourses(queryParameters: queryParameters);

    courses = rawList
        .map((json) => CourseModel.fromJson(json as Map<String, dynamic>))
        .toList();
    return courses;
  }
}
