import 'package:ayol_uchun/features/home/presentation/manager/home_bloc.dart';
import 'package:ayol_uchun/features/home/presentation/manager/home_state.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/course_widget.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/course_widget_shimmer.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/home_added_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w, top: 10.h),
          child: Text(
            "KO'RISHNI DAVOM ETISH",
            maxLines: 1,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 296.h,
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return (state.coursesStatus == FieldStatus.loading)
                  ? ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => CourseWidgetShimmer(),
                separatorBuilder: (context, index) => SizedBox(width: 20.w),
              )
                  : (state.courses.isEmpty)
                  ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: HomeAddedCourse(),
              )
                  : ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                scrollDirection: Axis.horizontal,
                itemCount: state.courses.length,
                itemBuilder: (context, index) =>
                    CourseWidget(course: state.courses[index]),
                separatorBuilder: (context, index) =>
                    SizedBox(width: 20.w),
              );
            },
          ),
        )

      ],
    );
  }
}
