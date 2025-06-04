import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/app_text_button.dart';

class HomeAddedCourse extends StatelessWidget {
  const HomeAddedCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 335.w,
        height: 265.h,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x88888B8F).withValues(alpha: 0.08), // #8888B8F, 8%
              offset: Offset(0, 4),
              blurRadius: 16,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            SvgPicture.asset(
              "assets/icons/home_logo.svg",
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 245.w,
              child: Text(
                "Sizda hali boshlangan kurs mavjud emas. Ko‘plab foydali kurslarimiz orasidan bittasini tanlang.",
                softWrap: true,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  // height: 1,
                ),
              ),
            ),
            AppTextButton(
              text: "Kurs sotib olish",
              containerColor: AppColors.primary,
              containerWidth: 150.w,
              containerHeight: 34.h,
              callback: () {
                // Navigator.of(context).pop();
                // navigatorKey.currentContext!.go(Routes.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
