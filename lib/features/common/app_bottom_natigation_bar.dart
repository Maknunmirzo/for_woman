import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key, required this.selectedIndex});

  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          color: Colors.white,
          height: 90.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BottomItem(
                title: "Asosiy",
                icon: "home.svg",
                isSelected: selectedIndex == 1,
                onPressed: Routes.home,),
              BottomItem(
                title: "Kurslar",
                icon: "courses.svg",
                isSelected: selectedIndex == 2,
                onPressed: Routes.courses,),
              BottomItem(
                title: "Blog",
                icon: "blog.svg",
                isSelected: selectedIndex == 3,
                onPressed: Routes.home,),
              BottomItem(
                title: "Kabinet",
                icon: "user-two.svg",
                isSelected: selectedIndex == 4,
                onPressed: Routes.home,),
            ],
          ),
        ),
      ],
    );
  }
}

class BottomItem extends StatelessWidget {
  const BottomItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onPressed,
  });

  final String title, icon, onPressed;

  final bool isSelected;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 5.h,
      children: [
        IconButton(
          onPressed: () => context.go(onPressed),
          icon: SvgPicture.asset(
            "assets/icons/$icon",
            width: 24,
            height: 24,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                isSelected ? AppColors.primary : Color(0xff8898AA),
                BlendMode.srcIn),
          ),
        ),
        Text(
          title,
          maxLines: 1,
          softWrap: true,
          style: TextStyle(
            color: isSelected ? Colors.black : Color(0xff8898AA),
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
