import 'package:ayol_uchun/data/repositories/auth_repository.dart';
import 'package:ayol_uchun/data/repositories/category_repository.dart';
import 'package:ayol_uchun/data/repositories/course_repository.dart';
import 'package:ayol_uchun/data/repositories/interview_repository.dart';
import 'package:ayol_uchun/data/repositories/social_account_repository.dart';
import 'package:ayol_uchun/features/home/presentation/manager/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AuthRepository _authRepo;

  final CategoryRepository _categoryRepo;
  final CourseRepository _courseRepo;
  final SocialAccountRepository _socialAccountRepo;

  final InterviewRepository _interviewRepo;

  HomeBloc({
    required AuthRepository authRepo,
    required CategoryRepository categoryRepo,
    required CourseRepository courseRepo,
    required SocialAccountRepository socialAccountRepo,
    required InterviewRepository interviewRepo,
  }) : _categoryRepo = categoryRepo,
       _authRepo = authRepo,
       _courseRepo = courseRepo,
       _interviewRepo = interviewRepo,
       _socialAccountRepo = socialAccountRepo,
       super(HomeState.initial()){
    on<HomeLoading>(_loading);
    add(HomeLoading());
  }

  Future _loading(HomeLoading event, Emitter<HomeState> emit) async {
    emit(
      state.copyWith(
        coursesStatus: FieldStatus.loading,
        firstNameStatus: FieldStatus.loading,
        interviewsStatus: FieldStatus.loading,
        socialAccountsStatus: FieldStatus.loading,
      ),
    );

    var firstName = _authRepo.me().then((value) {
      emit(state.copyWith(firstName: value, firstNameStatus: FieldStatus.idle));
    });

    var courses = _courseRepo.fetchCourses(queryParameters: {"Limit": 4}).then((
      value,
    ) {
      emit(state.copyWith(coursesStatus: FieldStatus.idle, courses: value));
    });

    var categories = _categoryRepo.fetchCategories(queryParameters: {"Limit": 8}).then(
      (value) => emit(
        state.copyWith(categoryStatus: FieldStatus.idle, categories: value),
      ),
    );

    var interviews = _interviewRepo.fetchInterviews(queryParameters: {"Limit": 4}).then(
          (value) => emit(
        state.copyWith(interviewsStatus: FieldStatus.idle, interviews: value),
      ),
    );
    var socialAccounts = _socialAccountRepo.fetchSocialAccounts().then(
          (value) => emit(
        state.copyWith(socialAccountsStatus: FieldStatus.idle, socialAccounts: value),
      ),
    );
    await Future.wait([firstName, courses,categories,interviews,socialAccounts]);
  }
}
