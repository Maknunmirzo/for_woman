import 'package:ayol_uchun/data/models/course_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/colors.dart';




class CourseWidget extends StatelessWidget {
  const CourseWidget({super.key, required this.course});

  final CourseModel course;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 3.h,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16),
            child: CachedNetworkImage(
              imageUrl: course.image,
              fit: BoxFit.cover,
              height: 174.h,
              width: 277.w,
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
                "assets/icons/star.svg",
                fit: BoxFit.cover,
                width: 18.w,
                height: 18.h,
              ),
              Text(
                "${course.rating}",
                maxLines: 1,
                softWrap: true,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 261.w,
            child: Text(
              course.title,
              maxLines: 2,
              softWrap: true,
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
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
                  course.user,
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
    );
  }
}
