import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/app_text_button.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/categories_shimmer.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../manager/home_bloc.dart';
import '../manager/home_state.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 397.h,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffFBF2F4),
        // color: Colors.lightGreenAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20.h,
        children: [
          Text(
            "Kategoriyalar",
            maxLines: 1,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) => GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.h,
                childAspectRatio: 160.w / 50.h,
              ),
              itemBuilder: (context, index) =>
                  (state.categoryStatus == FieldStatus.idle)
                  ? CategoryWidget(category: state.categories[index])
                  : CategoryShimmer(),
            ),
          ),
          AppTextButton(
            text: "Barcha Kategoriyalar →",
            containerWidth: 335.w,
            textColor: AppColors.black,
            fontWeight: FontWeight.w700,
            containerColor: AppColors.primary.withValues(alpha: 0.1),
            callback: () {},
          ),
        ],
      ),
    );
  }
}
