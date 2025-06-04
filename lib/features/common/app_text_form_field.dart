import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/utils/colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validator,
    this.isPassword = false,
    required this.prefix,
    this.showPasswordFunc,
    this.showPassword = false,
  });

  final String hintText;
  final String prefix;
  final TextEditingController controller;

  final bool isPassword;

  final String? Function(String?)? validator;

  final VoidCallback? showPasswordFunc;

  final bool? showPassword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50.h,
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUnfocus,
        obscureText: isPassword && showPassword != null ? !showPassword! : false,
        obscuringCharacter: "*",
        validator: validator,
        minLines: 1,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: hintText,
          errorStyle: TextStyle(
            color: AppColors.error,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: showPasswordFunc,
                  icon: Padding(
                    padding:  EdgeInsets.all(6.0),
                    child: SvgPicture.asset(
                      "assets/icons/eye.svg",
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : null,
          prefixIcon: Padding(
            padding:  EdgeInsets.symmetric(vertical: 15.h,horizontal: 15.w),
            child: SvgPicture.asset(
              "assets/icons/$prefix",
              width: 15,
              height: 15,
              fit: BoxFit.cover,
            ),
          ),
          hintStyle: TextStyle(
            color: Color(0xFFADB5BD),
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary, width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.error, width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.error, width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
