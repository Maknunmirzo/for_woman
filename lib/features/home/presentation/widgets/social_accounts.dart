import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/colors.dart';
import '../manager/home_bloc.dart';
import '../manager/home_state.dart';

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 335.w,
        height: 115.h,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 16,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 11.h,
          children: [
            // SizedBox(height: 5.h),
            Text(
              "Ijtimoiy tarmoqlarimiz:",
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 10.w,
              children: List.generate(
                5,
                (index) => BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) =>
                      (state.socialAccountsStatus == FieldStatus.idle)
                      ? IconButton(
                        iconSize: 3,
                        onPressed: () async {
                          final Uri url = Uri.parse(state.socialAccounts[index].link);
                          if (!await launchUrl(url)) {
                            Fluttertoast.showToast(
                              msg: " ❌ URL ochilmadi",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.redAccent,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          }
                        },
                          icon: SvgPicture.network(
                            state.socialAccounts[index].icon,
                            width: 32.w,
                            height: 32.h,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          period: Duration(seconds: 2),
                          child: Container(
                            height: 32.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void launchWebsite() async {

}