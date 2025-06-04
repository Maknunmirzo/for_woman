import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthWelcomeTexts extends StatelessWidget {
  const AuthWelcomeTexts({super.key, required this.desc, required this.bottom});

  final String desc, bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        top: 124.h,
        bottom: 60.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Xush Kelibsiz!",
            maxLines: 1,
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8,),
          Text(
            desc,
            maxLines: 3,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              height: 1
            ),
          ),
          SizedBox(height: 8,),
          Text(
            bottom,
            maxLines: 3,
            softWrap: true,
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w500,
                height: 1
            ),
          ),
        ],
      ),
    );
  }
}
