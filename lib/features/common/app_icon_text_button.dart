import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIconTextButton extends StatelessWidget {
  const AppIconTextButton({
    super.key,
    required this.text,
     this.textColor = AppColors.defaultColor,
     this.containerColor= Colors.white,
     this.callback,
    required this.icon,
    this.containerWidth = 163,
    this.containerHeight = 44,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w600,
  });

  final String text, icon;
  final double fontSize;
  final double containerWidth, containerHeight;
  final FontWeight fontWeight;
  final Color textColor, containerColor;

  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(containerWidth, containerHeight),
        disabledBackgroundColor: containerColor,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Center(
        child: Row(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/icons/$icon",
                width: 18,
                height: 18,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
                height: 1,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
