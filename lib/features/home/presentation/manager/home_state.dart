import 'package:ayol_uchun/data/models/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/course_model.dart';
import '../../../../data/models/interview_model.dart';
import '../../../../data/models/social_account_model.dart';


part 'home_state.freezed.dart';

enum FieldStatus { idle, loading, error}

@freezed
 abstract class HomeState with _$HomeState {
  const factory HomeState({
  required  String? firstName,
    required FieldStatus firstNameStatus,
    required List<CourseModel> courses,
    required FieldStatus coursesStatus,
    required List<SocialAccountModel> socialAccounts,
    required FieldStatus socialAccountsStatus,
    required List<InterviewModel> interviews,
    required FieldStatus interviewsStatus,
    required List<CategoryModel> categories,
    required FieldStatus categoryStatus,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
    firstName: null,
    firstNameStatus: FieldStatus.loading,
    courses: [],
    coursesStatus: FieldStatus.loading,
    socialAccounts: [],
    socialAccountsStatus: FieldStatus.loading,
    interviews: [],
    interviewsStatus: FieldStatus.loading,
    categories: [],
    categoryStatus: FieldStatus.loading
  );
}
