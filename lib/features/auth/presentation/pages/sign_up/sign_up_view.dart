import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/auth/presentation/manager/sign_up/sign_up_bloc.dart';
import 'package:ayol_uchun/features/auth/presentation/manager/sign_up/sign_up_state.dart';
import 'package:ayol_uchun/features/auth/presentation/widgets/auth_welcome_texts.dart';
import 'package:ayol_uchun/features/common/app_icon_text_button.dart';
import 'package:ayol_uchun/features/common/app_text_button.dart';
import 'package:ayol_uchun/features/common/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/auth_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          children: [
            Center(
              child: AuthWelcomeTexts(
                desc:
                    "O‘quv platformasiga kirish uchun quyida berilgan maydonlarni to‘ldirib ro‘yxatdan o‘ting",
                bottom: "Ro‘yxatdan o‘tish",
              ),
            ),
           BlocBuilder<SignUpBloc,SignUpState>(builder: (context, state) =>  Form(
             key: context.read<SignUpBloc>().formKeyPersonalInfo,
             child: Column(
               spacing: 8,
               children: [
                 AppTextFormField(
                   hintText: "Ism",
                   controller: context.read<SignUpBloc>().firstNameController,
                   validator: context.read<SignUpBloc>().firsNameValidator,
                   prefix: "user.svg",
                 ),
                 SizedBox(height: 8),
                 AppTextFormField(
                   hintText: "Familiya",
                   controller: context.read<SignUpBloc>().lastNameController,
                   validator: context.read<SignUpBloc>().lastNameValidator,
                   prefix: "user.svg",
                 ),
                 SizedBox(height: 8),
                 AppTextFormField(
                   hintText: "Elektron Pochta",
                   controller: context.read<SignUpBloc>().emailController,
                   validator: context.read<SignUpBloc>().emailValidator,
                   prefix: "email.svg",
                 ),
               ],
             ),
           ),),
            SizedBox(height: 45.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.end,
              spacing: 9,
              children: [
                Divider(height: 1, color: Colors.black.withValues(alpha: 0.1)),
                Text(
                  "Quyidagilar orqali kirish",
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                    color: Color(0xff8898AA),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIconTextButton(
                      text: "Google",
                      icon: "google.svg",
                      containerColor: Colors.white,
                    ),
                    AppIconTextButton(text: "Apple", icon: "apple.svg"),
                  ],
                ),
                SizedBox(height: 70.h),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Tizimga kirish orqali siz ",
                    style: TextStyle(
                      color: Color(0xff8898AA),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                      text: " foydalanish shartlari",
                      style: TextStyle(
                        color:AppColors.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                  ),
                      TextSpan(
                        text: " va ",
                        style: TextStyle(
                          color:Color(0xff8898AA),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "maxfiylik siyosatiga",
                        style: TextStyle(
                          color:AppColors.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: " roziligingizni tasdiqlaysiz",
                        style: TextStyle(
                          color:Color(0xff8898AA),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]
                  ),

                ),
                AppTextButton(
                  text: "Davom Etish",
                  containerColor: AppColors.primary,
                  callback: () =>context.read<SignUpBloc>().add(SignUpPersonalInfoEntered(),),
                  containerWidth: 335.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
