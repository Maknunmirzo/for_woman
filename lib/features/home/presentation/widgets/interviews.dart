import 'package:ayol_uchun/features/home/presentation/manager/home_bloc.dart';
import 'package:ayol_uchun/features/home/presentation/manager/home_state.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/course_widget_shimmer.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/interview_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';
import 'interview_widget.dart';

class Interviews extends StatelessWidget {
  const Interviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w, top: 10.h),
          child: Text(
            "INTERVYULAR",
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
              return ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, index) => SizedBox(width: 20.w),
                itemBuilder: (context, index) =>
                    (state.interviewsStatus == FieldStatus.idle)
                    ? InterviewWidget(interview: state.interviews[index])
                    : InterviewShimmer(),

              );
            },
          ),
        ),
      ],
    );
  }
}
