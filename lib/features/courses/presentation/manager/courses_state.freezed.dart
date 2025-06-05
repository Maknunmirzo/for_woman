// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoursesState {

 List<CourseModel> get courses; CategoryModel? get selectedCategory; CoursesStatus get status; List<CourseModel> get visibleCourses; int get visibleCount; List<CategoryModel> get categories;
/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoursesStateCopyWith<CoursesState> get copyWith => _$CoursesStateCopyWithImpl<CoursesState>(this as CoursesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoursesState&&const DeepCollectionEquality().equals(other.courses, courses)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.visibleCourses, visibleCourses)&&(identical(other.visibleCount, visibleCount) || other.visibleCount == visibleCount)&&const DeepCollectionEquality().equals(other.categories, categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(courses),selectedCategory,status,const DeepCollectionEquality().hash(visibleCourses),visibleCount,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'CoursesState(courses: $courses, selectedCategory: $selectedCategory, status: $status, visibleCourses: $visibleCourses, visibleCount: $visibleCount, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CoursesStateCopyWith<$Res>  {
  factory $CoursesStateCopyWith(CoursesState value, $Res Function(CoursesState) _then) = _$CoursesStateCopyWithImpl;
@useResult
$Res call({
 List<CourseModel> courses, CategoryModel? selectedCategory, CoursesStatus status, List<CourseModel> visibleCourses, int visibleCount, List<CategoryModel> categories
});




}
/// @nodoc
class _$CoursesStateCopyWithImpl<$Res>
    implements $CoursesStateCopyWith<$Res> {
  _$CoursesStateCopyWithImpl(this._self, this._then);

  final CoursesState _self;
  final $Res Function(CoursesState) _then;

/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courses = null,Object? selectedCategory = freezed,Object? status = null,Object? visibleCourses = null,Object? visibleCount = null,Object? categories = null,}) {
  return _then(_self.copyWith(
courses: null == courses ? _self.courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as CategoryModel?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CoursesStatus,visibleCourses: null == visibleCourses ? _self.visibleCourses : visibleCourses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,visibleCount: null == visibleCount ? _self.visibleCount : visibleCount // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}

}


/// @nodoc


class _CoursesState implements CoursesState {
  const _CoursesState({required final  List<CourseModel> courses, this.selectedCategory, required this.status, required final  List<CourseModel> visibleCourses, required this.visibleCount, required final  List<CategoryModel> categories}): _courses = courses,_visibleCourses = visibleCourses,_categories = categories;
  

 final  List<CourseModel> _courses;
@override List<CourseModel> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}

@override final  CategoryModel? selectedCategory;
@override final  CoursesStatus status;
 final  List<CourseModel> _visibleCourses;
@override List<CourseModel> get visibleCourses {
  if (_visibleCourses is EqualUnmodifiableListView) return _visibleCourses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visibleCourses);
}

@override final  int visibleCount;
 final  List<CategoryModel> _categories;
@override List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoursesStateCopyWith<_CoursesState> get copyWith => __$CoursesStateCopyWithImpl<_CoursesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoursesState&&const DeepCollectionEquality().equals(other._courses, _courses)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._visibleCourses, _visibleCourses)&&(identical(other.visibleCount, visibleCount) || other.visibleCount == visibleCount)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_courses),selectedCategory,status,const DeepCollectionEquality().hash(_visibleCourses),visibleCount,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CoursesState(courses: $courses, selectedCategory: $selectedCategory, status: $status, visibleCourses: $visibleCourses, visibleCount: $visibleCount, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CoursesStateCopyWith<$Res> implements $CoursesStateCopyWith<$Res> {
  factory _$CoursesStateCopyWith(_CoursesState value, $Res Function(_CoursesState) _then) = __$CoursesStateCopyWithImpl;
@override @useResult
$Res call({
 List<CourseModel> courses, CategoryModel? selectedCategory, CoursesStatus status, List<CourseModel> visibleCourses, int visibleCount, List<CategoryModel> categories
});




}
/// @nodoc
class __$CoursesStateCopyWithImpl<$Res>
    implements _$CoursesStateCopyWith<$Res> {
  __$CoursesStateCopyWithImpl(this._self, this._then);

  final _CoursesState _self;
  final $Res Function(_CoursesState) _then;

/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courses = null,Object? selectedCategory = freezed,Object? status = null,Object? visibleCourses = null,Object? visibleCount = null,Object? categories = null,}) {
  return _then(_CoursesState(
courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as CategoryModel?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CoursesStatus,visibleCourses: null == visibleCourses ? _self._visibleCourses : visibleCourses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,visibleCount: null == visibleCount ? _self.visibleCount : visibleCount // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}


}

// dart format on
