import 'package:ayol_uchun/data/models/course_model.dart';
import 'package:ayol_uchun/data/models/interview_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/colors.dart';




class InterviewWidget extends StatelessWidget {
  const InterviewWidget({super.key, required this.interview});

  final InterviewModel interview;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 228.w,
        height: 251.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 16,
                offset: Offset(0, 4),
              ),
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10.h,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(16)),
              child: CachedNetworkImage(
                imageUrl: interview.image,
                fit: BoxFit.cover,
                height: 140.h,
                width: 228.w,
                progressIndicatorBuilder: (context, url, progress) {
                  return Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                      color: Colors.black,
                    ),
                  );
                },
                errorWidget: (context, url, error) =>
                    Icon(Icons.error, color: Colors.red),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 3.w,
              children: [
                SvgPicture.asset(
                  "assets/icons/clock.svg",
                  fit: BoxFit.cover,
                  width: 18.w,
                  height: 18.h,
                ),
                Text(
                  "${interview.duration~/60} soat,${interview.duration%60} minut",
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 204.w,
              child: Text(
                interview.title,
                maxLines: 2,
                softWrap: true,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 3.w,
              children: [
                SvgPicture.asset(
                  "assets/icons/user-three.svg",
                  fit: BoxFit.cover,
                  width: 18.w,
                  height: 18.h,
                ),
                SizedBox(
                  width: 161.w,
                  child: Text(
                    interview.user,
                    maxLines: 1,
                    softWrap: true,
                    style: TextStyle(
                      color: Color(0Xff8898AA),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
