import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/auth/presentation/widgets/auth_welcome_texts.dart';
import 'package:ayol_uchun/features/common/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

import '../../manager/sign_up/sign_up_bloc.dart';
import '../../manager/sign_up/sign_up_state.dart';
import '../../widgets/success_dialog.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});


  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showCustomToast(
        context,
        "Telefon raqamingizga tasdiqlash kodi yuborildi",
        Icons.task_alt_sharp,
      );
    });

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
        "O‘quv platformasiga kirish uchun quyida telefon raqamingizga yuborilgan tasdiqlash kodini kiriting",
          bottom: "Tasdiqlash kodi",
        ),
      ),
      BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) => Form(key: context.read<SignUpBloc>().formKeyCode, child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Pinput(
                  onCompleted: (value) {
                    context.read<SignUpBloc>().add(VerifyCode());
                    if (state.verifyCode == true) {
                      showDialog(
                        barrierDismissible: false,
                        useSafeArea: true,
                        context: context,
                        builder: (context) => SuccessDialog(),
                      );
                    }
                  },
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  keyboardType: TextInputType.number,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  length: 6,
                  showCursor: true,
                  separatorBuilder: (index) => SizedBox(width: 6),
                  validator: context
                      .read<SignUpBloc>()
                      .codeValidator,),
                SizedBox(height: 333.h),
                AppTextButton(
                  text: "Kirish",
                  containerColor: AppColors.primary,
                  callback: () async {
                    context.read<SignUpBloc>().add(VerifyCode());
                    if (state.verifyCode == true) {
                      showDialog(
                        barrierDismissible: false,
                        useSafeArea: true,
                        context: context,
                        builder: (context) => SuccessDialog(),
                      );
                    }
                  },
                  containerWidth: 335.w,
                ),
              ],
            ),
          ),)
  ],
      ),
    ),);
  }

}

final defaultPinTheme = PinTheme(
  width: 50.w,
  height: 49.h,
  textStyle: const TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  ),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(4),
    border: Border.all(color: Colors.transparent),
  ),
);

final focusedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration!.copyWith(
    border: Border.all(color: AppColors.primary, width: 1.5),
  ),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration!.copyWith(
    border: Border.all(color: Colors.green, width: 1.5),
  ),
);


void showCustomToast(BuildContext context, String message, IconData icon) {
  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) =>
        Positioned(
          top: 100,
          left: 20,
          right: 20,
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    message,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
  );

  overlay.insert(overlayEntry);
  Future.delayed(Duration(seconds: 2), () => overlayEntry.remove());
}