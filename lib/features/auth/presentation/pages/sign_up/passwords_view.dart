import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/auth/presentation/widgets/auth_welcome_texts.dart';
import 'package:ayol_uchun/features/common/app_text_button.dart';
import 'package:ayol_uchun/features/common/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../manager/sign_up/sign_up_bloc.dart';
import '../../manager/sign_up/sign_up_state.dart';

class PasswordsView extends StatelessWidget {
  const PasswordsView({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          children: [
            Center(
              child: AuthWelcomeTexts(
                desc:
                    "O‘quv platformasiga kirish uchun quyida berilgan maydonlarni to‘ldirib ro‘yxatdan o‘ting",
                bottom: "Ro‘yxatdan o‘tish",
              ),
            ),
            BlocBuilder<SignUpBloc, SignUpState>(
              builder: (context, state) => Form(
                key: context.read<SignUpBloc>().formKeyPassword,
                child: Column(
                  spacing: 8,
                  children: [
                    AppTextFormField(
                      hintText: "Parol",
                      controller: context.read<SignUpBloc>().passwordController,
                      validator: context.read<SignUpBloc>().passwordValidator,
                      prefix: "lock.svg",
                      isPassword: true,
                      showPasswordFunc: () =>
                          context.read<SignUpBloc>().add(ShowPassword()),
                      showPassword: state.showPassword,
                    ),
                    SizedBox(height: 8),
                    AppTextFormField(
                      hintText: "Parolni tasdiqlash",
                      controller: context
                          .read<SignUpBloc>()
                          .cPasswordController,
                      validator: context.read<SignUpBloc>().cPasswordValidator,
                      prefix: "lock.svg",
                      isPassword: true,
                      showPassword: state.cShowPassword,
                      showPasswordFunc: () =>
                          context.read<SignUpBloc>().add(CShowPassword()),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 286.h),
            AppTextButton(
              text: "Kirish",
              containerColor: AppColors.primary,
              callback: () => context.read<SignUpBloc>().add(CreateUser()),
              containerWidth: 335.w,
            ),
          ],
        ),
      ),
    );
  }
}
