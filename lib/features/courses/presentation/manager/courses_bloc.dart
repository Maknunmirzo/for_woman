import 'package:ayol_uchun/data/models/category_model.dart';
import 'package:ayol_uchun/data/models/course_model.dart';
import 'package:ayol_uchun/data/repositories/category_repository.dart';
import 'package:ayol_uchun/data/repositories/course_repository.dart';
import 'package:ayol_uchun/features/courses/presentation/manager/courses_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'courses_event.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  final CourseRepository _courseRepo;

  final CategoryRepository _categoryRepo;

  CoursesBloc({
    required CourseRepository courseRepo,
    required CategoryRepository categoryRepo,
  }) : _categoryRepo = categoryRepo,
       _courseRepo = courseRepo,
       super(CoursesState.initial()){
    on<LoadingCourses>(_loading);
    on<SelectedCategoryCourses>(_selectedCategory);
    on<ShowMoreCourses>(_showMoreCourse);
    add(LoadingCourses());
  }

  Future _loading(LoadingCourses event, Emitter<CoursesState> emit) async {
    emit(state.copyWith(status: CoursesStatus.loading));
    final courses = await _fetchCourses();
    final categories = await _categoryRepo.fetchCategories();
    emit(
      state.copyWith(
        status: CoursesStatus.idle,
        courses: courses,
        categories: categories,
      ),
    );
  }

  Future _selectedCategory(SelectedCategoryCourses event,Emitter<CoursesState> emit,) async{
    emit(state.copyWith(status: CoursesStatus.loading,selectedCategory: event.category));
    final courses = await _fetchCourses();
    emit(
      state.copyWith(
        status: CoursesStatus.idle,
        courses: courses,

      ),
    );
  }

  Future _showMoreCourse(ShowMoreCourses event,Emitter<CoursesState> emit) async{
    emit(state.copyWith(status: CoursesStatus.loadingMore));
    await Future.delayed(Duration(milliseconds: 500));
    emit(state.copyWith(visibleCount: state.visibleCount+4,status: CoursesStatus.idle));
  }

  Future<List<CourseModel>> _fetchCourses() async {
    final courses = await _courseRepo.fetchCourses(
      queryParameters: {"CategoryId": state.selectedCategory?.id ?? ""},
    );
    return courses;
  }


}
