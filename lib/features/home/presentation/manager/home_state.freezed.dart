// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 String? get firstName; FieldStatus get firstNameStatus; List<CourseModel> get courses; FieldStatus get coursesStatus; List<SocialAccountModel> get socialAccounts; FieldStatus get socialAccountsStatus; List<InterviewModel> get interviews; FieldStatus get interviewsStatus; List<CategoryModel> get categories; FieldStatus get categoryStatus;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.firstNameStatus, firstNameStatus) || other.firstNameStatus == firstNameStatus)&&const DeepCollectionEquality().equals(other.courses, courses)&&(identical(other.coursesStatus, coursesStatus) || other.coursesStatus == coursesStatus)&&const DeepCollectionEquality().equals(other.socialAccounts, socialAccounts)&&(identical(other.socialAccountsStatus, socialAccountsStatus) || other.socialAccountsStatus == socialAccountsStatus)&&const DeepCollectionEquality().equals(other.interviews, interviews)&&(identical(other.interviewsStatus, interviewsStatus) || other.interviewsStatus == interviewsStatus)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.categoryStatus, categoryStatus) || other.categoryStatus == categoryStatus));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,firstNameStatus,const DeepCollectionEquality().hash(courses),coursesStatus,const DeepCollectionEquality().hash(socialAccounts),socialAccountsStatus,const DeepCollectionEquality().hash(interviews),interviewsStatus,const DeepCollectionEquality().hash(categories),categoryStatus);

@override
String toString() {
  return 'HomeState(firstName: $firstName, firstNameStatus: $firstNameStatus, courses: $courses, coursesStatus: $coursesStatus, socialAccounts: $socialAccounts, socialAccountsStatus: $socialAccountsStatus, interviews: $interviews, interviewsStatus: $interviewsStatus, categories: $categories, categoryStatus: $categoryStatus)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 String? firstName, FieldStatus firstNameStatus, List<CourseModel> courses, FieldStatus coursesStatus, List<SocialAccountModel> socialAccounts, FieldStatus socialAccountsStatus, List<InterviewModel> interviews, FieldStatus interviewsStatus, List<CategoryModel> categories, FieldStatus categoryStatus
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? firstNameStatus = null,Object? courses = null,Object? coursesStatus = null,Object? socialAccounts = null,Object? socialAccountsStatus = null,Object? interviews = null,Object? interviewsStatus = null,Object? categories = null,Object? categoryStatus = null,}) {
  return _then(_self.copyWith(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,firstNameStatus: null == firstNameStatus ? _self.firstNameStatus : firstNameStatus // ignore: cast_nullable_to_non_nullable
as FieldStatus,courses: null == courses ? _self.courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,coursesStatus: null == coursesStatus ? _self.coursesStatus : coursesStatus // ignore: cast_nullable_to_non_nullable
as FieldStatus,socialAccounts: null == socialAccounts ? _self.socialAccounts : socialAccounts // ignore: cast_nullable_to_non_nullable
as List<SocialAccountModel>,socialAccountsStatus: null == socialAccountsStatus ? _self.socialAccountsStatus : socialAccountsStatus // ignore: cast_nullable_to_non_nullable
as FieldStatus,interviews: null == interviews ? _self.interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<InterviewModel>,interviewsStatus: null == interviewsStatus ? _self.interviewsStatus : interviewsStatus // ignore: cast_nullable_to_non_nullable
as FieldStatus,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,categoryStatus: null == categoryStatus ? _self.categoryStatus : categoryStatus // ignore: cast_nullable_to_non_nullable
as FieldStatus,
  ));
}

}


/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.firstName, required this.firstNameStatus, required final  List<CourseModel> courses, required this.coursesStatus, required final  List<SocialAccountModel> socialAccounts, required this.socialAccountsStatus, required final  List<InterviewModel> interviews, required this.interviewsStatus, required final  List<CategoryModel> categories, required this.categoryStatus}): _courses = courses,_socialAccounts = socialAccounts,_interviews = interviews,_categories = categories;
  

