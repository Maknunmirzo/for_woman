import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/app_added_community.dart';
import 'package:ayol_uchun/features/common/app_app_bar.dart';
import 'package:ayol_uchun/features/common/app_bottom_natigation_bar.dart';
import 'package:ayol_uchun/features/common/app_icon_text_button.dart';
import 'package:ayol_uchun/features/courses/presentation/manager/courses_bloc.dart';
import 'package:ayol_uchun/features/courses/presentation/manager/courses_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/presentation/widgets/home_course_widget.dart';
import '../../../home/presentation/widgets/home_course_widget_shimmer.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesBloc, CoursesState>(
      builder: (context, state) => Scaffold(
        extendBody: true,
        appBar: AppAppBar(
          action: "bell.svg",
          leadingTitle: "Kurslar",
          leadingIcon: "courses.svg",
          actionOnTap: () {},
        ),
        bottomNavigationBar: AppBottomNavigationBar(selectedIndex: 2),
        body: ListView(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 20.w,),
                if (state.selectedCategory != null)
                  Text(
                    "(${state.selectedCategory!.title})",
                    maxLines: 1,
                    softWrap: true,
                    style: TextStyle(
                      color: Color(0xff8898AA),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Kurslar",
                    maxLines: 1,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.h,),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,

                itemCount: state.status == CoursesStatus.loading
                    ? 4
                    : (state.courses.take(state.visibleCount).length +
                          (state.status == CoursesStatus.loadingMore ? 2 : 0)),
                itemBuilder: (context, index) {
                  if (state.status == CoursesStatus.loading) {
                    return HomeCourseWidgetShimmer();
                  }
                  final visibleCourses = state.courses
                      .take(state.visibleCount)
                      .toList();
                  if (index < visibleCourses.length) {
                    final course = visibleCourses[index];
                    return HomeCourseWidget(course: course);
                  } else {
                    return HomeCourseWidgetShimmer();
                  }
                },
              ),
            ),
            if (state.visibleCount < state.courses.length)
              Center(
                child: AppIconTextButton(
                  text: "Ko'proq ko'rsatish",
                  icon: "arrow-blow.svg",
                  textColor: AppColors.primary,
                  containerColor: AppColors.primary.withValues(alpha: 0.1),
                  containerWidth: 335.w,
                  callback: () => context.read<CoursesBloc>().add(ShowMoreCourses()),
                ),
              ),
            AppAddedCommunity()
          ],
        ),
      ),
    );
  }
}
