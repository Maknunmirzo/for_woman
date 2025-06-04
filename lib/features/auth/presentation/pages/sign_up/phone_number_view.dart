import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/auth/presentation/widgets/auth_welcome_texts.dart';
import 'package:ayol_uchun/features/common/app_text_button.dart';
import 'package:ayol_uchun/features/common/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../manager/sign_up/sign_up_bloc.dart';
import '../../manager/sign_up/sign_up_state.dart';

class PhoneNumberView extends StatelessWidget {
  const PhoneNumberView({super.key});

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
                    "O‘quv platformasiga kirish uchun telefon raqamingizni kiriting",
                bottom: "Telefon raqami",
              ),
            ),
            BlocBuilder<SignUpBloc,SignUpState>(builder: (context, state) =>  Form(
              key: context.read<SignUpBloc>().formKeyPhoneNumber,
              child:  AppTextFormField(
                hintText: "+998",
                controller: context.read<SignUpBloc>().phoneNumberController,
                validator: context.read<SignUpBloc>().phoneNumberValidator,
                prefix: "phone.svg",
              ),
            ),),

            SizedBox(height: 8),
            SizedBox(height: 330.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8,
              children: [
                AppTextButton(
                  text: "Kirish",
                  containerColor: AppColors.primary,
                  callback: () {
                    context.read<SignUpBloc>().add(SignUpPhoneNumberEntered());
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