@override final  String? firstName;
@override final  FieldStatus firstNameStatus;
 final  List<CourseModel> _courses;
@override List<CourseModel> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}

@override final  FieldStatus coursesStatus;
 final  List<SocialAccountModel> _socialAccounts;
@override List<SocialAccountModel> get socialAccounts {
  if (_socialAccounts is EqualUnmodifiableListView) return _socialAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_socialAccounts);
}

@override final  FieldStatus socialAccountsStatus;
 final  List<InterviewModel> _interviews;
@override List<InterviewModel> get interviews {
  if (_interviews is EqualUnmodifiableListView) return _interviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviews);
}

@override final  FieldStatus interviewsStatus;
 final  List<CategoryModel> _categories;
@override List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  FieldStatus categoryStatus;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.firstNameStatus, firstNameStatus) || other.firstNameStatus == firstNameStatus)&&const DeepCollectionEquality().equals(other._courses, _courses)&&(identical(other.coursesStatus, coursesStatus) || other.coursesStatus == coursesStatus)&&const DeepCollectionEquality().equals(other._socialAccounts, _socialAccounts)&&(identical(other.socialAccountsStatus, socialAccountsStatus) || other.socialAccountsStatus == socialAccountsStatus)&&const DeepCollectionEquality().equals(other._interviews, _interviews)&&(identical(other.interviewsStatus, interviewsStatus) || other.interviewsStatus == interviewsStatus)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.categoryStatus, categoryStatus) || other.categoryStatus == categoryStatus));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,firstNameStatus,const DeepCollectionEquality().hash(_courses),coursesStatus,const DeepCollectionEquality().hash(_socialAccounts),socialAccountsStatus,const DeepCollectionEquality().hash(_interviews),interviewsStatus,const DeepCollectionEquality().hash(_categories),categoryStatus);

@override
String toString() {
  return 'HomeState(firstName: $firstName, firstNameStatus: $firstNameStatus, courses: $courses, coursesStatus: $coursesStatus, socialAccounts: $socialAccounts, socialAccountsStatus: $socialAccountsStatus, interviews: $interviews, interviewsStatus: $interviewsStatus, categories: $categories, categoryStatus: $categoryStatus)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, FieldStatus firstNameStatus, List<CourseModel> courses, FieldStatus coursesStatus, List<SocialAccountModel> socialAccounts, FieldStatus socialAccountsStatus, List<InterviewModel> interviews, FieldStatus interviewsStatus, List<CategoryModel> categories, FieldStatus categoryStatus
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? firstNameStatus = null,Object? courses = null,Object? coursesStatus = null,Object? socialAccounts = null,Object? socialAccountsStatus = null,Object? interviews = null,Object? interviewsStatus = null,Object? categories = null,Object? categoryStatus = null,}) {
  return _then(_HomeState(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,firstNameStatus: null == firstNameStatus ? _self.firstNameStatus : firstNameStatus // ignore: cast_nullable_to_non_nullable
as FieldStatus,courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,coursesStatus: null == coursesStatus ? _self.coursesStatus : coursesStatus // ignore: cast_nullable_to_non_nullable
as FieldStatus,socialAccounts: null == socialAccounts ? _self._socialAccounts : socialAccounts // ignore: cast_nullable_to_non_nullable
as List<SocialAccountModel>,socialAccountsStatus: null == socialAccountsStatus ? _self.socialAccountsStatus : socialAccountsStatus // ignore: cast_nullable_to_non_nullable
as FieldStatus,interviews: null == interviews ? _self._interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<InterviewModel>,interviewsStatus: null == interviewsStatus ? _self.interviewsStatus : interviewsStatus // ignore: cast_nullable_to_non_nullable
as FieldStatus,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,categoryStatus: null == categoryStatus ? _self.categoryStatus : categoryStatus // ignore: cast_nullable_to_non_nullable
as FieldStatus,
  ));
}


}

// dart format on
