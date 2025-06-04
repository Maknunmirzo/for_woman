import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/auth/presentation/manager/login/login_bloc.dart';
import 'package:ayol_uchun/features/auth/presentation/manager/login/login_state.dart';
import 'package:ayol_uchun/features/auth/presentation/widgets/auth_welcome_texts.dart';
import 'package:ayol_uchun/features/common/app_icon_text_button.dart';
import 'package:ayol_uchun/features/common/app_text_button.dart';
import 'package:ayol_uchun/features/common/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                    "O‘quv platformasiga kirish uchun quyida elektron  pochtangiz va parolingizni kiriting",
                bottom: "Kirish",
              ),
            ),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) => Form(
                key: context.read<LoginBloc>().formKey,
                child: Column(
                  children: [
                    AppTextFormField(
                      hintText: "+998",
                      controller: context
                          .read<LoginBloc>()
                          .phoneNumberController,
                      validator: context.read<LoginBloc>().phoneNumberValidator,
                      prefix: "phone.svg",
                    ),
                    SizedBox(height: 8),
                    AppTextFormField(
                      hintText: "Parol",
                      controller: context.read<LoginBloc>().passwordController,
                      validator: context.read<LoginBloc>().passwordValidator,
                      prefix: "lock.svg",
                      isPassword: true,
                      showPassword: state.showPassword,
                      showPasswordFunc: () => context.read<LoginBloc>().add(
                        ShowPassword(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 126.w,
                height: 23.h,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Parolni Unutdizmi",
                    maxLines: 1,
                    softWrap: true,
                    style: TextStyle(
                      color: Color(0xffCED4DA),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 0.9,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 159.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.end,
              spacing: 8,
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
                SizedBox(height: 24.h),
                AppTextButton(
                  text: "Kirish",
                  containerColor: AppColors.primary,
                  callback:  () => context.read<LoginBloc>().add(OnLoginEvent()),
                  containerWidth: 335.w,
                ),
                AppTextButton(
                  text: "Ro'yhatdan o'tish",
                  containerColor: Color(0xff3F5170),
                  callback: () {
                    context.go(Routes.signUp);
                  },
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
