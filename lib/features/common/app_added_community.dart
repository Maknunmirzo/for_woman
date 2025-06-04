import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppAddedCommunity extends StatelessWidget {
  const AppAddedCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            "assets/images/woman.png",
            width: 343.w,
            height: 267.h,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 92.h,
            left: 44.w,
            child: AppTextButton(
              text: "Qo'shilish",
              textColor: AppColors.primary,
              containerColor: Colors.white,
              callback: () {},
              containerWidth: 100.w,
              containerHeight: 34.h,
            ),
          ),
        ],
      ),
    );
  }
}
