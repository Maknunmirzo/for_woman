import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    required this.action,
    this.leadingIcon,
    required this.leadingTitle, required this.actionOnTap,
  });

  final String leadingTitle, action;
  final String? leadingIcon;

  final VoidCallback actionOnTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.only(
        bottom: 28.h,
        left: 20.w,
        top: 20.h,
        right: 20.w,
      ),
      child: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.primary,
        leadingWidth: 300.w,
        toolbarHeight: 85.h,
        leading: Row(
          spacing: 5,
          children: [
            Text(
              leadingTitle,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (leadingIcon != null)
              SvgPicture.asset(
                "assets/icons/$leadingIcon",
                fit: BoxFit.cover,
                width: 30.w,
                height: 30.h,
              ),
          ],
        ),
        actions: [
        IconButton(onPressed: actionOnTap, icon:   SvgPicture.asset(
          "assets/icons/$action",
          fit: BoxFit.cover,
          width: 30.w,
          height: 30.h,
        ),)],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 85.h);
}
