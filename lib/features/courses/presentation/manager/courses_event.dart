part of 'courses_bloc.dart';





sealed class CoursesEvent {}

final class LoadingCourses extends CoursesEvent {}

final class ShowMoreCourses extends CoursesEvent {}

final class SelectedCategoryCourses extends CoursesEvent {
  final CategoryModel category;

  SelectedCategoryCourses({required this.category});
}