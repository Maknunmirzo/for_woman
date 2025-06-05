import 'package:ayol_uchun/data/models/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/course_model.dart';


part 'courses_state.freezed.dart';

enum CoursesStatus { loading, idle, error,loadingMore }

@freezed
abstract class CoursesState with _$CoursesState {
  const factory CoursesState({
    required List<CourseModel> courses,
    CategoryModel? selectedCategory,
    required CoursesStatus status,
    required List<CourseModel> visibleCourses,
    required int visibleCount,
    required List<CategoryModel> categories,
  }) = _CoursesState;

  factory CoursesState.initial() => CoursesState(
    courses: [],
    selectedCategory: null,
    status: CoursesStatus.loading,
    visibleCourses: [],
    visibleCount: 4,
    categories: []
  );
}
