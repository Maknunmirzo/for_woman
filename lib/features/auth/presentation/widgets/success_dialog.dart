import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../common/app_text_button.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        child: Container(
          width: 335.w,
          height: 265.h,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              SvgPicture.asset(
                "assets/icons/tick_dialog.svg",
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
              Text(
                "Muvaffaqiyatli tasdiqlandi",
                softWrap: true,
                maxLines: 1,
                style: TextStyle(
                  color: Color(0xff595959),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Telefon raqamingiz muvaffaqiyatli tasdiqlandi",
                // maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff8898AA),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              ),
              AppTextButton(
                text: "Tushunarlik",
                containerColor: Color(0xff4FD69C),
                containerWidth: 295.w,
                callback: () {
                  Navigator.of(context).pop();
                  navigatorKey.currentContext!.go(Routes.passwords);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
